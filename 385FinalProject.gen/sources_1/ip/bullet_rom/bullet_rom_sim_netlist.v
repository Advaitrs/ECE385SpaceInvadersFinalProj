// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  7 19:04:15 2023
// Host        : DESKTOP-TMJ1SK8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/advai/lab6_2/lab6_2.gen/sources_1/ip/bullet_rom/bullet_rom_sim_netlist.v
// Design      : bullet_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bullet_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bullet_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [4:0]douta;

  wire [9:0]addra;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.126 mW" *) 
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
  (* C_INIT_FILE = "bullet_rom.mem" *) 
  (* C_INIT_FILE_NAME = "bullet_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "5" *) 
  (* C_WRITE_WIDTH_B = "5" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bullet_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18496)
`pragma protect data_block
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
rRDiQcId+V6w5sT6H5PLQ4446BTn7UCI4iNZiQ==
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
