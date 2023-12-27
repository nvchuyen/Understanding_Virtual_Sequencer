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

package test_lib_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"
	
	import env_pkg::*;
	import add_agent_pkg::*;
	import mul_agent_pkg::*;
	import seq_lib_pkg::*;
	
	 // Includes:
	 `include "add_gen.svh"
	 `include "mul_gen.svh"
	 `include "vsequencer.svh"
	 `include "test.svh"

endpackage : test_lib_pkg


