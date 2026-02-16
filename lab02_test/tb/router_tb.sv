class router_tb extends uvm_env;
    `uvm_component_utils(router_tb);
    
    //contructing the uvm_component using parent and name arguments
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction //new()

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        `uvm_info(get_type_name(), "Build phase is executing", UVM_HIGH)
    endfunction



endclass //className extends superClass