/*
 * Copyright (c) 2013, Quan Nguyen
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 * 
 *     Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *     Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation and/or
 * other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

`define INSTR_NOP 	32'h00000013
`define PC_START	32'h00000000 /* change me back */

`define STR_LEN		26 /* decoded string length */

`define OPCODE_OP_IMM 	7'b0010011
`define OPCODE_OP	7'b0110011
`define OPCODE_LUI	7'b0110111
`define OPCODE_STORE	7'b0100011
`define OPCODE_LOAD	7'b0000011
`define OPCODE_J	7'b1100111
`define OPCODE_JAL	7'b1101111
`define OPCODE_JALR	7'b1101011
`define OPCODE_BRANCH	7'b1100011
`define OPCODE_PCR	7'b1111011

`define F3_BEQ		3'b000
`define F3_BNE		3'b001
`define F3_BLT		3'b100
`define F3_BGE		3'b101
`define F3_BLTU		3'b110
`define F3_BGEU		3'b111

`define F3_ADD		3'b000
`define F3_SLL		3'b001
`define F3_SLT		3'b010
`define F3_SLTU		3'b011
`define F3_XOR		3'b100
`define F3_SR		3'b101
`define F3_OR		3'b110
`define F3_AND		3'b111

`define F3_MUL		3'b000
`define F3_MULH		3'b001
`define F3_MULHSU	3'b010
`define F3_MULHU	3'b011
`define F3_DIV		3'b100
`define F3_DIVU		3'b101
`define F3_REM		3'b110
`define F3_REMU		3'b111

`define F3_LB		3'b000
`define F3_LH		3'b001
`define F3_LW		3'b010
`define F3_LBU		3'b100
`define F3_LHU		3'b101

`define F3_SB		3'b000
`define F3_SH		3'b001
`define F3_SW		3'b010

`define F3_CLEARPCR	3'b000
`define F3_SETPCR	3'b001
`define F3_MFPCR	3'b010
`define F3_MTPCR	3'b011

`define ALU_ADD 	4'd0
`define ALU_SLL		4'd1
`define ALU_SLT		4'd2
`define ALU_SLTU	4'd3
`define ALU_XOR		4'd4
`define ALU_SRL		4'd5
`define ALU_SRA		4'd6
`define ALU_OR		4'd7
`define ALU_AND		4'd8
`define ALU_MUL		4'd9
`define ALU_DIV		4'd10
`define ALU_DIVU	4'd11
`define ALU_REM		4'd12
`define ALU_REMU	4'd13
`define ALU_LUI		4'd14
`define ALU_NONE	4'd15

`define MUL_LO		2'b00
`define MUL_HI		2'b01
`define MUL_HI_SU	2'b10
`define MUL_HI_UU	2'b11

`define WB_ALU		3'b001
`define WB_MEM		3'b010
`define WB_PC4		3'b011
`define WB_PCR		3'b100

`define NPC_PLUS4	2'b00
`define NPC_BRANCH	2'b01
`define NPC_JUMP	2'b10
`define NPC_EVEC	2'b11

`define MEM_REQ_READ	1'b0
`define MEM_REQ_WRITE	1'b1

`define MEM_CMD_READ	1'b0
`define MEM_CMD_WRITE	1'b1

`define PCR_STATUS	5'd0
`define PCR_EPC		5'd1
`define PCR_BADVADDR	5'd2
`define PCR_EVEC	5'd3
`define PCR_COUNT	5'd4
`define PCR_COMPARE	5'd5
`define PCR_CAUSE	5'd6
`define PCR_PTBR	5'd7
`define PCR_K0		5'd12
`define PCR_K1		5'd13
`define PCR_TOHOST	5'd30
`define PCR_FROMHOST	5'd31

`define SR_IP		32'hFF000000
`define SR_IM		32'h00FF0000
`define SR_VM		32'h00000100
`define SR_S64		32'h00000080
`define SR_U64		32'h00000040
`define SR_S		32'h00000020
`define SR_PS		32'h00000010
`define SR_EC		32'h00000008
`define SR_EV		32'h00000004
`define SR_EF		32'h00000002
`define SR_ET		32'h00000001

`define IRQ_TIMER	3'd7

`define PAGE_T		32'h1
`define PAGE_E		32'h2
`define PAGE_R		32'h4
`define PAGE_D		32'h8
