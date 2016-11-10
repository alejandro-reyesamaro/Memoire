#!/usr/bin/env Rscript
source("script_bars_golfers.r")
source("script_boxcom_golfers.r")
source("script_boxsel_golfers.r")
source("script_boxsel_costas.r")
source("script_boxcom_costas.r")
source("script_bars_costas.r")
source("script_boxsel_golomb.r")
source("script_boxcom_golomb.r")
source("script_bars_golomb.r")
source("script_box_nqueens.r")
source("script_bars_nqueens.r")

col_seq_box <- rgb(1, 102/255, 102/255, 1)
col_par_box <- rgb(1, 153/255, 153/255, 1)
col_comm_box <- rgb(102/255, 178/255, 1, 1)

#------ 5-3-7

sec=c(1.300,1.520,1.130,0.320,0.160,1.370,0.340,0.820,0.860,2.360,1.680,0.500,0.230,1.020,1.800,0.240,0.600,0.030,4.200,2.640,0.870,1.340,2.700,0.600,2.380,0.360,0.720,3.760,0.610,1.260)
best=c(0.130,0.520,0.170,0.870,0.080,0.340,0.470,0.300,0.280,0.090,0.310,0.040,0.180,0.080,0.460,0.550,0.160,1.580,0.170,0.100,1.040,0.190,0.640,0.350,0.110,0.140,3.760,0.080,0.460,0.080)
par=c(0.310,0.290,0.150,0.110,0.310,0.180,0.160,0.340,0.160,0.600,0.130,0.120,0.130,0.120,0.110,0.150,0.640,0.230,0.370,0.100,0.130,0.320,0.490,0.160,0.290,0.170,0.150,0.110,0.320,0.310)
com11_100=c(0.080,0.040,0.080,0.080,0.130,0.410,0.360,0.240,0.040,0.050,0.190,0.140,0.050,0.340,0.080,0.860,0.070,0.120,0.120,0.130,0.060,0.040,0.390,0.090,0.400,0.330,0.320,0.700,0.050,0.080)
com11_50=c(0.060,0.320,0.080,0.200,0.270,0.120,0.150,0.220,0.270,0.070,0.350,0.660,0.110,0.030,0.170,0.050,0.300,0.090,0.090,0.080,0.140,0.150,0.090,0.400,0.270,0.100,0.120,0.260,0.130,0.060)
com11_25=c(0.360,0.640,0.060,0.050,0.160,0.710,0.290,0.310,0.060,0.050,0.150,0.110,0.470,0.110,0.220,0.080,0.040,0.200,0.230,0.300,0.040,0.320,0.050,0.290,0.760,0.040,0.060,0.050,0.280,0.180)
com1n_100=c(0.050,0.040,0.180,0.080,0.060,0.160,0.720,0.120,0.050,0.150,0.060,0.170,0.150,0.320,0.470,0.070,0.020,0.270,0.050,0.230,0.140,0.120,0.100,0.130,0.560,0.330,0.150,0.300,0.370,0.480)
com1n_50=c(0.040,0.080,0.050,0.270,0.280,0.030,0.070,0.140,0.070,0.340,0.260,0.120,0.200,0.150,0.190,0.060,0.180,0.170,0.290,0.070,0.220,0.230,0.070,0.400,0.430,0.510,0.110,0.090,0.070,0.160)
com1n_25=c(0.100,0.090,0.020,0.240,0.210,0.240,0.120,0.060,0.380,0.120,0.120,0.130,0.560,0.560,0.320,0.240,0.320,0.100,0.170,0.630,0.070,0.240,0.190,0.210,0.260,0.250,0.300,0.210,0.530,0.080)
com1n_v2=c(0.230,0.250,0.360,0.180,0.190,0.070,0.090,0.180,0.170,0.160,0.030,0.070,0.020,0.050,0.080,0.050,0.270,0.160,0.090,0.130,0.140,0.280,0.070,0.080,0.050,0.180,0.120,0.090,0.130,0.140)
com1n2_v2=c(0.200,0.270,0.110,0.220,0.210,0.190,0.280,0.220,0.100,0.150,0.240,0.080,0.040,0.090,0.050,0.040,0.110,0.090,0.130,0.180,0.180,0.100,0.070,0.070,0.270,0.120,0.100,0.100,0.070,0.250)
com1n4_v2=c(0.060,0.070,0.030,0.170,0.160,0.100,0.080,0.160,0.160,0.080,0.050,0.110,0.140,0.080,0.070,0.210,0.330,0.200,0.150,0.150,0.080,0.080,0.100,0.110,0.060,0.060,0.090,0.070,0.220,0.400)
com11_100_v2=c(0.130,0.110,0.120,0.140,0.190,0.040,0.060,0.060,0.040,0.120,0.180,0.200,0.120,0.090,0.070,0.020,0.100,0.080,0.030,0.040,0.040,0.200,0.180,0.180,0.030,0.060,0.150,0.200,0.060,0.130)
com11_50_v2=c(0.040,0.040,0.120,0.080,0.030,0.110,0.060,0.090,0.080,0.130,0.050,0.140,0.200,0.060,0.090,0.060,0.050,0.080,0.080,0.150,0.070,0.090,0.100,0.210,0.070,0.080,0.090,0.040,0.030,0.110)
com11_25_v2=c(0.260,0.180,0.060,0.070,0.200,0.070,0.160,0.100,0.090,0.100,0.140,0.080,0.060,0.060,0.070,0.080,0.200,0.140,0.120,0.040,0.130,0.140,0.160,0.100,0.120,0.110,0.080,0.220,0.140,0.070)
data<-data.frame(par, com11_100,com11_50,com11_25,com1n_100,com1n_50,com1n_25,com1n_v2,com1n2_v2,com1n4_v2,com11_100_v2,com11_50_v2,com11_25_v2)

