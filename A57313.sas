 /*-------------------------------------------------------------------*/
 /*            SAS System for Regression, Third Edition               */
 /*          by Rudi Freund and Ray Littell                           */
 /*       Copyright(c) 2000 by SAS Institute Inc., Cary, NC, USA      */
 /*                   SAS Publications order # 57313                  */
 /*                        ISBN 1-58025-725-9                         */
 /*-------------------------------------------------------------------*/
 /*                                                                   */
 /* This material is provided "as is" by SAS Institute Inc.  There    */
 /* are no warranties, expressed or implied, as to merchantability or */
 /* fitness for a particular purpose regarding the materials or code  */
 /* contained herein. The Institute is not responsible for errors     */
 /* in this material as it now exists or will exist, nor does the     */
 /* Institute provide technical support for it.                       */
 /*                                                                   */
 /*-------------------------------------------------------------------*/
 /* Questions or problem reports concerning this material may be      */
 /* addressed to the author:                                          */
 /*                                                                   */
 /* SAS Institute Inc.                                                */
 /* Books by Users                                                    */
 /* Attn: Rudi Freund and Ray Littell                                 */
 /* SAS Campus Drive                                                  */
 /* Cary, NC   27513                                                  */
 /*                                                                   */
 /*                                                                   */
 /* If you prefer, you can send email to:  sasbbu@sas.com             */
 /* Use this for subject field:                                       */
 /*     Comments for Rudi Freund and Ray Littell                      */
 /*                                                                   */
 /*-------------------------------------------------------------------*/
 /* Date Last Updated:  06OCT00                                       */
 /*-------------------------------------------------------------------*/

DATA AIR; ** Data in Output 2.1***;
INPUT UTL 1-4 .2 ASL 5-8 .3 SPA 9-12 .4 AVS 13-15 .2
      ALF 16-18 .3 CPM 19-22 .3 CSM 23-26 .3;
TYPE = (ASL >= 1200);
CARDS;
 7871790137546859122581333
 9502515354648348822751111
 7911350192044241223410965
13303607339050139723570935
 8481963138147058223631375
 9381123148142446624041119
10801576136148753524251297
 8361912314846543427111177
 8431584160744743927431203
 8832377328747341727801159
 8421495359744440028331133
 9620840139042541028461166
 8711392114844447829061390
 8440871118643849529541461
 8910961123641647629621411
 6841008115041353929711600
 9000845139042540930441245
10201692300746538130961179
 8290877106043748631401528
 8091528352243228733060949
 9471408134547050433061662
 7701236122142845533111507
 9570863139042640533131343
 8351031136542242233921431
 7271416114543847634371636
 7520975202539642634621476
 9562189327946234935271230
 7940949148840039436891452
 7551164127042245237601700
10602780128246542538561637
10801518135644336239591432
 6310823094340654140242176
 5650821129040137847371791

DATA NOINT; ***DATA in Output 2.11***;
INPUT X Y @@;
CARDS;
1 -.35 2 2.79 3 1.81 4 2 5 3.88 6 6.79 7 7.67 8 6.79

DATA BOQ; *** data in Output 3.1***;
INPUT id $ OCCUP CHECKIN HOURS COMMON WINGS CAP ROOMS MANH;
  DROP ID;
