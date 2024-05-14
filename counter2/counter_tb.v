module test();

    reg clk = 0;
    wire [5:0] led;

    //top #(8'd8) cnt (clk, led);
    top #(100) cnt (clk,led);
    // top cnt(clk, led);

    always
        #1 clk = ~clk;

    initial begin
        $display("Starting counter");
        // $monitor("LED Value %d %b", cnt.clockCounter, led);
        $monitor("LED Value:  %d %b", led, led);
        #1000 $display("sono a 1000");
        #2000 $display("sono a 2000");
        #3000 $finish;
    end

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, test);

    end
endmodule