values <- matrix(c(
13/30*100, 10/30*100, 5/30*100, 15/30*100, 12/30*100,  4/30*100, 25/30*100, 26/30*100, 19/30*100, 20/30*100, 20/30*100, 5/30*100, #receivers
15/30*100, 6/30*100,  1/30*100, 13/30*100,  5/30*100,  1/30*100,         0,  2/30*100, 11/30*100,         0,  3/30*100, 5/30*100, #senders
2/30*100,         0,         0,  2/30*100,         0,         0,  5/30*100,  2/30*100,         0, 10/30*100,         0,        0,
       0, 14/30*100, 24/30*100,         0, 13/30*100, 25/30*100,         0,         0,         0,         0,  7/30*100, 20/30*100), #non communicating
nrow = 4,ncol = 12, byrow = TRUE)

script_boxcom_golfers(data, "g5_comm_BP.pdf", 12, mean(par), mean(com11_50_v2), 0.8, col_par_box, col_comm_box)
data<-data.frame(sec,best,par) #par = first improvement
script_boxsel_golfers(data, "g5_select_BP.pdf", 2.65, mean(sec), mean(par), col_par_box, col_comm_box)
script_bars_golfers(values, "g5_per_BP.pdf")

#----- 9-4-8

sec=c(1.380,0.950,0.430,0.630,1.450,0.790,2.780,2.880,1.080,1.420,2.230,0.220,0.420,2.060,0.710,0.610,2.000,0.630,0.370,0.800,0.400,0.930,0.160,1.120,0.900,0.830,0.330,1.000,1.320,0.420)
best=c(1.020,0.800,0.800,0.750,0.790,0.920,0.800,0.940,0.810,0.970,0.870,0.650,0.740,0.890,0.800,1.000,0.880,0.920,0.940,0.930,0.730,0.700,0.700,1.170,0.950,0.810,0.810,0.800,1.180,1.110)
par=c(1.060,0.380,0.900,0.580,0.640,0.480,0.650,0.550,0.760,0.520,0.500,0.700,0.470,0.280,0.600,0.510,0.650,0.480,0.610,0.470,0.360,0.630,0.920,0.630,0.560,0.710,0.620,0.470,0.450,0.640)
com11_100=c(0.80,0.40,0.80,0.80,0.130,0.410,0.360,0.240,0.40,0.50,0.190,0.140,0.50,0.340,0.80,0.860,0.70,0.120,0.120,0.130,0.60,0.40,0.390,0.90,0.400,0.330,0.320,0.700,0.50,0.80)
com11_50=c(0.280,0.350,0.380,0.480,0.500,0.400,0.470,0.450,0.530,0.400,0.430,0.600,0.480,0.370,0.580,0.770,0.570,0.390,0.380,0.590,0.460,0.750,0.500,0.500,0.560,0.560,0.560,0.390,0.710,0.460)
com11_25=c(0.350,0.390,0.530,0.710,0.600,0.520,0.670,0.580,0.460,0.310,0.580,0.590,0.660,0.780,0.830,0.590,0.530,0.440,0.380,0.710,0.340,0.750,0.710,0.440,0.610,0.430,0.620,0.380,0.540,0.580)
com1n_100=c(0.840,0.350,0.320,0.380,0.450,0.550,0.590,0.620,0.400,0.620,0.550,0.620,0.520,0.580,0.810,0.520,0.500,0.620,0.730,0.430,0.630,0.850,0.440,0.630,0.670,0.440,0.590,0.490,0.320,0.600)
com1n_50=c(0.410,0.380,0.410,0.440,0.450,0.400,0.500,0.630,0.600,0.760,0.510,0.780,0.450,0.380,0.500,0.390,0.660,0.740,0.490,0.380,0.180,0.480,0.650,0.540,0.520,0.960,0.610,0.540,0.460,0.320)
com1n_25=c(0.760,0.760,0.530,0.630,0.750,0.590,0.470,0.500,0.640,0.480,0.530,0.700,0.560,0.350,0.670,0.600,0.520,0.430,0.500,0.680,0.570,0.340,0.540,0.610,0.340,0.450,0.470,0.490,0.580,0.550)
com1n_v2=c(0.780,0.660,0.550,0.880,0.510,0.780,0.470,0.540,0.300,0.740,0.490,0.310,0.520,0.650,0.280,0.470,0.540,0.670,0.410,0.350,0.540,0.470,0.500,0.590,0.780,0.670,0.560,0.380,0.580,0.600)
com1n2_v2=c(0.600,0.340,0.620,0.630,0.440,0.500,0.780,0.410,0.410,0.660,0.350,0.300,0.420,0.360,0.690,0.460,0.820,0.540,0.730,0.500,0.580,0.540,0.670,0.720,0.360,0.470,0.480,0.300,0.610,0.620)
com1n4_v2=c(0.440,0.490,0.230,0.400,0.280,0.280,0.490,0.560,0.500,0.410,0.320,0.190,0.310,0.340,0.210,0.340,0.520,0.630,0.370,0.310,0.250,0.450,0.590,0.730,0.660,0.230,0.360,0.450,0.280,0.340)
com11_50_v2=c(0.170,0.220,0.430,0.500,0.500,0.340,0.330,0.280,0.420,0.470,0.300,0.460,0.120,0.490,0.540,0.480,0.200,0.360,0.520,0.480,0.370,0.430,0.380,0.340,0.530,0.190,0.300,0.130,0.490,0.280)
com11_100_v2=c(0.330,0.350,0.350,0.100,0.280,0.280,0.340,0.560,0.520,0.400,0.510,0.380,0.480,0.220,0.590,0.360,0.430,0.740,0.240,0.180,0.190,0.150,0.220,0.510,0.380,0.260,0.500,0.500,0.380,0.350)
com11_25_v2=c(0.400,0.370,0.570,0.520,0.620,0.420,0.600,0.430,0.540,0.350,0.460,0.450,0.390,0.450,0.440,0.430,0.580,0.390,0.630,0.280,0.460,0.410,0.740,0.290,0.290,0.250,0.350,0.520,0.480,0.410)
data<-data.frame(par,com11_100,com11_50,com11_25,com1n_100,com1n_50,com1n_25,com1n_v2,com1n2_v2,com1n4_v2,com11_100_v2,com11_50_v2,com11_25_v2)

