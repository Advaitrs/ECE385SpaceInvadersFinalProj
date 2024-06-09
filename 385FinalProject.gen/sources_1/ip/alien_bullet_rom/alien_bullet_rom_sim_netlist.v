// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  7 23:35:27 2023
// Host        : DESKTOP-TMJ1SK8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/advai/lab6_2/lab6_2.gen/sources_1/ip/alien_bullet_rom/alien_bullet_rom_sim_netlist.v
// Design      : alien_bullet_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "alien_bullet_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module alien_bullet_rom
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
  (* C_INIT_FILE = "alien_bullet_rom.mem" *) 
  (* C_INIT_FILE_NAME = "alien_bullet_rom.mif" *) 
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
  alien_bullet_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18576)
`pragma protect data_block
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
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
