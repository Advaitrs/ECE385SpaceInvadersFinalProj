// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  7 23:39:52 2023
// Host        : DESKTOP-TMJ1SK8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top spaceship_dead_rom -prefix
//               spaceship_dead_rom_ spaceship_dead_sim_netlist.v
// Design      : spaceship_dead
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spaceship_dead,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module spaceship_dead_rom
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
  (* C_INIT_FILE = "spaceship_dead.mem" *) 
  (* C_INIT_FILE_NAME = "spaceship_dead.mif" *) 
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
  spaceship_dead_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17648)
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
