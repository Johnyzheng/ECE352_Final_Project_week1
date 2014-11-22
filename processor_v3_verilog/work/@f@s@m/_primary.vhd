library verilog;
use verilog.vl_types.all;
entity FSM is
    generic(
        reset_s         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi0);
        c1              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi1);
        c2              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi0);
        c3_asn          : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi1);
        c4_asnsh        : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi0);
        c3_shift        : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi1);
        c3_ori          : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi0);
        c4_ori          : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi1);
        c5_ori          : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi0);
        c3_load         : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi1);
        c4_load         : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi1, Hi0);
        c3_store        : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi1, Hi1);
        c3_bpz          : vl_logic_vector(3 downto 0) := (Hi1, Hi1, Hi0, Hi0);
        c3_bz           : vl_logic_vector(3 downto 0) := (Hi1, Hi1, Hi0, Hi1);
        c3_bnz          : vl_logic_vector(3 downto 0) := (Hi1, Hi1, Hi1, Hi0)
    );
    port(
        reset           : in     vl_logic;
        instr           : in     vl_logic_vector(3 downto 0);
        clock           : in     vl_logic;
        N               : in     vl_logic;
        Z               : in     vl_logic;
        PCwrite         : out    vl_logic;
        AddrSel         : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        IRload          : out    vl_logic;
        R1Sel           : out    vl_logic;
        MDRload         : out    vl_logic;
        R1R2Load        : out    vl_logic;
        ALU1            : out    vl_logic;
        ALU2            : out    vl_logic_vector(2 downto 0);
        ALUop           : out    vl_logic_vector(2 downto 0);
        ALUOutWrite     : out    vl_logic;
        RFWrite         : out    vl_logic;
        RegIn           : out    vl_logic;
        FlagWrite       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of reset_s : constant is 2;
    attribute mti_svvh_generic_type of c1 : constant is 2;
    attribute mti_svvh_generic_type of c2 : constant is 2;
    attribute mti_svvh_generic_type of c3_asn : constant is 2;
    attribute mti_svvh_generic_type of c4_asnsh : constant is 2;
    attribute mti_svvh_generic_type of c3_shift : constant is 2;
    attribute mti_svvh_generic_type of c3_ori : constant is 2;
    attribute mti_svvh_generic_type of c4_ori : constant is 2;
    attribute mti_svvh_generic_type of c5_ori : constant is 2;
    attribute mti_svvh_generic_type of c3_load : constant is 2;
    attribute mti_svvh_generic_type of c4_load : constant is 2;
    attribute mti_svvh_generic_type of c3_store : constant is 2;
    attribute mti_svvh_generic_type of c3_bpz : constant is 2;
    attribute mti_svvh_generic_type of c3_bz : constant is 2;
    attribute mti_svvh_generic_type of c3_bnz : constant is 2;
end FSM;
