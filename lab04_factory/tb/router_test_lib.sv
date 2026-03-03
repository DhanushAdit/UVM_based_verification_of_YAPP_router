class base_test extends uvm_test;
    `uvm_component_utils(base_test)
    
    router_tb tb;

    function new(string name = "base_test", uvm_component parent);
        super.new(name, parent);
    endfunction //new()

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tb = router_tb::type_id::create("tb",this);
        `uvm_info(get_type_name(), "Build phase is executing for base_test", UVM_HIGH)
        uvm_config_int::set(this, "*", "recording_detail", 1);
    endfunction : build_phase

    function void check_phase(uvm_phase phase);
        super.check_phase(phase);
        check_config_usage();
    endfunction

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


class short_packet_test extends base_test;
    `uvm_component_utils(short_packet_test)
    function new(string name = "short_packet_test", uvm_component parent);
        super.new(name, parent);
    endfunction //new()

    router_tb tb;

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        set_type_override_by_type(yapp_packet::get_type(), short_yapp_packet::get_type());
        `uvm_info(get_type_name(), "Build phase is executing for short_packet_test", UVM_HIGH)
    endfunction : build_phase

endclass //short_packet_test

