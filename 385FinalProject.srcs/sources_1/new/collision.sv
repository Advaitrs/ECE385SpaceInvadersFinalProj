module collision(
    input logic clk, reset,
    input logic [9:0] BulletX, BulletY,
    input logic BulletActive,
    input logic [9:0] alien_x_positions[GRID_WIDTH*GRID_HEIGHT], // X positions of aliens
    input logic [9:0] alien_y_positions[GRID_WIDTH*GRID_HEIGHT], // Y positions of aliens
    output logic collision_detected, // Signal to indicate a collision
    output logic [GRID_WIDTH*GRID_HEIGHT-1:0] square_states
);

    parameter GRID_WIDTH = 10;
    parameter GRID_HEIGHT = 5;
    integer col, row;
    logic hit_detected; // Flag to indicate if a hit has been detected

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            square_states <= 0;
            hit_detected <= 0;
            collision_detected <= 0;
        end else if (!BulletActive) begin
            hit_detected <= 0;
            collision_detected <= 0; // Reset when the bullet is not active
        end else if (BulletActive && !hit_detected) begin
            for (col = 0; col < GRID_WIDTH; col++) begin
                for (row = 0; row < GRID_HEIGHT; row++) begin
                    // Check collision based on dynamic alien positions
                    if (!square_states[col + row * GRID_WIDTH] &&
                        BulletX >= alien_x_positions[col + row * GRID_WIDTH] &&
                        BulletX < alien_x_positions[col + row * GRID_WIDTH] + 40 && // 40 is SQUARE_SIZE
                        BulletY >= alien_y_positions[col + row * GRID_WIDTH] &&
                        BulletY < alien_y_positions[col + row * GRID_WIDTH] + 40) begin
                        square_states[col + row * GRID_WIDTH] <= 1'b1;
                        hit_detected <= 1'b1;
                        collision_detected <= 1'b1;
                        break;
                    end
                end
                if (hit_detected) begin
                    break;
                end
            end
        end
    end
endmodule
