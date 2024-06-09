module bullet(
    input logic Reset, frame_clk,
    input logic [7:0] keycode, // Input keycode
    input logic collision_detected, // Input to receive collision signal
    input logic player_hit,
    input logic [9:0] StartX, StartY, // Starting position from the ball
    output logic [9:0] BulletX, BulletY,
    output logic Active // Indicates whether the bullet is active
);

    parameter [9:0] Bullet_Speed = 3;
    parameter [9:0] Screen_Top = 0; // Define screen boundary
    logic [9:0] CurrentX, CurrentY;
    logic bullet_active;

    always_ff @(posedge frame_clk or posedge Reset) begin
        if (Reset) begin
            bullet_active <= 0;
            CurrentX <= 0;
            CurrentY <= 0;
        end else if (collision_detected) begin
            // Deactivate bullet on collision
            bullet_active <= 0;
        end else if (keycode == 8'h2C && !bullet_active && !player_hit) begin
            // Fire the bullet when space bar is pressed and bullet is not already active
            bullet_active <= 1;
            CurrentX <= StartX;
            CurrentY <= StartY;
        end else if (bullet_active) begin
            if (CurrentY > Screen_Top) begin
                CurrentY <= CurrentY - Bullet_Speed;
            end else begin
                bullet_active <= 0;
            end
        end
    end

    assign BulletX = CurrentX;
    assign BulletY = CurrentY;
    assign Active = bullet_active;
endmodule
