module color_mapper (
    input logic [9:0] BallX, BallY, DrawX, DrawY, Ball_size,
    input logic [9:0] BulletX, BulletY, // Player bullet position
    input logic BulletActive,           // Player bullet active flag
    input logic [9:0] alien_bulletX, alien_bulletY, // Alien bullet position
    input logic alien_bulletActive,     // Alien bullet active flag
    input logic player_hit,             // Indicates if the player has been hit
    input logic [9:0] alien_x_positions[GRID_WIDTH*GRID_HEIGHT], // X positions of aliens
    input logic [9:0] alien_y_positions[GRID_WIDTH*GRID_HEIGHT], // Y positions of aliens
    input logic [GRID_WIDTH*GRID_HEIGHT-1:0] square_states, // States of squares (hit or not)
    input logic clk_25MHz,
    input logic vde,
    output logic [3:0] Red, Green, Blue
    
);

    logic [3:0] spaceship_red, spaceship_green, spaceship_blue;
    logic [3:0] spaceship_dead_red, spaceship_dead_green, spaceship_dead_blue;
    logic [3:0] finished_red, finished_green, finished_blue;
    logic [3:0] bullet_red, bullet_green, bullet_blue;
    logic [3:0] alien_bullet_red, alien_bullet_green, alien_bullet_blue;
    logic [3:0] alien_red, alien_green, alien_blue;

    

    
    parameter SQUARE_SIZE = 40; // Size of each square
    parameter GRID_WIDTH = 10;  // Number of columns
    parameter GRID_HEIGHT = 5;  // Number of rows
    parameter SPACING = 10;     // Spacing between squares
    parameter BULLET_WIDTH = 20;
    parameter BULLET_HEIGHT = 40;

    
    logic ball_on;
    logic in_alien;
    int col, row;
    
    int DistX, DistY, Size;
    assign DistX = DrawX - BallX;
    assign DistY = DrawY - BallY;
    assign Size = Ball_size;
   
    
    spaceship_example drawShip(
    .vga_clk(clk_25MHz),
    .DrawX(DrawX),
    .DrawY(DrawY),
    .blank(vde),
    .spaceship_x(BallX - Ball_size), 
    .spaceship_y(BallY - Ball_size), 
    .red(spaceship_red),
    .green(spaceship_green),
    .blue(spaceship_blue) 
    );
    
    
    spaceship_dead_example drawShipDead(
    .vga_clk(clk_25MHz),
    .DrawX(DrawX),
    .DrawY(DrawY),
    .blank(vde),
    .spaceship_x(BallX - Ball_size), 
    .spaceship_y(BallY - Ball_size), 
    .red(spaceship_dead_red),
    .green(spaceship_dead_green),
    .blue(spaceship_dead_blue) 
    );

    
     finished_example finalScreen(
    .vga_clk(clk_25MHz),
    .DrawX(DrawX),
    .DrawY(DrawY),
    .blank(vde),
    .red(finished_red),
    .green(finished_green),
    .blue(finished_blue) 
    );
    

    int bullet_left_x, bullet_top_y;
    assign bullet_left_x = BulletX - (BULLET_WIDTH / 2);
    assign bullet_top_y = BulletY - (BULLET_HEIGHT / 2);
    
    int alien_bullet_left_x, alien_bullet_top_y;
    assign alien_bullet_left_x = alien_bulletX - (BULLET_WIDTH / 2);
    assign alien_bullet_top_y = alien_bulletY - (BULLET_HEIGHT / 2);
    
    bullet_example drawBullet(
    .vga_clk(clk_25MHz),
    .DrawX(DrawX),
    .DrawY(DrawY),
    .blank(vde),
    .bullet_x(bullet_left_x), 
    .bullet_y(bullet_top_y), 
    .red(bullet_red),
    .green(bullet_green),
    .blue(bullet_blue) 
    );
    
    alien_bullet_example drawAlienBullet(
    .vga_clk(clk_25MHz),
    .DrawX(DrawX),
    .DrawY(DrawY),
    .blank(vde),
    .bullet_x(alien_bullet_left_x), 
    .bullet_y(alien_bullet_top_y), 
    .red(alien_bullet_red),
    .green(alien_bullet_green),
    .blue(alien_bullet_blue) 
    );
    
   

     space_invaders_alien_example drawAlien(
    .vga_clk(clk_25MHz),
    .DrawX(DrawX),
    .DrawY(DrawY),
    .blank(vde),
    .spaceship_x(alien_x_positions[GRID_WIDTH*GRID_HEIGHT]), 
    .spaceship_y(alien_y_positions[GRID_WIDTH*GRID_HEIGHT]), 
    .red(alien_red),
    .green(alien_green),
    .blue(alien_blue) 
    );
    
    always_comb begin: RGB_Display
    if (player_hit) begin
        Red = finished_red;//4'hf; // Default color (change as needed)
        Green = finished_green; //4'hf;
        Blue = finished_blue;//4'hf; 
    end else begin
        Red = 4'h0;
        Green = 4'h0;
        Blue = 4'h0;
    end   
        if ((DrawX >= BallX - Ball_size) && (DrawX <= BallX + Ball_size) &&
            (DrawY >= BallY - Ball_size) && (DrawY <= BallY + Ball_size)) begin
            if (player_hit) begin
                Red = spaceship_dead_red; // Red if hit
                Green = spaceship_dead_green;
                Blue = spaceship_dead_blue;
            end else begin
                Red = spaceship_red;//4'hf; // Default color (change as needed)
                Green = spaceship_green; //4'hf;
                Blue = spaceship_blue;//4'hf;
            end
        end
        // Player bullet
        if (!player_hit && BulletActive 
            &&(DrawX >= bullet_left_x && DrawX < bullet_left_x + BULLET_WIDTH &&
            DrawY >= bullet_top_y && DrawY < bullet_top_y + BULLET_HEIGHT)) begin
            Red = bullet_red;
            Green = bullet_green;
            Blue = bullet_blue;
        end
        // Alien bullet
        else if (!player_hit && alien_bulletActive 
                &&(DrawX >= alien_bullet_left_x && DrawX < alien_bullet_left_x + BULLET_WIDTH &&
                DrawY >= alien_bullet_top_y && DrawY < alien_bullet_top_y + BULLET_HEIGHT)) begin
            Red = alien_bullet_red;
            Green = alien_bullet_green;
            Blue = alien_bullet_blue;
        end
        // Aliens
        else begin
        if (!player_hit) begin
            in_alien = 1'b0;
            for (col = 0; col < GRID_WIDTH; col++) begin
                for (row = 0; row < GRID_HEIGHT; row++) begin
                    if ((DrawX >= alien_x_positions[col + row * GRID_WIDTH]) && 
                        (DrawX < alien_x_positions[col + row * GRID_WIDTH] + SQUARE_SIZE) &&
                        (DrawY >= alien_y_positions[col + row * GRID_WIDTH]) && 
                        (DrawY < alien_y_positions[col + row * GRID_WIDTH] + SQUARE_SIZE)) begin
                        in_alien = 1'b1;
                        if (square_states[col + row * GRID_WIDTH]) begin
                            // Square has been hit - turn black
                            Red = 4'h0;
                            Green = 4'h0;
                            Blue = 4'h0;
                        end else begin
                            // Default alien square color
                            Red = alien_red;//4'h2; 
                            Green = alien_green;//4'h2;
                            Blue = alien_blue;//4'h1;
                        end
                        break;
                    end
                end
                if (in_alien) break;
            end
           end
        end
    end
endmodule