CARDS;
A 2 4 4 1.26 1 6 6 180.23
B 3 1.58 40 1.25 1 5 5 182.61
C 16.6 23.78 40 1 1 13 13 164.38
D 7 2.37 168 1 1 7 8 284.55
E 5.3 1.67 42.5 7.79 3 25 25 199.92
F 16.5 8.25 168 1.12 2 19 19 267.38
G 25.89 3 40 0 3 36 36 999.09
H 44.42 159.75 168 .6 18 48 48 1103.24
I 39.63 50.86 40 27.37 10 77 77 944.21
J 31.92 40.08 168 5.52 6 47 47 931.84
K 97.33 255.08 168 19 6 165 130 2268.06
L 56.63 373.42 168 6.03 4 36 37 1489.5
M 96.67 206.67 168 17.86 14 120 120 1891.7
N 54.58 207.08 168 7.77 6 66 66 1387.82
O 113.88 981 168 24.48 6 166 179 3559.92
P 149.58 233.83 168 31.07 14 185 202 3115.29
Q 134.32 145.82 168 25.99 12 192 192 2227.76
R 188.74 937 168 45.44 26 237 237 4804.24
S 110.24 410 168 20.05 12 115 115 2628.32
T 96.83 677.33 168 20.31 10 302 210 1880.84
U 102.33 288.83 168 21.01 14 131 131 3036.63
V 274.92 695.25 168 46.63 58 363 363 5539.98
W 811.08 714.33 168 22.76 17 242 242 3534.49
X 384.5 1473.66 168 7.36 24 540 453 8266.77
Y 95 368 168 30.26 9 292 196 1845.89

DATA IRRI;*** data inOutput 3.10***;
INPUT  PERC RATIO INFT LOST ADVT ;
CARDS;
16.8 3.64 .343 21.27 .6991
25.76 1.67 .343 21.27 .564
14.73 2.34 .343 21.27 .750
12.71 3.78 .387 25.45 .680
14.56 3.73 .397 25.45 .701
13.16 2.71 .397 25.45 .747
9.06 4.97 .397 26.53 .772
14.46 3.17 .397 26.53 .436
17.16 2.32 .397 26.53 .596
9.52 6.86 .397 26.53 .840
13.72 3.69 .387 26.53 .600
12.96 3.35 .397 26.53 .760
19.04 2.39 .427 29.1 .600
18.03 2.82 .427 29.1 .730
34.83 .97 .427 29.1 .698
30.26 1.27 .427 29.1 .880
37.75 .77 .427 29.1 .582
26.26 1.87 .309 20.90 .836
30.60 1.27 .309 20.90 .685
33.75 1.15 .309 20.90 .519
25.75 2.25 .309 20.90 .841
29.05 1.51 .309 20.90 .800

DATA DIAMONDS; ***data in Output 3.15. 
	data step creates square of carats
	ignore color and clar***;
INPUT CARATS COLOR $  CLAR $  PRICE ;
 PRICE = PRICE / 1000;
CSQ = CARATS*CARATS;
CARDS;
1.9 H A 28473
1.35 F D 15297
1.46 G C  16596
1.03 G C 11372
1.66 E F 16321
.91 G F 4816
.68 G F 2324
1.92 D B 100411
1.25 D F 19757
1.36 E E 17432
.73 G E 3719
1.41 H A 19176
1.29 E A 36161
.5 H D 1918
.77 G E 3951
.79 G E 4131
.6 G E 2499
.63 G F 2324
.79 G E 4184
.53 I B 1976
.52 G E 2055
.54 G E 2134
1.02 D C 27264
1.02 G C 12684
1.06 F D 13181
.63 H D 2747
.52 I B 1976
1.23 E D 17958
1.24 E D 18095
.75 E E 5055