values <- matrix(c(
19/30*100, 10/30*100, 4/30*100, 20/30*100, 6/30*100, 9/30*100, 24/30*100, 30/30*100, 27/30*100, 28/30*100, 14/30*100, 9/30*100, #receivers
10/30*100, 8/30*100, 5/30*100, 3/30*100, 4/30*100, 0, 0, 0, 3/30*100, 2/30*100, 9/30*100, 5/30*100, #senders
1/30*100, 0, 0, 7/30*100, 0, 0, 6/30*100, 0, 0, 0, 0, 0,
0, 12/30*100, 21/30*100, 0, 20/30*100, 21/30*100, 0, 0, 0, 0, 7/30*100, 16/30*100), #non communicating
nrow = 4,ncol = 12, byrow = TRUE)
script_boxcom_golfers(data, "g9_comm_BP.pdf", 11, mean(par), mean(com11_100_v2), 1.1, col_par_box, col_comm_box)
data<-data.frame(sec,best,par) #par = first improvement
script_boxsel_golfers(data, "g9_select_BP.pdf", 2.9, mean(sec), mean(par), col_par_box, col_comm_box)
script_bars_golfers(values, "g9_per_BP.pdf")

#----- 8-4-7

sec=c(0.630,0.960,0.830,0.380,0.320,0.610,0.600,0.820,1.100,0.220,0.460,0.280,0.150,0.650,0.440,0.260,0.280,1.230,0.190,1.210,0.290,0.990,0.870,0.560,0.180,1.190,0.710,0.810,0.560,0.300)
best=c(0.710,0.560,0.350,0.430,0.520,0.420,0.530,0.340,0.290,0.600,0.230,0.220,0.350,0.310,0.200,0.320,0.330,0.190,0.360,0.310,0.380,0.340,0.300,0.460,0.370,0.410,0.360,0.360,0.380,0.400)
par=c(0.480,0.460,0.340,0.290,0.290,0.320,0.240,0.200,0.290,0.400,0.290,0.280,0.340,0.190,0.290,0.280,0.150,0.300,0.240,0.180,0.210,0.360,0.270,0.320,0.190,0.190,0.240,0.240,0.260,0.230)
com11_100=c(0.180,0.140,0.450,0.150,0.290,0.330,0.370,0.150,0.230,0.150,0.240,0.150,0.290,0.200,0.360,0.400,0.380,0.390,0.350,0.150,0.350,0.390,0.210,0.210,0.230,0.270,0.340,0.290,0.390,0.220)
com11_50=c(0.360,0.180,0.260,0.150,0.240,0.180,0.110,0.270,0.190,0.190,0.130,0.300,0.220,0.290,0.250,0.170,0.180,0.190,0.210,0.200,0.200,0.300,0.110,0.170,0.260,0.280,0.250,0.300,0.160,0.220)
com11_25=c(0.150,0.300,0.320,0.360,0.230,0.100,0.220,0.180,0.210,0.270,0.280,0.290,0.440,0.420,0.420,0.160,0.230,0.280,0.230,0.230,0.310,0.280,0.310,0.220,0.090,0.250,0.150,0.230,0.190,0.120)
com1n_100=c(0.160,0.220,0.260,0.300,0.140,0.280,0.240,0.250,0.170,0.230,0.310,0.300,0.190,0.270,0.240,0.180,0.270,0.250,0.230,0.260,0.310,0.200,0.270,0.320,0.190,0.180,0.240,0.350,0.300,0.250)
com1n_50=c(0.270,0.300,0.120,0.190,0.140,0.170,0.240,0.180,0.270,0.320,0.220,0.230,0.250,0.280,0.130,0.310,0.330,0.190,0.220,0.130,0.120,0.330,0.220,0.210,0.180,0.320,0.170,0.160,0.180,0.280)
com1n_25=c(0.290,0.300,0.170,0.190,0.210,0.310,0.270,0.330,0.190,0.260,0.230,0.280,0.080,0.360,0.380,0.250,0.340,0.500,0.250,0.250,0.520,0.320,0.250,0.330,0.340,0.480,0.220,0.240,0.360,0.210)
com1n_v2=c(0.380,0.270,0.260,0.210,0.350,0.190,0.490,0.190,0.310,0.230,0.210,0.370,0.250,0.280,0.230,0.260,0.400,0.210,0.510,0.230,0.320,0.200,0.420,0.710,0.440,0.130,0.320,0.510,0.130,0.230)
com1n2_v2=c(0.290,0.160,0.160,0.150,0.160,0.160,0.210,0.150,0.230,0.230,0.310,0.230,0.300,0.120,0.340,0.130,0.250,0.370,0.370,0.250,0.280,0.240,0.150,0.180,0.280,0.220,0.270,0.230,0.220,0.190)
com1n4_v2=c(0.190,0.120,0.150,0.290,0.160,0.270,0.350,0.300,0.180,0.170,0.130,0.210,0.230,0.210,0.320,0.250,0.200,0.280,0.300,0.230,0.200,0.260,0.200,0.120,0.300,0.310,0.180,0.280,0.290,0.140)
com11_100_v2=c(0.130,0.210,0.200,0.120,0.190,0.190,0.180,0.100,0.080,0.080,0.130,0.220,0.170,0.140,0.110,0.090,0.220,0.160,0.090,0.120,0.260,0.140,0.150,0.240,0.190,0.160,0.060,0.140,0.130,0.050)
com11_50_v2=c(0.360,0.230,0.260,0.280,0.170,0.110,0.150,0.220,0.170,0.170,0.110,0.240,0.170,0.320,0.160,0.320,0.190,0.330,0.210,0.180,0.240,0.230,0.290,0.200,0.270,0.290,0.200,0.190,0.160,0.330)
com11_25_v2=c(0.250,0.200,0.120,0.280,0.270,0.250,0.250,0.250,0.170,0.240,0.120,0.220,0.200,0.200,0.150,0.260,0.180,0.140,0.270,0.240,0.260,0.110,0.290,0.160,0.240,0.160,0.190,0.140,0.320,0.200)
data<-data.frame(par,com11_100,com11_50,com11_25,com1n_100,com1n_50,com1n_25,com1n_v2,com1n2_v2,com1n4_v2,com11_100_v2,com11_50_v2,com11_25_v2)

