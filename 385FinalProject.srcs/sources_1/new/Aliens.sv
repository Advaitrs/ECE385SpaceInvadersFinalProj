module Aliens(
    input logic clk, reset,
    input logic [GRID_WIDTH*GRID_HEIGHT-1:0] square_states, // States of squares (hit or not)
    output logic [9:0] alien_x_positions[GRID_WIDTH*GRID_HEIGHT], // X positions of aliens
    output logic [9:0] alien_y_positions[GRID_WIDTH*GRID_HEIGHT], // Y positions of aliens
    output reg fire_bullet, // Signal to fire the alien bullet
    output reg [9:0] fire_x, fire_y // Firing position
);

    parameter GRID_WIDTH = 10;
    parameter GRID_HEIGHT = 5;
    parameter ALIEN_STEP = 1;  // Movement step size
    parameter LEFT_BOUND = 25;
    parameter RIGHT_BOUND = 625;
    parameter SQUARE_SIZE = 40; // Size of each square
    parameter SPACING = 10;     // Spacing between squares
    parameter TOP_LEFT_Y = 50;  // Y coordinate of top-left corner of grid
    int random_index;
    logic move_right;  // Direction of movement
    reg [15:0] lfsr;   // 16-bit LFSR for pseudo-random number generation

    // LFSR feedback polynomial (example: x^16 + x^14 + x^13 + x^11 + 1)
    wire feedback = lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10];

    // Initialize positions and movement direction
    initial begin
        move_right = 1;
        lfsr = 16'hACE1;  // Non-zero seed
        for (int i = 0; i < GRID_WIDTH*GRID_HEIGHT; i++) begin
            alien_x_positions[i] = LEFT_BOUND + (i % GRID_WIDTH) * (SQUARE_SIZE + SPACING);
            alien_y_positions[i] = TOP_LEFT_Y + (i / GRID_WIDTH) * (SQUARE_SIZE + SPACING);
        end
    end

    // Update positions, LFSR, and fire bullet
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            move_right <= 1;
            lfsr <= 16'hACE1;  // Reset LFSR to the seed
            fire_bullet <= 0;
            for (int i = 0; i < GRID_WIDTH*GRID_HEIGHT; i++) begin
                alien_x_positions[i] <= LEFT_BOUND + (i % GRID_WIDTH) * (SQUARE_SIZE + SPACING);
                alien_y_positions[i] <= TOP_LEFT_Y + (i / GRID_WIDTH) * (SQUARE_SIZE + SPACING);
            end
        end else begin
            // Movement logic
            if ((move_right && alien_x_positions[GRID_WIDTH - 1] + ALIEN_STEP + SQUARE_SIZE > RIGHT_BOUND) ||
                (!move_right && alien_x_positions[0] - ALIEN_STEP < LEFT_BOUND)) begin
                move_right <= !move_right;
            end

            // Update each alien's position
            for (int i = 0; i < GRID_WIDTH*GRID_HEIGHT; i++) begin
                alien_x_positions[i] <= move_right ? alien_x_positions[i] + ALIEN_STEP : alien_x_positions[i] - ALIEN_STEP;
                // Y positions remain constant
            end

            // Update LFSR
            lfsr <= {lfsr[14:0], feedback};

            // Firing logic
            // Pseudo-randomly select an alien to fire a bullet
            
            random_index = lfsr[3:0] % (GRID_WIDTH * GRID_HEIGHT);
            if (!square_states[random_index]) begin // Check if the alien is alive
                fire_bullet <= 1;
                fire_x <= alien_x_positions[random_index];
                fire_y <= alien_y_positions[random_index] + SQUARE_SIZE; // Fire from bottom of alien
            end else begin
                fire_bullet <= 0;
            end
        end
    end

endmodule