DATA CONSUME; *** dta in Output 3.20***;
INPUT CURR 1-3 .1 (DDEP PRICES GNP)(4.1) WAGES 3.2 (INCOME POP CONS)(4.1)
YR 2. QTR 1.;
CARDS;
251 920 8993180154270015401739511
253 929 9033258157276215471743512
257 939 9103328158280515541774513
260 959 9223369161285315611809514
263 972 9163395163286315671817521
265 980 9243391163286615731855522
268 990 9303456167291715811893523
272 999 9303577170301215881930524
2751001 9263642173306015941950531
2771007 9333675174307916001967532
2781008 9393658176306416071976533
2781010 9363608177298516151977534
2771015 9363607177299316212003541
2761018 9383604178299516282020542
2751032 9353647178302916362047543
2741046 9323734181310916432075544
2751060 9323862182320516502103551
2761067 9323944184328716572130552
2771072 9364025188334516652154553
2781073 9354088190340916732203554
2791077 9354106192343016802234561
2791080 9474162195348316872259562
2801080 9544206198351916952291563
2811084 9624295202359317032326564
2821086 9694369203364517102367571
2821087 9804399204366017172384572
2831086 9874463206369517252433573
2831079 9914415208364017332452574
282107810054347208357917402467581
283109310084383210359317462506582
284110610084514212370217542545583
285112210084644217383017622570584
287113310084740219392417692612591
289114110154869221404917762648592
290114610204840219399717842690593
289113610234905224402817922717594
290112310245030226414217982751601
290111410315047226417118052801602
290111910335042227415218132806603
290112010395033229411718212839604
289112710395036229412218282865611
289113710405149232422618352889612
291114310465242232430718432919613
294115510455377237443418512965614
297116010505478238448818582998621
300116210535572239456018643032622
302115810615644239460418723072623
304116410585720243465618793120624
309117610625774244470618853158631
313118510665842246477418923188632
318119510715947247485719003238633
323120610766058251493919073259634
328121110776177251504019133336641
333121810806280253513719193381642
338123610846389256524219263464643
341124910886451258530419333499644
346125410906627259544919383544651
349126311016754261555319443635652
355127711026900263566519513698653
361129811107084266582819573785654
367131911207259268604019623865661
373133211297367271615119673933662
378132311417488274626719733998663
382132011477621277637319794026664
387133011507663279638619844109671
391135211607751282645119894162672
395139111717912285656919954224673
401141011828161291670920014274674
408142611958353296688120054412681
416145112098587300705420104485682
424148312228764304722520164591683
431150312378925311737320214644684
441152712569087313751320254736691
448154212769248317765720304822692
452153712939428324780620354900693
460157713139522329786520414990694

DATA BOQ; *** data used for Chapter 4, omitting observation 23***;

INPUT id $ OCCUP CHECKIN HOURS COMMON WINGS CAP ROOMS MANH;
*** delete 23***;
IF ID = 'W' THEN DELETE;
CARDS;
A 2 4 4 1.26 1 6 6 180.23
B 3 1.58 40 1.25 1 5 5 182.61
C 16.6 23.78 40 1 1 13 13 164.38
D 7 2.37 168 1 1 7 8 284.55
E 5.3 1.67 42.5 7.79 3 25 25 199.92
F 16.5 8.25 168 1.12 2 19 19 267.38
G 25.89 3 40 0 3 36 36 999.09
H 44.42 159.75 168 .6 18 48 48 1103.24
I 39.63 50.86 40 27.37 10 77 77 944.21
J 31.92 40.08 168 5.52 6 47 47 931.84
K 97.33 255.08 168 19 6 165 130 2268.06
L 56.63 373.42 168 6.03 4 36 37 1489.5
M 96.67 206.67 168 17.86 14 120 120 1891.7
N 54.58 207.08 168 7.77 6 66 66 1387.82
O 113.88 981 168 24.48 6 166 179 3559.92
P 149.58 233.83 168 31.07 14 185 202 3115.29
Q 134.32 145.82 168 25.99 12 192 192 2227.76
R 188.74 937 168 45.44 26 237 237 4804.24
S 110.24 410 168 20.05 12 115 115 2628.32
T 96.83 677.33 168 20.31 10 302 210 1880.84
U 102.33 288.83 168 21.01 14 131 131 3036.63
V 274.92 695.25 168 46.63 58 363 363 5539.98
W 811.08 714.33 168 22.76 17 242 242 3534.49
X 384.5 1473.66 168 7.36 24 540 453 8266.77
Y 95 368 168 30.26 9 292 196 1845.89


