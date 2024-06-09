module sound(
            input clk,
            input logic playerh,
            input logic bul,
            output int speakerR,
            output int speakerL);

       
            reg[28:0]newclk;
  
            logic stopvar = 1;
            int temp = 1;
            
            always_ff @(posedge clk)
            begin
            newclk <= newclk + 1'b1;
            end
            
            always_comb
            begin
            if(bul)
            begin
                if (newclk[22]==0&&newclk[21]==0&&newclk[23]==0)
                begin
                speakerR = newclk[17];
                end
                else if(newclk[22]==0&&newclk[21]==0&&newclk[23]==1)
                begin
                speakerR = newclk[16];
                end
                else if(newclk[22]==0&&newclk[21]==1&&newclk[23]==1)
                begin
                speakerR = 1'b0;
                end
                else if(newclk[22]==1&&newclk[21]==0&&newclk[23]==0)
                begin
                speakerR = newclk[15];
                end
                else if(newclk[22]==1&&newclk[21]==0&&newclk[23]==1)
                begin
                speakerR = newclk[14];
                end
                else if(newclk[22]==1&&newclk[21]==1&&newclk[23]==0)
                begin
                speakerR = 1'b0;
                end
                else if(newclk[22]==1&&newclk[21]==1&&newclk[23]==1)
                begin
                speakerR = 1'b0;
                end
            end  
             
             
            if(playerh)
            begin
                if (newclk[24]==0&&newclk[26]==0&&newclk[25]==0)
                begin
                speakerL = newclk[15];
                end
                else if(newclk[24]==0&&newclk[26]==0&&newclk[25]==1)
                begin
                speakerL = 1'b0;
                end
                else if(newclk[24]==0&&newclk[26]==1&&newclk[25]==1)
                begin
                speakerL = newclk[16];
                end
                else if(newclk[24]==1&&newclk[26]==0&&newclk[25]==0)
                begin
                speakerL = 1'b0;
                end
                else if(newclk[24]==1&&newclk[26]==0&&newclk[25]==1)
                begin
                speakerL = newclk[15];
                end
                else if(newclk[24]==1&&newclk[26]==1&&newclk[25]==0)
                begin
                speakerL = 1'b0;
                end
                else if(newclk[24]==1&&newclk[26]==1&&newclk[25]==1)
                begin
                speakerL = 1'b0;
                end
               end
            end
            
            
            
            
            
            
            
       //assign speakerR = newclk[17];
       
       
       
       
            
       
       
           /*
            enum logic [4:0] {stop, gameover, shoot, reclk, nosound, startclk, hold, hold2, hold3}state, next;
         
            always_ff @(posedge clk)
            begin
            if(bul==0&&playerh==0)
                state<=stop;
            else
                state<=next;
            end
           
            always_comb
            begin
            next = state;
            case (state)
                stop:
                if(playerh==1||bul==1)
                    next = reclk;
                   
                shoot:
                if(stopvar==0)
                    next = nosound;
                
                gameover:
                 if(stopvar==0&&playerh==1)
                    next = nosound;
                
               
                reclk:
                if(playerh==1||bul==1)
                    next = startclk;
               
                startclk:
                if(playerh==1&&bul==0)
                    next = gameover;
                else if(bul==1&&playerh==0)
                    next = shoot;
               
                nosound:
                if(playerh==0&&bul==0&&stopvar==0)
                    next = stop;  
            endcase
           
            case(state)
            stop:
            begin
            stopvar=1;
            end
           
            reclk: ;
           
            startclk: ;
           
            nosound:
            begin
            speakerR=1'b0;
            speakerL=1'b0;
            end
           
            gameover:
            begin
                if (newclk[25]==0&&newclk[24]==0&&newclk[23]==0)
                begin
                speakerR = newclk[20];
                end
                else if(newclk[25]==0&&newclk[24]==0&&newclk[23]==1)
                begin
                speakerR = newclk[20];
                end
                else if(newclk[25]==0&&newclk[24]==1&&newclk[23]==1)
                begin
                speakerR = newclk[18];
                end
                else if(newclk[25]==1&&newclk[24]==0&&newclk[23]==0)
                begin
                speakerR = newclk[17];
                end
                else if(newclk[25]==1&&newclk[24]==0&&newclk[23]==1)
                begin
                speakerR = newclk[18];
                end
                else if(newclk[25]==1&&newclk[24]==1&&newclk[23]==0)
                begin
                speakerR = newclk[16];
                end
                else if(newclk[25]==1&&newclk[24]==1&&newclk[23]==1&&newclk[27]==1)
                begin
                stopvar = 0;
                end
            end
           
            shoot:
            begin
            if (newclk[25]==0&&newclk[24]==0&&newclk[23]==0)
                begin
                speakerR = newclk[14];
                end
                else if(newclk[25]==0&&newclk[24]==0&&newclk[23]==1)
                begin
                speakerR = newclk[15];
                end
                else if(newclk[25]==0&&newclk[24]==1&&newclk[23]==0)
                begin
                speakerR = newclk[16];
                end
                else if(newclk[25]==0&&newclk[24]==1&&newclk[23]==1)
                begin
                speakerR = newclk[15];
                end
                else if(newclk[25]==1&&newclk[24]==0&&newclk[23]==0)
                begin
                speakerR = newclk[15];
                end
                else if(newclk[25]==1&&newclk[24]==1&&newclk[23]==0)
                begin
                speakerR = newclk[14];
                end
                else if(newclk[25]==1&&newclk[24]==1&&newclk[23]==1&&newclk[27]==1)
                begin
                stopvar = 0;
                end
            end
            endcase
            end
         */   
 endmodule