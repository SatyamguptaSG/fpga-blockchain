module f1(input [31:0]num,output [4:0]i1)
integer i=num;
for(;i>=10;i=i-10){
}
assign i1=i;
endmodule;

module f2(input [31:0]num,output [4:0]i2)
integer i=num*3;
for(;i>=10;i=i-10){
}
assign i2=i;
endmodule;

module arr()
reg [31:0]arr1[9:0];
reg [31:0]arr2[9:0];
reg ch1[9:0];//stores if number is stored in arr1
reg ch2[9:0];//stores if number is stored in arr2
endmodule;

module insert(input [31:0]num,output pos)// pos i position in idex
wire [31:0] dummy1;
wire [31:0] dummy2;
// f1(num,i1);
// f2(num,i2);
integer flag=0;// flag tells the array where number is present
/*if(check(i1)==1 dummy= arr(i1)
assign arr[i1]=flag
dummy->f2->index->array->
*/
integer count=1;
assign dummy1=num;
always @(count<=20)begin
    if(~flag)begin
        f1(dummy1,i1)
        if(ch1[i1]==1){
            assign dummy2=arr[i1];
            assign arr1[i1]=dummy1;
            ch1[i1]=1;
            flag=1;
            count=count+1;
        }
        else{
            arr[i1]=dummy1;
            count=count+1;
            ch1[i1]=1;
        }
    end 
    else(flag) begin
        f2(dummy2,i2)
        if(ch2[i2]==1){
            assign dummy1=arr2[i2];
            assign arr[i2]=dummy2;
            ch2[i2]=1;
            flag=0;
            count=count+1;
        }
        else{
            arr[i2]=dummy2;
            count=count+1;
            ch1[i2]=1;
        }
    end;
end;
endmodule; 

module search(input [31:0]num)
/*number ka f1 f2 */
endmodule;