values <- matrix(c(
15/30*100, 12/30*100, 4/30*100, 18/30*100, 10/30*100, 5/30*100, 22/30*100, 22/30*100, 23/30*100, 17/30*100, 11/30*100, 13/30*100, #receivers
12/30*100, 7/30*100, 1/30*100, 2/30*100, 5/30*100, 4/30*100, 0, 6/30*100, 7/30*100, 12/30*100, 16/30*100, 8/30*100, #senders 
3/30*100, 0, 1/30*100, 10/30*100, 0, 0, 8/30*100, 2/30*100, 0, 1/30*100, 0, 0, 
0, 11/30*100, 24/30*100, 0, 15/30*100, 21/30*100, 0, 0, 0, 0, 3/30*100, 9/30*100), #non communicating
nrow = 4,ncol = 12, byrow = TRUE)
script_boxcom_golfers(data, "g8_comm_BP.pdf", 11, mean(par), mean(com11_100_v2), 0.7, col_par_box, col_comm_box)
data<-data.frame(sec,best,par) #par = first improvement
script_boxsel_golfers(data, "g8_select_BP.pdf", 1.23, mean(sec), mean(par), col_par_box, col_comm_box)
script_bars_golfers(values, "g8_per_BP.pdf")

#-------- costas

script_boxsel_costas(col_par_box, col_comm_box)
script_boxcom_costas(col_par_box, col_comm_box)
script_bars_costas()

#------- golomb 8-34
seqNT=c(0.080,0.950,0.400,0.600,0.880,2.050,2.580,0.200,0.690,1.640,1.040,0.210,0.240,0.100,0.130,1.040,1.720,1.070,1.290,0.040,0.460,0.100,0.940,0.110,1.760,0.420,1.440,0.780,0.220,0.670)
seqT=c(1.090,0.010,0.240,2.190,2.350,0.700,0.150,0.740,0.870,0.080,0.050,0.450,0.970,0.510,0.100,1.230,0.500,0.560,0.860,0.070,0.510,0.450,0.080,0.260,1.960,0.260,1.340,0.250,0.030,1.070)
parNT=c(0.070,0.050,0.050,0.090,0.050,0.060,0.110,0.030,0.040,0.030,0.030,0.050,0.020,0.130,0.100,0.060,0.020,0.020,0.010,0.030,0.020,0.040,0.010,0.140,0.030,0.020,0.040,0.010,0.020,0.040)
parT=c(0.110,0.100,0.050,0.020,0.020,0.030,0.020,0.010,0.020,0.040,0.010,0.020,0.020,0.100,0.030,0.040,0.020,0.030,0.030,0.170,0.090,0.060,0.060,0.060,0.010,0.010,0.020,0.010,0.050,0.020)
com11=c(0.040,0.030,0.030,0.030,0.080,0.060,0.040,0.030,0.030,0.160,0.090,0.060,0.030,0.050,0.030,0.040,0.030,0.040,0.020,0.020,0.030,0.030,0.020,0.010,0.080,0.020,0.030,0.070,0.010,0.090)
com1n=c(0.020,0.010,0.020,0.080,0.070,0.010,0.070,0.040,0.010,0.010,0.080,0.040,0.030,0.010,0.070,0.090,0.040,0.010,0.080,0.060,0.020,0.010,0.070,0.040,0.080,0.040,0.100,0.010,0.050,0.010)
data<-data.frame(seqNT, seqT, parNT, parT)
script_boxsel_golomb(data, "gol8_select_BP.pdf", 2.25, mean(seqT), mean(parT), col_par_box, col_comm_box)
data<-data.frame(parNT, parT, com11, com1n)
script_boxcom_golomb(data, "gol8_comm_BP.pdf", mean(parT), mean(com1n), 0.2, col_par_box, col_comm_box)
values <- matrix(c(
13/30*100, 15/30*100, #receivers
17/30*100, 15/30*100), #senders 
#0, 0),
nrow = 2,ncol = 2, byrow = TRUE)
script_bars_golomb(values, "gol8_per_BP.pdf")