data fish; *** data in Output 5.1***;
input AGE    TEMP    LENGTH;
cards;
 14     25       620
 21     25       910
 28     25      1315
 35     25      1635
 42     25      2120
 49     25      2300
 56     25      2600
 63     25      2925
 70     25      3110
 77     25      3315
 84     25      3535
 91     25      3710
 98     25      3935
105     25      4145
112     25      4465
119     25      4510
126     25      4530
133     25      4545
140     25      4570
147     25      4605
154     25      4600
 14     27       625
 21     27       820
 28     27      1215
 35     27      1515
 42     27      2110
 49     27      2320
 56     27      2805
 63     27      2940
 70     27      3255
 77     27      3620
 84     27      4015
 91     27      4235
 98     27      4315
105     27      4435
112     27      4495
119     27      4475
126     27      4535
133     27      4520
140     27      4600
147     27      4600
154     27      4600
 14     29       590
 21     29       910
 28     29      1305
 35     29      1730
 42     29      2140
 49     29      2725
 56     29      2890
 63     29      3685
 70     29      3920
 77     29      4325
 84     29      4410
 91     29      4485
 98     29      4515
105     29      4480
112     29      4520
119     29      4545
126     29      4525
133     29      4560
140     29      4565
147     29      4626
154     29      4566
 14     31       590
 21     31       910
 28     31      1205
 35     31      1605
 42     31      1915
 49     31      2035
 56     31      2140
 63     31      2520
 70     31      2710
 77     31      2870
 84     31      3020
 91     31      3025
 98     31      3030
105     31      3025
112     31      3040
119     31      3177
126     31      3180
133     31      3180
140     31      3257
147     31      3166
154     31      3214
data peanuts; *** data in Output 5.9***;
imput ENGTH    FREQ    SPACE     TIME    UNSHL    DAMG ;
cards;
 1.00      175     0.86    16.00     284     3.55
 1.25      130     0.63     9.25     149     8.23
 1.25      130     1.09    18.00     240     3.15
 1.25      220     0.63     4.75     155     5.26
 1.25      220     1.09    15.50     197     4.23
 1.75      100     0.86    13.00     154     3.54
 1.75      175     0.48     3.50     100     8.16
 1.75      175     0.86     7.00     176     3.27
 1.75      175     0.86     6.25     177     4.38
 1.75      175     0.86     6.50     212     3.26
 1.75      175     0.86     6.50     200     3.57
 1.75      175     0.86     6.50     160     4.65
 1.75      175     0.86     6.50     176     4.02
 1.75      175     1.23    12.00     195     3.80
 1.75      250     0.86     5.00     126     4.05
 2.25      130     0.63     4.00      84     9.02
 2.25      130     1.09     7.00     145     3.00
 2.25      220     0.63     2.25      97     7.41
 2.25      220     1.09     5.75     168     3.78
 2.50      175     0.86     3.50     168     3.72
data barbexp; **barbados exports***; input export @@; year = _n_+1966;n=_n_; export = export/1000;
cards;
53518 59649 57357 62106 53182 63103 83700 125555 178218 137638
151055 186450 232684 337291 297004 372627 510165 583668 496471
420614 214511 248029 250350 244820 241420 271384 272242

