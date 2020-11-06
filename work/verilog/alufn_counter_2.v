/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alufn_counter_2 (
    input [3:0] count,
    output reg [5:0] alufn
  );
  
  
  
  always @* begin
    
    case (count)
      4'h0: begin
        alufn = 6'h00;
      end
      4'h1: begin
        alufn = 6'h01;
      end
      4'h2: begin
        alufn = 6'h02;
      end
      4'h4: begin
        alufn = 6'h04;
      end
      4'h8: begin
        alufn = 6'h08;
      end
      4'h3: begin
        alufn = 6'h18;
      end
      4'h4: begin
        alufn = 6'h17;
      end
      4'h5: begin
        alufn = 6'h1e;
      end
      4'h6: begin
        alufn = 6'h16;
      end
      4'h7: begin
        alufn = 6'h1a;
      end
      4'h8: begin
        alufn = 6'h1c;
      end
      4'h9: begin
        alufn = 6'h20;
      end
      4'ha: begin
        alufn = 6'h21;
      end
      4'hb: begin
        alufn = 6'h23;
      end
      4'hc: begin
        alufn = 6'h35;
      end
      4'hd: begin
        alufn = 6'h39;
      end
      4'hf: begin
        alufn = 6'h3d;
      end
      default: begin
        alufn = 6'h00;
      end
    endcase
  end
endmodule