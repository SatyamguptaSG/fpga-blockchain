module fadder(a,b,cin,cout,sum);
input a,b,cin;
output cout,sum;
assign cout=(a&b)|(b&cin)|(a&cin);
assign sum=(a^b)^cin;
endmodule
module fadder_tb;
reg a,b,cin;
wire cout,sum;
fadder(.a(a),.b(b),.cin(cin),.sum(sum));
initial begin
    a=0;b=0;cin=0;
    #5
    a=0;b=0;cin=1;
    #5
    a=0;b=1;cin=0;
    #5
    a=0;b=1;cin=1;
    #5
    a=1;b=0;cin=0;
    #5
    a=1;b=0;cin=1;
    #5
    a=1;b=1;cin=0;
    #5
    a=1;b=1;cin=1;
end
endmodule