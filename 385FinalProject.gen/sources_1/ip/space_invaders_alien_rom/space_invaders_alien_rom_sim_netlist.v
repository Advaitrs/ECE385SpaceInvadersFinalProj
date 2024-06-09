// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Dec  8 11:31:23 2023
// Host        : DESKTOP-TMJ1SK8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/advai/lab6_2/lab6_2.gen/sources_1/ip/space_invaders_alien_rom/space_invaders_alien_rom_sim_netlist.v
// Design      : space_invaders_alien_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "space_invaders_alien_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module space_invaders_alien_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [4:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [4:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [4:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.138 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "space_invaders_alien_rom.mem" *) 
  (* C_INIT_FILE_NAME = "space_invaders_alien_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2000" *) 
  (* C_READ_DEPTH_B = "2000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "5" *) 
  (* C_READ_WIDTH_B = "5" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2000" *) 
  (* C_WRITE_DEPTH_B = "2000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "5" *) 
  (* C_WRITE_WIDTH_B = "5" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  space_invaders_alien_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[4:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[4:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18032)
`pragma protect data_block
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
jZXfqXELiqwHB2qmak5X96XYbBA=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