#------- golomb 10-55
seqNT=c(11.540,106.120,58.220,49.070,20.200,47.620,55.600,90.620,7.650,145.150,33.210,96.990,47.300,15.960,18.560,7.480,68.200,92.600,22.950,45.450,34.570,112.110,142.360,142.300,78.720,56.810,12.120,58.860,208.790,106.150)
seqT=c(17.720,146.880,63.660,10.090,75.560,53.700,147.140,57.570,44.530,40.970,0.410,40.840,57.140,38.570,134.890,91.410,57.340,105.230,114.190,110.290,23.310,14.320,151.240,88.750,39.030,51.060,37.810,24.270,5.610,193.370)
parNT=c(5.360,1.700,6.590,0.900,5.710,4.000,4.760,1.480,15.100,12.840,4.270,7.360,7.330,2.370,6.890,1.080,10.340,13.190,8.370,3.260,0.970,0.920,4.250,3.630,8.690,2.000,3.760,7.390,3.370,1.430)
parT=c(4.740,13.990,7.980,6.810,9.300,21.410,3.340,3.190,1.230,2.320,5.520,4.330,3.170,1.050,8.090,5.310,2.950,0.620,11.370,2.790,2.400,2.110,11.010,1.560,3.270,0.640,0.990,0.480,3.120,2.600)
com11=c(1.370,0.440,6.440,0.590,0.310,1.790,2.880,1.700,0.260,0.550,5.750,6.800,9.100,1.070,3.010,4.590,10.120,3.620,3.080,0.430,9.580,3.060,7.210,1.310,6.620,8.850,2.480,9.170,1.460,3.460)
com1n=c(8.180,7.920,1.350,3.030,3.460,0.630,9.300,1.680,0.170,5.520,0.210,1.100,8.150,1.510,0.460,2.230,3.650,1.240,0.580,0.460,5.560,1.470,0.960,1.280,4.800,3.760,1.620,1.370,7.910,5.290)
data<-data.frame(seqNT, seqT, parNT, parT)
script_boxsel_golomb(data, "gol10_select_BP.pdf", 209, mean(seqT), mean(parT), col_par_box, col_comm_box)
data<-data.frame(parNT, parT, com11, com1n)
script_boxcom_golomb(data, "gol10_comm_BP.pdf", mean(parT), mean(com1n), 15.2, col_par_box, col_comm_box)
values <- matrix(c(
13/30*100, 14/30*100, #receivers
17/30*100, 16/30*100), #senders 
#0, 0),
nrow = 2,ncol = 2, byrow = TRUE)
script_bars_golomb(values, "gol10_per_BP.pdf")


#------- golomb 11-72
seqNT=c(279.920,123.870,158.860,59.290,298.830,216.040,98.300,47.670,rep.int(NA,22))
seqT=c(26.420,126.880,140.600,68.180,272.440,10.300,124.410,72.180,216.000,rep.int(NA,21))
parNT=c(273.700,30.790,103.280,53.230,41.540,58.890,90.190,133.910,82.350,150.320,1.430,95.300,173.490,51.820,21.590,40.000,123.830,82.010,60.880,98.000,56.980,129.980,98.100,78.750,166.690,82.660,92.160,142.440,54.130,24.350)
parT=c(32.170,86.650,161.460,220.280,74.050,66.420,179.500,117.350,103.960,9.800,25.290,108.060,119.020,18.550,210.190,53.520,127.630,52.620,214.640,28.080,79.130,55.850,91.340,7.270,184.280,1.620,12.520,3.640,34.220,71.590)
com11=c(58.150,211.410,5.580,81.170,44.770,92.430,62.460,48.680,50.410,192.780,84.510,174.050,62.130,116.400,69.700,78.790,53.510,42.740,73.150,38.160,12.310,96.690,190.280,78.940,98.090,159.820,96.030,78.610,24.700,86.470)
com1n=c(170.270,62.810,14.140,53.730,16.230,24.030,39.870,59.800,16.660,79.380,95.520,118.760,21.140,19.580,124.340,85.260,10.690,75.000,26.580,154.340,7.170,44.110,90.380,32.580,47.430,114.890,47.620,13.730,77.170,67.510)
data<-data.frame(seqNT, seqT, parNT, parT)
script_boxsel_golomb(data, "gol11_select_BP.pdf", 300, mean(seqT[1:8]), mean(parT), col_par_box, col_comm_box)
data<-data.frame(parNT, parT, com11, com1n)
script_boxcom_golomb(data, "gol11_comm_BP.pdf", mean(parT), mean(com1n), 250, col_par_box, col_comm_box)
values <- matrix(c(
16/30*100, 21/30*100, #receivers
14/30*100, 9/30*100), #senders 
#0, 0),
nrow = 2,ncol = 2, byrow = TRUE)
script_bars_golomb(values, "gol11_per_BP.pdf")


