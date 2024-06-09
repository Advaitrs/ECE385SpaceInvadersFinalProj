module player_collision(
    input logic clk, reset,
    input logic [9:0] playerX, playerY, // Player's spaceship position
    input logic [9:0] alien_bulletX, alien_bulletY, // Alien bullet position
    input logic alien_bulletActive, // Status of the alien bullet
    output reg player_hit // Indicates if the player has been hit
);

    parameter PLAYER_SIZE_HALF = 20;
    parameter PLAYER_SIZE = 40;
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            player_hit <= 0;
        end else if (alien_bulletActive && !player_hit) begin
            // Check if the alien bullet has hit the player
            if (alien_bulletX >= playerX - PLAYER_SIZE_HALF && alien_bulletX <= playerX + PLAYER_SIZE_HALF &&
                alien_bulletY >= playerY && alien_bulletY <= playerY + PLAYER_SIZE) begin
                player_hit <= 1; // Player has been hit
                end 
            end
    end

endmodule
