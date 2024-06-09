module bullet_example (
	input logic vga_clk,
	input logic [9:0] DrawX, DrawY,
	input logic blank,
	input logic [9:0] bullet_x, bullet_y,
	output logic [3:0] red, green, blue
);

logic [9:0] rom_address;
logic [1:0] rom_q;

logic [3:0] palette_red, palette_green, palette_blue;

logic negedge_vga_clk;

// read from ROM on negedge, set pixel on posedge
assign negedge_vga_clk = ~vga_clk;

// address into the rom = (x*xDim)/640 + ((y*yDim)/480) * xDim
// this will stretch out the sprite across the entire screen
//assign rom_address = ((DrawX * 20) / 640) + (((DrawY * 40) / 480) * 20);
localparam SPRITE_WIDTH = 20;
localparam SPRITE_HEIGHT = 40; // Height of the spaceship sprite
logic [9:0] spaceship_x, spaceship_y; // Position of the spaceship

// Calculate relative position within the sprite
logic [9:0] relative_x, relative_y;
assign relative_x = DrawX - bullet_x;
assign relative_y = DrawY - bullet_y;
assign rom_address = (relative_x) + (relative_y ) * SPRITE_WIDTH;

always_ff @ (posedge vga_clk) begin
	red <= 4'h0;
	green <= 4'h0;
	blue <= 4'h0;

	if (blank) begin
		red <= palette_red;
		green <= palette_green;
		blue <= palette_blue;
	end
end

bullet_rom bullet_rom (
	.clka   (negedge_vga_clk),
	.addra (rom_address),
	.douta       (rom_q)
);

bullet_palette bullet_palette (
	.index (rom_q),
	.red   (palette_red),
	.green (palette_green),
	.blue  (palette_blue)
);

endmodule