#------- 250-queens
seq=c(0.220,0.460,0.460,0.330,0.270,0.300,0.270,0.180,0.290,0.410,0.280,0.270,0.310,0.230,0.270,0.220,0.250,0.260,0.370,0.260,0.220,0.370,0.320,0.260,0.330,0.220,0.380,0.210,0.340,0.260)
par=c(0.180,0.220,0.200,0.200,0.180,0.200,0.150,0.230,0.120,0.250,0.190,0.200,0.190,0.210,0.210,0.180,0.140,0.210,0.140,0.180,0.240,0.170,0.150,0.220,0.200,0.240,0.160,0.180,0.130,0.200)
pc11=c(0.090,0.090,0.130,0.100,0.090,0.080,0.120,0.090,0.080,0.090,0.070,0.110,0.060,0.080,0.100,0.060,0.100,0.070,0.110,0.080,0.100,0.100,0.060,0.140,0.120,0.110,0.090,0.090,0.110,0.060)
pc1n=c(0.060,0.090,0.090,0.120,0.130,0.110,0.130,0.080,0.110,0.070,0.100,0.100,0.120,0.090,0.110,0.120,0.100,0.100,0.100,0.110,0.100,0.080,0.060,0.060,0.100,0.110,0.120,0.140,0.110,0.080)
s11=c(0.190,0.100,0.230,0.230,0.230,0.240,0.130,0.170,0.110,0.160,0.180,0.220,0.160,0.180,0.180,0.190,0.160,0.220,0.170,0.140,0.230,0.180,0.210,0.160,0.090,0.190,0.200,0.210,0.220,0.170)
s1n=c(0.200,0.110,0.160,0.110,0.140,0.160,0.160,0.160,0.160,0.150,0.180,0.200,0.230,0.180,0.140,0.170,0.170,0.170,0.170,0.170,0.160,0.180,0.210,0.220,0.100,0.190,0.160,0.150,0.170,0.230)
s1n2=c(0.190,0.180,0.160,0.120,0.080,0.190,0.170,0.170,0.150,0.200,0.150,0.170,0.190,0.110,0.100,0.130,0.160,0.180,0.190,0.080,0.170,0.190,0.160,0.120,0.130,0.110,0.220,0.160,0.120,0.170)
s1n4=c(0.220,0.190,0.120,0.150,0.170,0.110,0.140,0.190,0.200,0.120,0.150,0.170,0.180,0.120,0.130,0.090,0.100,0.060,0.130,0.140,0.130,0.180,0.110,0.130,0.160,0.130,0.150,0.200,0.170,0.130)
data<-data.frame(seq, par, pc11, pc1n, s11, s1n, s1n2, s1n4)
script_box_nqueens(data, "nq250_BP.pdf", mean(seq), mean(par), mean(pc11), 0, 0.470, col_seq_box, col_par_box, col_comm_box, "white")
values <- matrix(c(
23/30*100, 21/30*100, 20/30*100, 27/30*100, 28/30*100, 29/30*100, #receivers
7/30*100, 9/30*100, 8/30*100, 0, 2/30*100, 1/30*100, #senders 
0, 0, 2/30*100, 3/30*100, 0, 0),
nrow = 3,ncol = 6, byrow = TRUE)
script_bars_nqueens(values, "nq250_per_BP.pdf")



#----- 500-queens
seq=c(0.460,0.430,0.260,0.320,0.320,0.380,0.340,0.310,0.360,0.310,0.360,0.300,0.380,0.420,0.350,0.280,0.220,0.400,0.240,0.530,0.290,0.280,0.400,0.290,0.290,0.420,0.560,0.300,0.490,0.200)
par=c(0.290,0.240,0.250,0.200,0.220,0.200,0.210,0.190,0.210,0.230,0.260,0.300,0.250,0.240,0.200,0.250,0.290,0.290,0.310,0.280,0.180,0.250,0.230,0.240,0.170,0.220,0.240,0.240,0.250,0.270)
pc11=c(0.120,0.120,0.170,0.100,0.130,0.090,0.140,0.130,0.110,0.180,0.150,0.170,0.090,0.120,0.170,0.180,0.170,0.150,0.160,0.170,0.160,0.150,0.180,0.170,0.130,0.150,0.140,0.160,0.140,0.180)
pc1n=c(0.160,0.170,0.120,0.170,0.150,0.170,0.130,0.200,0.150,0.110,0.180,0.180,0.140,0.170,0.180,0.110,0.090,0.150,0.120,0.170,0.140,0.170,0.120,0.130,0.140,0.150,0.210,0.130,0.120,0.200)
s11=c(0.240,0.280,0.290,0.260,0.300,0.210,0.250,0.250,0.310,0.260,0.310,0.280,0.260,0.270,0.270,0.230,0.200,0.230,0.370,0.250,0.210,0.180,0.270,0.330,0.200,0.160,0.260,0.210,0.210,0.200)
s1n=c(0.240,0.230,0.190,0.200,0.100,0.200,0.110,0.190,0.290,0.250,0.190,0.240,0.180,0.210,0.170,0.190,0.180,0.200,0.210,0.160,0.220,0.220,0.230,0.190,0.220,0.160,0.170,0.270,0.210,0.190)
s1n2=c(0.120,0.070,0.170,0.160,0.220,0.190,0.230,0.190,0.220,0.240,0.150,0.190,0.270,0.190,0.190,0.180,0.180,0.130,0.140,0.150,0.280,0.230,0.290,0.100,0.150,0.210,0.220,0.270,0.250,0.190)
s1n4=c(0.180,0.250,0.110,0.260,0.140,0.150,0.110,0.200,0.290,0.150,0.260,0.240,0.270,0.290,0.160,0.160,0.170,0.120,0.140,0.210,0.220,0.180,0.120,0.110,0.120,0.230,0.150,0.210,0.120,0.190)
data<-data.frame(seq, par, pc11, pc1n, s11, s1n, s1n2, s1n4)
script_box_nqueens(data, "nq500_BP.pdf", mean(seq), mean(par), mean(pc11), 0, 0.560, col_seq_box, col_par_box, col_comm_box, "white")
values <- matrix(c(
20/30*100, 19/30*100, 20/30*100, 28/30*100, 30/30*100, 27/30*100, #receivers
10/30*100, 11/30*100, 7/30*100, 1/30*100, 0, 3/30*100, #senders 
0, 0, 3/30*100, 1/30*100, 0, 0),
nrow = 3,ncol = 6, byrow = TRUE)
script_bars_nqueens(values, "nq500_per_BP.pdf")



