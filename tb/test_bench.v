module test_bench;

    reg a,b,c;
    wire z;

    top u_dut(.*);
    
    `include "run_test.v"

    initial begin
        //a = 0;
        //b = 0;
        //c = 0;

        //#100;

        //a = 1;
        //b = 1;
        //c = 0;
        //#1;

        //$display("a=%b, b=%b, c=%b, z=%b",a,b,c,z);

        //#100;
        //
        //a = 0;
        //b = 1;
        //c = 0;
        //#1;
        //$display("a=%b, b=%b, c=%b, z=%b",a,b,c,z);


        //#100
        //
        //$finish;

    end
    
    initial begin
        #100;
        run_test();
        #100;
        $finish;
    end

endmodule