DATA PINES ;*** data in Output 6.1***;
INPUT  DBH    HEIGHT    AGE    GRAV     WEIGHT;
CARDS;
                     5.7      34      10     0.409      174
                     8.1      68      17     0.501      745
                     8.3      70      17     0.445      814
                     7.0      54      17     0.442      408
                     6.2      37      12     0.353      226
                    11.4      79      27     0.429     1675
                    11.6      70      26     0.497     1491
                     4.5      37      12     0.380      121
                     3.5      32      15     0.420       58
                     6.2      45      15     0.449      278
                     5.7      48      20     0.471      220
                     6.0      57      20     0.447      342
                     5.6      40      20     0.439      209
                     4.0      44      27     0.394       84
                     6.7      52      21     0.422      313
                     4.0      38      27     0.496       60
                    12.1      74      27     0.476     1692
                     4.5      37      12     0.382       74
                     8.6      60      23     0.502      515
                     9.3      63      18     0.458      766
                     6.5      57      18     0.474      345
                     5.6      46      12     0.413      210
                     4.3      41      12     0.382      100
                     4.5      42      12     0.457      122
                     7.7      64      19     0.478      539
                     8.8      70      22     0.496      815
                     5.0      53      23     0.485      194
                     5.4      61      23     0.488      280
                     6.0      56      23     0.435      296
                     7.4      52      14     0.474      462
                     5.6      48      19     0.441      200
                     5.5      50      19     0.506      229
                     4.3      50      19     0.410      125
                     4.2      31      10     0.412       84
                     3.7      27      10     0.418       70
                     6.1      39      10     0.470      224
                     3.9      35      19     0.426       99
                     5.2      48      13     0.436      200
                     5.6      47      13     0.472      214
                     7.8      69      13     0.470      712
                     6.1      49      13     0.464      297
                     6.1      44      13     0.450      238
                     4.0      34      13     0.424       89
                     4.0      38      13     0.407       76
                     8.0      61      13     0.508      614
                     5.2      47      13     0.432      194
                     3.7      33      13     0.389       66

DATA TEMP29;*** data for section 6.3, selects 
DATA FOR TEMP = 29 FOR SPLINE MODEL ***;
INPUT AGE LENGTH @@ ;
IF AGE > 28 THEN AGE=AGE+1;
IF 43<= _N_ <= 63 THEN OUTPUT;
CARDS;
14 620 21 910 28 1315 34 1635 41 2120 48 2300 55 2600 62 2925
69 3110 76 3315 83 3535 90 3710 97 3935 104 4145 111 4465 118 4510
125 4530 132 4545 139 4570 146 4605 153 4600
14 625 21 820 28 1215 34 1515 41 2110 48 2320 55 2805 62 2940
69 3255 76 3620 83 4015 90 4235 97 4315 104 4435 111 4495 118 4475
125 4535 132 4520 139 4600 146 4600 153 4600
14 590 21 910 28 1305 34 1730 41 2140 48 2725 55 2890 62 3685
69 3920 76 4325 83 4410 90 4485 97 4515 104 4480  111 4520 118 4545
125 4525 132 4560 139 4565 146 4626 153 4566
14 590 21 910 28 1205 34 1605 41 1915 48 2035 55 2140 62 2520 69 2710
76 2870 83 3020 90 3025 97 3030 104 3025 111 3040 118 3177 125 3180
132 3180 139 3257 146 3166 153 3214
DATA AIR; ***data fior section 6.4. Adds indicator variable***;
INPUT UTL 1-4 .2 ASL 5-8 .3 SPA 9-12 .4 AVS 13-15 .2
      ALF 16-18 .3 CPM 19-22 .3 CSM 23-26 .3;
TYPE=0; IF ASL>1.20 THEN TYPE=1;
CARDS;
 7871790137546859122581333
 9502515354648348822751111
 7911350192044241223410965
13303607339050139723570935
 8481963138147058223631375
 9381123148142446624041119
10801576136148753524251297
 8361912314846543427111177
 8431584160744743927431203
 8832377328747341727801159
 8421495359744440028331133
 9620840139042541028461166
 8711392114844447829061390
 8440871118643849529541461
 8910961123641647629621411
 6841008115041353929711600
 9000845139042540930441245
10201692300746538130961179
 8290877106043748631401528
 8091528352243228733060949
 9471408134547050433061662
 7701236122142845533111507
 9570863139042640533131343
 8351031136542242233921431
 7271416114543847634371636
 7520975202539642634621476
 9562189327946234935271230
 7940949148840039436891452
 7551164127042245237601700
10602780128246542538561637
10801518135644336239591432
 6310823094340654140242176
 5650821129040137847371791