#----- 1000-queens
seq=c(0.520,0.490,0.180,0.420,0.260,0.210,0.380,0.410,0.450,0.180,0.210,0.280,0.270,0.220,0.240,0.440,0.520,0.140,0.360,0.620,0.270,0.470,0.350,0.460,0.360,0.560,0.230,0.380,0.370,0.320)
par=c(0.320,0.250,0.300,0.290,0.260,0.270,0.300,0.320,0.350,0.370,0.330,0.270,0.370,0.280,0.300,0.280,0.310,0.340,0.220,0.370,0.260,0.310,0.310,0.260,0.290,0.280,0.290,0.320,0.270,0.290)
pc11=c(0.240,0.230,0.260,0.180,0.210,0.260,0.230,0.270,0.220,0.220,0.240,0.190,0.270,0.140,0.160,0.280,0.290,0.140,0.250,0.220,0.280,0.190,0.200,0.250,0.270,0.220,0.220,0.170,0.180,0.210)
pc1n=c(0.290,0.280,0.140,0.150,0.150,0.180,0.220,0.160,0.140,0.280,0.230,0.270,0.230,0.280,0.280,0.100,0.220,0.210,0.190,0.180,0.270,0.240,0.170,0.220,0.200,0.160,0.260,0.140,0.280,0.180)
s11=c(0.280,0.250,0.400,0.320,0.230,0.160,0.280,0.280,0.270,0.300,0.200,0.320,0.220,0.180,0.240,0.320,0.280,0.270,0.330,0.330,0.230,0.240,0.230,0.160,0.310,0.270,0.260,0.250,0.240,0.170)
s1n=c(0.200,0.240,0.310,0.310,0.230,0.220,0.230,0.260,0.200,0.280,0.320,0.300,0.310,0.240,0.270,0.210,0.300,0.110,0.200,0.400,0.310,0.300,0.300,0.260,0.230,0.290,0.330,0.290,0.240,0.240)
s1n2=c(0.270,0.230,0.210,0.210,0.200,0.230,0.280,0.210,0.300,0.280,0.340,0.150,0.260,0.310,0.250,0.220,0.240,0.230,0.280,0.350,0.230,0.250,0.230,0.320,0.200,0.260,0.300,0.220,0.260,0.300)
s1n4=c(0.210,0.220,0.120,0.210,0.150,0.190,0.280,0.160,0.280,0.280,0.280,0.260,0.280,0.240,0.270,0.290,0.120,0.260,0.310,0.250,0.220,0.240,0.300,0.250,0.240,0.230,0.110,0.240,0.320,0.250)
data<-data.frame(seq, par, pc11, pc1n, s11, s1n, s1n2, s1n4)
script_box_nqueens(data, "nq1000_BP.pdf", mean(seq), mean(par), mean(pc1n), 0, 0.620, col_seq_box, col_par_box, "white", col_comm_box)
values <- matrix(c(
17/30*100, 20/30*100, 19/30*100, 28/30*100, 27/30*100, 27/30*100, #receivers
13/30*100, 10/30*100, 9/30*100, 2/30*100, 3/30*100, 3/30*100, #senders 
0, 0, 2/30*100, 0, 0, 0),
nrow = 3,ncol = 6, byrow = TRUE)
script_bars_nqueens(values, "nq1000_per_BP.pdf")


