module halfadder(a,b,carry,sum);
input a,b;
output carry,sum;
assign carry=a&b;
assign sum=a^b;
endmodule

module halfadder;
endmodule
module halfadder_tb;//testbench half adder
reg a,b;
wire sum,carry;
halfadder(.a(a),.b(b),.carry(carry),.sum(sum));
initial begin
    a=0;b=0;
    #5
    a=0;b=1;
    #5
    a=1;b=0;
    #5
    a=1;b=1;
end
endmodule