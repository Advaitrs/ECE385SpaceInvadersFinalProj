module alien_bullet(
    input logic clk, reset,
    input logic fire,  // Signal to fire the bullet
    input logic [9:0] startX, startY,  // Starting position of the bullet
    output reg [9:0] bulletX, bulletY,  // Bullet position
    output reg active  // Indicates if the bullet is active
);

    parameter [9:0] BULLET_SPEED = 3;  // Speed of the bullet
    parameter [9:0] SCREEN_BOTTOM = 480;  // Bottom boundary of the screen

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            bulletX <= 0;
            bulletY <= 0;
            active <= 0;
        end 
        else if (fire && !active) begin
            bulletX <= startX;
            bulletY <= startY;
            active <= 1;
        end 
        else if (active) begin
            if (bulletY + BULLET_SPEED < SCREEN_BOTTOM) begin
                bulletY <= bulletY + BULLET_SPEED;
            end 
            else begin
                active <= 0;  // Deactivate the bullet
            end
        end
    end
endmodule