#----- 3000-queens
seq=c(1.380,1.360,1.470,1.780,1.360,1.440,1.630,1.360,1.490,1.460,1.430,1.460,1.450,1.630,1.510,1.720,1.600,1.490,1.440,1.640,1.380,1.500,1.310,1.430,1.650,1.320,1.780,1.290,1.690,1.500)
par=c(1.370,1.240,1.290,1.400,1.320,1.300,1.310,1.290,1.380,1.300,1.300,1.320,1.350,1.390,1.310,1.340,1.300,1.360,1.270,1.230,1.280,1.370,1.300,1.350,1.320,1.330,1.260,1.460,1.460,1.310)
pc11=c(1.340,1.330,1.230,1.180,1.300,1.230,1.360,1.360,0.960,1.290,1.360,1.310,1.200,1.270,1.140,1.260,1.330,1.340,1.140,1.210,1.300,1.220,1.110,1.280,1.350,1.340,1.260,1.240,1.260,1.230)
pc1n=c(1.140,0.950,0.800,0.940,1.150,0.890,1.320,1.180,1.110,0.860,0.900,0.850,0.950,0.920,1.190,1.190,1.140,0.890,1.150,0.850,1.140,0.890,0.920,1.220,1.130,1.170,0.880,0.920,1.070,0.900)
s11=c(1.250,1.190,1.290,1.280,1.200,1.160,1.260,1.230,1.090,1.270,1.260,1.340,1.300,1.120,1.200,1.160,1.280,1.250,1.190,0.940,1.330,1.210,1.280,1.190,1.220,1.160,1.270,1.280,1.010,1.220)
s1n=c(1.290,1.390,1.300,1.250,1.260,1.350,1.350,1.180,1.210,1.270,1.170,1.320,1.110,1.140,1.280,1.300,1.320,1.310,1.240,1.250,1.270,1.090,1.080,1.270,1.300,1.220,1.320,1.320,1.300,1.300)
s1n2=c(1.330,1.090,1.060,1.270,1.330,1.140,1.160,1.150,1.230,1.130,1.260,1.150,1.410,1.360,1.290,1.170,1.310,1.220,1.270,1.130,1.160,1.030,1.310,1.270,1.300,1.320,1.310,1.080,1.130,1.110)
s1n4=c(1.250,1.130,1.230,1.090,1.190,1.270,1.140,1.030,1.240,1.260,1.180,1.010,1.220,1.080,1.320,1.290,1.160,1.160,1.200,1.270,1.280,1.240,1.160,1.190,1.230,1.210,1.230,1.230,1.110,1.310)
data<-data.frame(seq, par, pc11, pc1n, s11, s1n, s1n2, s1n4)
script_box_nqueens(data, "nq3000_BP.pdf", mean(seq), mean(par), mean(pc1n), 0.7, 1.780, col_seq_box, col_par_box, "white", col_comm_box)
values <- matrix(c(
14/30*100, 18/30*100, 25/30*100, 28/30*100, 30/30*100, 28/30*100, #receivers
16/30*100, 12/30*100, 4/30*100, 1/30*100, 0, 2/30*100, #senders 
0, 0, 1/30*100, 1/30*100, 0, 0),
nrow = 3,ncol = 6, byrow = TRUE)
script_bars_nqueens(values, "nq3000_per_BP.pdf")


#--- 6000-queens
seq=c(4.870,4.890,4.550,4.710,4.690,4.420,4.560,4.850,4.720,4.850,4.350,4.600,4.420,4.730,4.760,4.950,5.090,4.750,4.520,4.730,4.990,4.560,4.780,4.750,4.560,4.470,4.660,4.860,4.960,4.660)
par=c(4.530,4.610,4.660,4.610,4.470,4.620,4.630,4.580,4.590,4.790,4.410,4.760,4.470,4.530,4.740,4.370,4.580,4.530,4.790,4.500,4.550,4.610,4.590,4.270,4.470,4.400,4.630,4.460,4.690,4.560)
pc11=c(4.800,4.640,4.820,4.880,4.860,5.150,4.900,5.090,4.850,4.820,4.920,4.830,4.820,4.890,4.650,4.740,4.840,4.630,4.790,4.840,4.810,4.570,4.750,4.780,4.870,4.970,4.950,4.880,4.790,4.870)
pc1n=c(4.320,3.440,3.050,4.360,4.730,3.100,4.910,3.510,3.560,4.830,4.770,4.910,4.300,4.920,3.360,3.360,4.780,3.670,5.090,4.690,4.880,3.310,3.100,4.850,4.930,4.920,3.110,4.890,4.770,5.010)
s11=c(4.550,4.430,4.180,4.460,4.390,4.310,4.370,4.180,4.270,4.580,4.470,4.190,4.410,4.360,4.550,4.280,4.400,4.330,4.360,4.410,4.400,4.550,4.490,4.360,4.300,4.420,4.380,4.480,4.220,4.480)
s1n=c(4.320,4.350,4.280,4.390,4.420,4.520,4.330,4.520,4.310,4.370,4.600,4.410,4.250,4.420,4.460,4.360,4.070,4.320,4.330,4.440,4.500,4.350,4.350,4.480,4.480,4.490,4.490,4.620,4.170,4.350)
s1n2=c(4.200,4.250,4.190,4.440,4.350,4.440,4.460,4.240,4.250,4.680,4.510,4.210,4.400,4.370,4.360,4.400,4.260,4.300,4.490,4.350,4.180,4.600,4.370,4.430,4.280,4.290,4.140,4.450,4.250,4.370)
s1n4=c(4.020,4.360,4.450,4.250,4.270,4.470,4.310,4.270,4.380,4.380,4.260,4.430,4.480,4.390,4.470,4.410,4.400,4.480,4.140,4.210,4.140,4.180,4.300,4.270,4.380,4.520,4.330,4.250,4.260,4.440)
data<-data.frame(seq, par, pc11, pc1n, s11, s1n, s1n2, s1n4)
script_box_nqueens(data, "nq6000_BP.pdf", mean(seq), mean(par), mean(pc1n), 3, 5.1, col_seq_box, col_par_box, "white", col_comm_box)
values <- matrix(c(
11/30*100, 17/30*100, 23/30*100, 29/30*100, 29/30*100, 26/30*100, #receivers
19/30*100, 13/30*100, 7/30*100, 1/30*100, 1/30*100, 4/30*100, #senders 
rep.int(0,6)),
nrow = 3,ncol = 6, byrow = TRUE)
script_bars_nqueens(values, "nq6000_per_BP.pdf")
