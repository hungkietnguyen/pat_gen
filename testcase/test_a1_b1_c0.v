task run_test();
    reg fail_num;
    begin
  	    fail_num = 0;
        $display("======================================");	
  	    $display("====== Pat name: a1_b1_c0 ============");
  	    $display("======================================");	

        test_bench.a = 1;
        test_bench.b = 1;
        test_bench.c = 0;

        #1;
        if( test_bench.z === 1 ) begin
            $display("======================================");	
  	        $display("============= TEST PASSED ============");
  	        $display("======================================");	
        end else begin
            $display("======================================");	
  	        $display("============= TEST FAILED ============");
  	        $display("======================================");	
            fail_num = 1;

        end

        $display("a=%b, b=%b, c=%b, z=%b",test_bench.a, test_bench.b, test_bench.c, test_bench.z);

        if( fail_num != 0 )
            $display("Test_result FAILED");
        else
            $display("Test_result PASSED");
        
    end


endtask