data dystro; *** data in Output 6.14***;
input id  CARRIER    AGE     P1      P2       P3      P4 ;
cards;
                       1       1        30    167     89.0     25.6    364
                       2       1        41    104     81.0     26.8    245
                       3       1        22     30    108.0      8.8    284
                       4       1        22     44    104.0     17.4    172
                       5       1        20     65     87.0     23.8    198
                       6       1        42    440    107.0     20.2    239
                       7       1        59     58     88.2     11.0    259
                       8       1        35    129     93.1     18.3    188
                       9       1        36    104     87.5     16.7    256
                      10       1        35    122     88.5     21.6    263
                      11       1        29    265     83.5     16.1    136
                      12       1        27    285     79.5     36.4    245
                      13       1        27     25     91.0     49.1    209
                      14       1        28    124     92.0     32.2    298
                      15       1        29     53     76.0     14.0    174
                      16       1        30     46     71.0     16.9    197
                      17       1        30     40     85.5     12.7    201
                      18       1        30     41     90.0      9.7    342
                      19       1        31    657    104.0    110.0    358
                      20       1        32    465     86.5     63.7    412
                      21       1        32    485     83.5     73.0    382
                      22       1        37    168     82.5     23.3    261
                      23       1        38    286    109.5     31.9    260
                      24       1        39    388     91.0     41.6    204
                      25       1        39    148    105.2     18.8    221
                      26       1        34     73    105.5     17.0    285
                      27       1        35     36     92.8     22.0    308
                      28       1        58     19    100.5     10.9    196
                      29       1        58     34     98.5     19.9    299
                      30       1        38    113     97.0     18.8    216
                      31       1        30     57    105.0     12.9    155
                      32       1        42     78    118.0     15.5    212
                      33       0        22     52     83.5     10.9    176
                      34       0        32     20     77.0     11.0    200
                      35       0        36     29     86.5     13.2    171
                      36       0        22     30    104.0     22.6    230
                      37       0        23     40     83.0     15.2    205
                      38       0        30     24     78.8      9.6    151
                      39       0        27     15     87.0     13.5    232
                      40       0        30     22     91.0     17.5    198
                      41       0        25     42     65.5     13.3    216
                      42       0        26    130     80.3     17.1    211
                      43       0        26     48     85.2     22.7    160
                      44       0        27     31     86.5      6.9    162
                      45       0        26     47     53.0     14.6    131
                      46       0        27     36     56.0     18.2    105
                      47       0        27     24     57.5      5.6    130
                      48       0        31     34     92.7      7.9    140
                      49       0        31     38     96.0     12.6    158
                       50       0        35    40    104.6    16.1    209
                       51       0        28    59     88.0     9.9    128
                       52       0        28    75     81.0    10.1    177
                       53       0        28    72     66.3    16.4    156
                       54       0        27    42     77.0    15.3    163
                       55       0        27    30     80.2     8.1    100
                       56       0        28    24     87.0     3.5    132
                       57       0        24    26     84.5    20.7    145
                       58       0        23    65     75.0    19.9    187
                       59       0        27    34     86.3    11.8    120
                       60       0        25    37     73.3    13.0    254
                       61       0        34    73     57.4     7.4    107
                       62       0        34    87     76.3     6.0     87
                       63       0        25    35     71.0     8.8    186
                       64       0        20    31     61.5     9.9    172
                       65       0        20    62     81.0    10.2    181
                       66       0        31    48     79.0    16.8    182
                       67       0        31    40     82.5     6.4    151
                       68       0        26    55     85.5    10.9    216
                       69       0        26    32     73.8     8.6    147
                       70       0        21    26     79.3    16.4    123

DATA DECAY; ***data in Output 7.1***;
INPUT COUNT TIME;
CARDS;
383 0
373 14
348 43
328 61
324 69
317 74
307 86
302 90
298 92
280 117
268 133
261 138
244 165
200 224
197 236
185 253
180 265
120 404
112.5 434
*************************************
data in Output 7.7 is same as for Section 6.3***;
*************************************;