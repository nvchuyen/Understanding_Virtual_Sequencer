//------------------------------------------------
// Nguyen Van Chuyen
// 2023-12-22
//
//
//-------------------------------------------------
//
// Class Description
////////////////////////////////////////////////////

`ifndef SEQ_LIB_PKG_SV
`define SEQ_LIB_PKG_SV

package seq_lib_pkg;
	
import uvm_pkg::*;
`include "uvm_macros.svh"

	import env_pkg::*;
	import add_agent_pkg::*;
	import mul_agent_pkg::*;

	`include "mul_sequence.svh"
	`include "add_sequence.svh"
	`include "vsequencer.svh"
	`include "top_vseq_base.svh"
	`include "add_gen.svh"
	`include "mul_gen.svh"

endpackage : seq_lib_pkg
`endif

