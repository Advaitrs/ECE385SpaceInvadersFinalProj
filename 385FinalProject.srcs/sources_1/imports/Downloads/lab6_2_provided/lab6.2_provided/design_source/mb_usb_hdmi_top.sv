`timescale 1ns / 1ps
module mb_usb_hdmi_top(
    input logic Clk,
    input logic reset_rtl_0,
    
    //USB signals
    input logic [0:0] gpio_usb_int_tri_i,
    output logic gpio_usb_rst_tri_o,
    input logic usb_spi_miso,
    output logic usb_spi_mosi,
    output logic usb_spi_sclk,
    output logic usb_spi_ss,
    
    //UART
    input logic uart_rtl_0_rxd,
    output logic uart_rtl_0_txd,
    
    //HDMI
    output logic hdmi_tmds_clk_n,
    output logic hdmi_tmds_clk_p,
    output logic [2:0]hdmi_tmds_data_n,
    output logic [2:0]hdmi_tmds_data_p,
        
    //HEX displays
    output logic [7:0] hex_segA,
    output logic [3:0] hex_gridA,
    output logic [7:0] hex_segB,
    output logic [3:0] hex_gridB,
    
     //sound logic
    output logic speaker0,
    output logic speaker1
    );
    
    logic [31:0] keycode0_gpio, keycode1_gpio;
    logic clk_25MHz, clk_125MHz, clk, clk_100MHz;
    logic locked;
    logic hsync, vsync, vde;
    logic [9:0] drawX, drawY, ballxsig, ballysig, ballsizesig;
   
    
    
    //spaceship/ball.sv logic:
    logic player_hit;
    
    //bullet logic:  
    logic [9:0] bulletX, bulletY;
    logic bulletActive;
    
    //collision logic:
    parameter GRID_WIDTH = 10;  // Number of columns
    parameter GRID_HEIGHT = 5;  // Number of rows

    logic [GRID_WIDTH*GRID_HEIGHT-1:0] square_states;
    logic collision_detected;
    
    
    // Aliens logic:
    logic [9:0] alien_x_positions[GRID_WIDTH*GRID_HEIGHT];
    logic [9:0] alien_y_positions[GRID_WIDTH*GRID_HEIGHT];
    logic fire_bullet;
    logic [9:0] fire_x, fire_y;
    
    //Aliens_bullet logic:
    logic [9:0] alien_bulletX, alien_bulletY;
    logic alien_bulletActive;
    
    //colors logic
    logic [3:0] red, green, blue;
    logic reset_ah;
    assign reset_ah = reset_rtl_0;
    
        //sound module
     sound sound_instance(
        .clk(clk_25MHz),
        .playerh(player_hit),
        .bul(bulletActive),
        .speakerR(speaker0),
        .speakerL(speaker1)
    );
    
    
    //Keycode HEX drivers
    HexDriver HexA (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[31:28], keycode0_gpio[27:24], keycode0_gpio[23:20], keycode0_gpio[19:16]}),
        .hex_seg(hex_segA),
        .hex_grid(hex_gridA)
    );
    
    HexDriver HexB (
        .clk(Clk),
        .reset(reset_ah),
        .in({keycode0_gpio[15:12], keycode0_gpio[11:8], keycode0_gpio[7:4], keycode0_gpio[3:0]}),
        .hex_seg(hex_segB),
        .hex_grid(hex_gridB)
    );
    
    mb_block mb_block_i(
        .clk_100MHz(Clk),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_keycode_0_tri_o(keycode0_gpio),
        .gpio_usb_keycode_1_tri_o(keycode1_gpio),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .reset_rtl_0(~reset_ah), //Block designs expect active low reset, all other modules are active high
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss)
    );
        
    //clock wizard configured with a 1x and 5x clock for HDMI
    clk_wiz_0 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(reset_ah),
        .locked(locked),
        .clk_in1(Clk)
    );
    
    //VGA Sync signal generator
    vga_controller vga (
        .pixel_clk(clk_25MHz),
        .reset(reset_ah),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
    );    

    //Real Digital VGA to HDMI converter
    hdmi_tx_0 vga_to_hdmi (
        //Clocking and Reset
        .pix_clk(clk_25MHz),
        .pix_clkx5(clk_125MHz),
        .pix_clk_locked(locked),
        //Reset is active LOW
        .rst(reset_ah),
        //Color and Sync Signals
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        //aux Data (unused)
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        //Differential outputs
        .TMDS_CLK_P(hdmi_tmds_clk_p),          
        .TMDS_CLK_N(hdmi_tmds_clk_n),          
        .TMDS_DATA_P(hdmi_tmds_data_p),         
        .TMDS_DATA_N(hdmi_tmds_data_n)          
    );
        

    

    // Player collision module
    player_collision player_collision_instance (
        .clk(vsync), //clk_25MHz
        .reset(reset_ah),
        .playerX(ballxsig), 
        .playerY(ballysig),
        .alien_bulletX(alien_bulletX),
        .alien_bulletY(alien_bulletY), 
        .alien_bulletActive(alien_bulletActive),
        .player_hit(player_hit) // Output connected to player_hit signal
    );

    // Instantiate the ball module (player's spaceship)
    ball ball_instance (
        .Reset(reset_ah),
        .frame_clk(vsync),
        .keycode(keycode0_gpio[7:0]),
        .player_hit(player_hit), // this signal from player_collision module
        .BallX(ballxsig),
        .BallY(ballysig),
        .BallS(ballsizesig)
    );
    
    bullet bullet_instance (
        .Reset(reset_ah),
        .frame_clk(vsync),
        .keycode(keycode0_gpio[7:0]),
        .collision_detected(collision_detected),
        .player_hit(player_hit),
        .StartX(ballxsig),
        .StartY(ballysig),
        .BulletX(bulletX),
        .BulletY(bulletY),
        .Active(bulletActive)
    );

    //collision module
    collision collision_instance (
        .clk(vsync),
        .reset(reset_ah),
        .BulletX(bulletX),
        .BulletY(bulletY),
        .BulletActive(bulletActive),
        .alien_x_positions(alien_x_positions),
        .alien_y_positions(alien_y_positions),
        .collision_detected(collision_detected),
        .square_states(square_states)
    );
    
    //aliens module  
    Aliens aliens_instance (
        .clk(vsync),
        .reset(reset_ah),
        .square_states(square_states),
        .alien_x_positions(alien_x_positions),
        .alien_y_positions(alien_y_positions),
        .fire_bullet(fire_bullet),
        .fire_x(fire_x),
        .fire_y(fire_y)
    );
    
    //alien_bullet module
    alien_bullet alien_bullet_instance(
        .clk(vsync), //clk_25MHz
        .reset(reset_ah),
        .fire(fire_bullet),            // Firing signal from Aliens module
        .startX(fire_x),               // Start position X from Aliens module
        .startY(fire_y),               // Start position Y from Aliens module
        .bulletX(alien_bulletX),       // Alien bullet X position
        .bulletY(alien_bulletY),       // Alien bullet Y position
        .active(alien_bulletActive)    // Alien bullet active status
    );
    
    //Color Mapper Module   
    color_mapper color_instance(
        .BallX(ballxsig),
        .BallY(ballysig),
        .DrawX(drawX),
        .DrawY(drawY),
        .Ball_size(ballsizesig),
        .BulletX(bulletX),             // Player bullet position
        .BulletY(bulletY),             // Player bullet position
        .BulletActive(bulletActive),   // Player bullet active flag
        .alien_bulletX(alien_bulletX), // Alien bullet position
        .alien_bulletY(alien_bulletY), // Alien bullet position
        .alien_bulletActive(alien_bulletActive), // Alien bullet active flag
        .player_hit(player_hit),       // Player hit status
        .alien_x_positions(alien_x_positions),   // X positions of aliens
        .alien_y_positions(alien_y_positions),   // Y positions of aliens
        .square_states(square_states), // States of squares
        .vde(vde),
        .clk_25MHz(clk_25MHz),
        .Red(red),
        .Green(green),
        .Blue(blue)
    );
    
   
     
endmodule
