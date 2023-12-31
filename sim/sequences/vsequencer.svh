// ----------------------------------------
//
//
//
// ----------------------------------------
//
//////////////////////////////////////////////////////////////////////////////

import uvm_pkg::*;
`include "uvm_macros.svh" 

class vsequencer extends uvm_sequencer;
   `uvm_component_utils(vsequencer)
 
    uvm_sequencer #(add_transaction) VA;
    uvm_sequencer #(mul_transaction) VM;
    
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction
 
endclass

