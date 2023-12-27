//------------------------------------------------
// Nguyen Van Chuyen
// 2023-12-22
//
//
//-------------------------------------------------
//
// Class Description
//
////////////////////////////////////////////////////        
                 
class test extends uvm_test;
`uvm_component_utils(test)
 
    function new(input string inst = "test", uvm_component c);
        super.new(inst,c);
    endfunction
  
    env e; 
    add_gen agen;
    mul_gen mgen; 

    // variable to store a reference to the factory
    uvm_factory factory; 
  
    virtual function void build_phase(uvm_phase phase);
        // get a reference to the factory
        factory = uvm_factory::get();
        super.build_phase(phase);
        e       = env::type_id::create("env",this);
        agen     = add_gen::type_id::create("agen");
        mgen     = mul_gen::type_id::create("mgen");
     endfunction
  
                 
    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        //agen.start(e.vseqr);
        //#20;
        mgen.start(e.vseqr);
        #20;  
        phase.drop_objection(this);
    endtask

    //------------------------------------
    // print topology
    //------------------------------------
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        $display("--------------------------------------------------------------",);
        $display("--------------------------------------------------------------",);
        `uvm_info("other_test","start of Elaboration Phase Executed", UVM_NONE);
        uvm_top.print_topology();
        `uvm_info("other_test","End of Elaboration Phase Executed", UVM_NONE);

        // print the contents of the factory
        factory.print();

    endfunction


    //------------------------------------
    // report error pass or fail
    //------------------------------------
    function void report_phase(uvm_phase phase);
        uvm_report_server svr;
        super.report_phase(phase);
   
        svr = uvm_report_server::get_server();
        if(svr.get_severity_count(UVM_FATAL)+svr.get_severity_count(UVM_ERROR)>0) begin
            `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
            `uvm_info(get_type_name(), "----            TEST FAIL          ----", UVM_NONE)
            `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
        end
        else begin
            `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
            `uvm_info(get_type_name(), "----           TEST PASS           ----", UVM_NONE)
            `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
        end
    endfunction
  
endclass  


 