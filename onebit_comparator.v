module comp(a,b,alb,aeb,agb);
input a,b;
output alb,aeb,agb;
assign alb=b&(a^b);
assign agb=a&(a^b);
assign aeb=~(a^b);
endmodule
module comb_tb;
reg a,b;
wire alb,aeb,agb;
comp(a,b,alb,aeb,agb);
intial begin
    a=0;b=0;
    #5
    a=1;b=0;
    #5
    a=0;b=1;
    #5
    a=1;b=1;
end
endmodule