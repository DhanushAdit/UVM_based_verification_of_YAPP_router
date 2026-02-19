class base_test extends uvm_test;
    `uvm_component_utils(base_test)
    function new(string name = "base_test", uvm_component parent);
        super.new(name, parent);
    endfunction //new()

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info(get_type_name(), "Build phase is executing for base_test", UVM_HIGH)
    endfunction : build_phase

    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        uvm_top.print_topology();
    endfunction : end_of_elaboration_phase
endclass //base_test extends uvm_test

class test2 extends base_test;
    `uvm_component_utils(test2)
    function new(string name = "test2", uvm_component parent);
        super.new(name, parent);
    endfunction //new()

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info(get_type_name(), "Build phase is executing for test2", UVM_HIGH)
    endfunction : build_phase
endclass //test


