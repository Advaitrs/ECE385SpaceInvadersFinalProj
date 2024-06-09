module ball (
    input logic Reset, frame_clk,
    input logic [7:0] keycode,
    input logic player_hit, // New input indicating if the player has been hit
    output logic [9:0] BallX, BallY, BallS
);

    parameter [9:0] Ball_X_Center = 320; // Center position on the X axis
    parameter [9:0] Ball_X_Min = 100;    // Leftmost point on the X axis
    parameter [9:0] Ball_X_Max = 600;    // Rightmost point on the X axis
    parameter [9:0] Ball_X_Step = 3;     // Step size on the X axis

    assign BallS = 20; // Set the size of the ball (spaceship)
    assign BallY = 450; // Keep Y coordinate constant

    logic [9:0] Ball_X_Motion;

    always_ff @(posedge frame_clk or posedge Reset) begin
        if (Reset) begin
            BallX <= Ball_X_Center; // Reset to center position on X axis
            Ball_X_Motion <= 0;
        end else if (!player_hit) begin // Disable movement if player is hit
            if (keycode == 8'h4) begin // Move left (A key)
                Ball_X_Motion <= -Ball_X_Step;
            end else if (keycode == 8'h7) begin // Move right (D key)
                Ball_X_Motion <= Ball_X_Step;
            end else begin
                Ball_X_Motion <= 0; // Stop moving if no key is pressed
            end

            // Update the X coordinate of the ball
            if ((BallX + Ball_X_Motion) >= Ball_X_Min && (BallX + Ball_X_Motion) <= Ball_X_Max) begin
                BallX <= BallX + Ball_X_Motion;
            end 
            
        end
    end
endmodule
