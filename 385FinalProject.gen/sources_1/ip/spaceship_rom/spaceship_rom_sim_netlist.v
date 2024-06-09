// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  7 17:00:22 2023
// Host        : DESKTOP-TMJ1SK8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/advai/lab6_2/lab6_2.gen/sources_1/ip/spaceship_rom/spaceship_rom_sim_netlist.v
// Design      : spaceship_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spaceship_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module spaceship_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [3:0]douta;
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
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1108 mW" *) 
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
  (* C_INIT_FILE = "spaceship_rom.mem" *) 
  (* C_INIT_FILE_NAME = "spaceship_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1600" *) 
  (* C_READ_DEPTH_B = "1600" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "1600" *) 
  (* C_WRITE_DEPTH_B = "1600" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  spaceship_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17936)
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
