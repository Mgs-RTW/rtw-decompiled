.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 229

    move-object/from16 v0, p0

    .line 1239
    iget-object v3, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 1240
    iget-object v4, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 1241
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v5

    .line 1242
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    .line 1245
    array-length v7, v3

    const/16 v8, 0x21

    if-ne v7, v8, :cond_2

    .line 1249
    array-length v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    .line 1254
    aget-wide v9, p1, v7

    const/4 v11, 0x1

    .line 1255
    aget-wide v12, p1, v11

    const/4 v14, 0x2

    .line 1256
    aget-wide v15, p1, v14

    const/16 v17, 0x3

    .line 1257
    aget-wide v18, p1, v17

    const/4 v14, 0x4

    .line 1258
    aget-wide v20, p1, v14

    .line 1259
    aget-wide v22, p1, v8

    const/16 v24, 0x6

    .line 1260
    aget-wide v25, p1, v24

    const/16 v27, 0x7

    .line 1261
    aget-wide v28, p1, v27

    const/16 v7, 0x8

    .line 1262
    aget-wide v30, p1, v7

    const/16 v7, 0x9

    .line 1263
    aget-wide v32, p1, v7

    const/16 v8, 0xa

    .line 1264
    aget-wide v34, p1, v8

    const/16 v36, 0xb

    .line 1265
    aget-wide v37, p1, v36

    const/16 v8, 0xc

    .line 1266
    aget-wide v39, p1, v8

    const/16 v8, 0xd

    .line 1267
    aget-wide v41, p1, v8

    const/16 v43, 0xe

    .line 1268
    aget-wide v44, p1, v43

    const/16 v46, 0xf

    .line 1269
    aget-wide v46, p1, v46

    const/16 v1, 0x13

    :goto_0
    if-lt v1, v11, :cond_0

    .line 1273
    aget v48, v5, v1

    .line 1274
    aget v49, v6, v1

    add-int/lit8 v50, v48, 0x1

    .line 1277
    aget-wide v51, v3, v50

    sub-long v9, v9, v51

    add-int/lit8 v51, v48, 0x2

    .line 1278
    aget-wide v52, v3, v51

    sub-long v12, v12, v52

    add-int/lit8 v52, v48, 0x3

    .line 1279
    aget-wide v53, v3, v52

    move-wide/from16 v55, v12

    sub-long v11, v15, v53

    add-int/lit8 v13, v48, 0x4

    .line 1280
    aget-wide v15, v3, v13

    sub-long v7, v18, v15

    add-int/lit8 v15, v48, 0x5

    .line 1281
    aget-wide v18, v3, v15

    move/from16 v57, v15

    sub-long v14, v20, v18

    add-int/lit8 v16, v48, 0x6

    .line 1282
    aget-wide v18, v3, v16

    move-object/from16 v58, v5

    move-object/from16 v59, v6

    sub-long v5, v22, v18

    add-int/lit8 v18, v48, 0x7

    .line 1283
    aget-wide v20, v3, v18

    move-wide/from16 v60, v7

    sub-long v7, v25, v20

    add-int/lit8 v19, v48, 0x8

    .line 1284
    aget-wide v20, v3, v19

    move-wide/from16 v62, v5

    sub-long v5, v28, v20

    add-int/lit8 v20, v48, 0x9

    .line 1285
    aget-wide v21, v3, v20

    move-wide/from16 v64, v5

    sub-long v5, v30, v21

    add-int/lit8 v21, v48, 0xa

    .line 1286
    aget-wide v22, v3, v21

    move-wide/from16 v66, v5

    sub-long v5, v32, v22

    add-int/lit8 v22, v48, 0xb

    .line 1287
    aget-wide v25, v3, v22

    move-wide/from16 v68, v5

    sub-long v5, v34, v25

    add-int/lit8 v23, v48, 0xc

    .line 1288
    aget-wide v25, v3, v23

    move-wide/from16 v70, v5

    sub-long v5, v37, v25

    add-int/lit8 v25, v48, 0xd

    .line 1289
    aget-wide v28, v3, v25

    move/from16 v72, v13

    move-wide/from16 v73, v14

    sub-long v13, v39, v28

    add-int/lit8 v15, v48, 0xe

    .line 1290
    aget-wide v28, v3, v15

    add-int/lit8 v26, v49, 0x1

    aget-wide v30, v4, v26

    add-long v28, v28, v30

    move-wide/from16 v75, v13

    sub-long v13, v41, v28

    add-int/lit8 v28, v48, 0xf

    .line 1291
    aget-wide v30, v3, v28

    add-int/lit8 v29, v49, 0x2

    aget-wide v32, v4, v29

    add-long v30, v30, v32

    move-wide/from16 v77, v7

    sub-long v7, v44, v30

    add-int/lit8 v29, v48, 0x10

    .line 1292
    aget-wide v30, v3, v29

    move-object/from16 v79, v3

    int-to-long v2, v1

    add-long v30, v30, v2

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    move/from16 v80, v1

    sub-long v0, v46, v30

    move-wide/from16 v81, v2

    const/16 v2, 0x9

    .line 1295
    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v2, 0x30

    .line 1297
    invoke-static {v5, v6, v2, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v5, 0x23

    move-wide/from16 v83, v2

    move-wide/from16 v2, v77

    .line 1299
    invoke-static {v13, v14, v5, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long/2addr v2, v5

    const/16 v13, 0x34

    move-object/from16 v86, v4

    move-wide/from16 v87, v5

    move/from16 v85, v15

    move-wide/from16 v4, v68

    move-wide/from16 v14, v73

    .line 1301
    invoke-static {v4, v5, v13, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v6, 0x17

    move-wide/from16 v89, v4

    move-wide/from16 v4, v55

    .line 1303
    invoke-static {v4, v5, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const/16 v6, 0x1f

    move-wide/from16 v93, v0

    move-wide/from16 v91, v7

    move-wide/from16 v7, v62

    move-wide/from16 v0, v66

    .line 1305
    invoke-static {v7, v8, v6, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const/16 v8, 0x25

    move-wide/from16 v95, v0

    move-wide/from16 v97, v2

    move-wide/from16 v0, v60

    move-wide/from16 v2, v70

    .line 1307
    invoke-static {v0, v1, v8, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v8, 0x14

    move-wide/from16 v99, v2

    move-wide/from16 v101, v4

    move-wide/from16 v2, v64

    move-wide/from16 v4, v75

    .line 1309
    invoke-static {v2, v3, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v8, 0x1f

    .line 1312
    invoke-static {v2, v3, v8, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v8, 0x2c

    .line 1314
    invoke-static {v6, v7, v8, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    const/16 v8, 0x2f

    .line 1316
    invoke-static {v0, v1, v8, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v8, 0x2e

    move-wide/from16 v105, v0

    move-wide/from16 v103, v6

    move-wide/from16 v6, v97

    move-wide/from16 v0, v101

    .line 1318
    invoke-static {v0, v1, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v8, 0x13

    move-wide/from16 v107, v0

    move-wide/from16 v0, v93

    .line 1320
    invoke-static {v0, v1, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x2a

    move-wide/from16 v111, v2

    move-wide/from16 v109, v4

    move-wide/from16 v4, v87

    move-wide/from16 v2, v91

    .line 1322
    invoke-static {v4, v5, v8, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v8, 0x2c

    move-wide/from16 v115, v0

    move-wide/from16 v113, v2

    move-wide/from16 v2, v83

    move-wide/from16 v0, v95

    .line 1324
    invoke-static {v2, v3, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v8, 0x19

    move-wide/from16 v117, v0

    move-wide/from16 v119, v14

    move-wide/from16 v0, v89

    move-wide/from16 v13, v99

    .line 1326
    invoke-static {v0, v1, v8, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v13, v0

    const/16 v8, 0x10

    .line 1329
    invoke-static {v0, v1, v8, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v8, 0x22

    .line 1331
    invoke-static {v4, v5, v8, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v11, v4

    const/16 v8, 0x38

    .line 1333
    invoke-static {v2, v3, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    const/16 v8, 0x33

    move-wide/from16 v123, v2

    move-wide/from16 v121, v4

    move-wide/from16 v2, v115

    move-wide/from16 v4, v119

    .line 1335
    invoke-static {v2, v3, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    move-wide/from16 v125, v2

    move-wide/from16 v2, v111

    const/4 v8, 0x4

    .line 1337
    invoke-static {v2, v3, v8, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v13, v2

    const/16 v8, 0x35

    move-wide/from16 v129, v0

    move-wide/from16 v127, v13

    move-wide/from16 v13, v105

    move-wide/from16 v0, v109

    .line 1339
    invoke-static {v13, v14, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v0, v13

    const/16 v8, 0x2a

    move-wide/from16 v131, v0

    move-wide/from16 v133, v2

    move-wide/from16 v0, v103

    move-wide/from16 v2, v113

    .line 1341
    invoke-static {v0, v1, v8, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v8, 0x29

    move-wide/from16 v135, v2

    move-wide/from16 v137, v6

    move-wide/from16 v2, v107

    move-wide/from16 v6, v117

    .line 1343
    invoke-static {v2, v3, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v6, v2

    .line 1346
    invoke-static {v2, v3, v8, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v8, 0x9

    .line 1348
    invoke-static {v13, v14, v8, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v11, v13

    const/16 v8, 0x25

    .line 1350
    invoke-static {v0, v1, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x1f

    move-wide/from16 v139, v0

    move-wide/from16 v141, v4

    move-wide/from16 v4, v133

    move-wide/from16 v0, v137

    .line 1352
    invoke-static {v4, v5, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    move-wide/from16 v143, v4

    move-wide/from16 v4, v129

    const/16 v8, 0xc

    .line 1354
    invoke-static {v4, v5, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v8, 0x2f

    move-wide/from16 v145, v4

    move-wide/from16 v147, v6

    move-wide/from16 v4, v123

    move-wide/from16 v6, v127

    .line 1356
    invoke-static {v4, v5, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v8, 0x2c

    move-wide/from16 v149, v4

    move-wide/from16 v151, v6

    move-wide/from16 v4, v121

    move-wide/from16 v6, v131

    .line 1358
    invoke-static {v4, v5, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v8, 0x1e

    move-wide/from16 v153, v4

    move-wide/from16 v155, v6

    move-wide/from16 v4, v125

    move-wide/from16 v6, v135

    .line 1360
    invoke-static {v4, v5, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    .line 1364
    aget-wide v30, v79, v48

    sub-long v9, v9, v30

    .line 1365
    aget-wide v30, v79, v50

    sub-long v2, v2, v30

    .line 1366
    aget-wide v30, v79, v51

    sub-long v11, v11, v30

    .line 1367
    aget-wide v30, v79, v52

    sub-long v13, v13, v30

    .line 1368
    aget-wide v30, v79, v72

    move-wide/from16 v157, v13

    sub-long v13, v141, v30

    .line 1369
    aget-wide v30, v79, v57

    move-wide/from16 v159, v2

    sub-long v2, v139, v30

    .line 1370
    aget-wide v15, v79, v16

    sub-long/2addr v0, v15

    .line 1371
    aget-wide v15, v79, v18

    move-wide/from16 v161, v2

    sub-long v2, v143, v15

    .line 1372
    aget-wide v15, v79, v19

    move-wide/from16 v163, v2

    sub-long v2, v147, v15

    .line 1373
    aget-wide v15, v79, v20

    move-wide/from16 v165, v2

    sub-long v2, v145, v15

    .line 1374
    aget-wide v15, v79, v21

    move-wide/from16 v167, v2

    sub-long v2, v151, v15

    .line 1375
    aget-wide v15, v79, v22

    move-wide/from16 v169, v2

    sub-long v2, v149, v15

    .line 1376
    aget-wide v15, v79, v23

    move-wide/from16 v171, v13

    sub-long v13, v155, v15

    .line 1377
    aget-wide v15, v79, v25

    aget-wide v18, v86, v49

    add-long v15, v15, v18

    move-wide/from16 v173, v13

    sub-long v13, v153, v15

    .line 1378
    aget-wide v15, v79, v85

    aget-wide v18, v86, v26

    add-long v15, v15, v18

    sub-long/2addr v6, v15

    .line 1379
    aget-wide v15, v79, v28

    add-long v15, v15, v81

    sub-long/2addr v4, v15

    const/4 v8, 0x5

    .line 1382
    invoke-static {v4, v5, v8, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v8, 0x14

    .line 1384
    invoke-static {v2, v3, v8, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v8, 0x30

    .line 1386
    invoke-static {v13, v14, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v0, v13

    const/16 v8, 0x29

    move-wide/from16 v175, v2

    move-wide/from16 v177, v13

    move-wide/from16 v13, v167

    move-wide/from16 v2, v171

    .line 1388
    invoke-static {v13, v14, v8, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v2, v13

    const/16 v8, 0x2f

    move-wide/from16 v179, v13

    move-wide/from16 v13, v159

    .line 1390
    invoke-static {v13, v14, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v6, v13

    const/16 v8, 0x1c

    move-wide/from16 v183, v4

    move-wide/from16 v181, v6

    move-wide/from16 v6, v161

    move-wide/from16 v4, v165

    .line 1392
    invoke-static {v6, v7, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/16 v8, 0x10

    move-wide/from16 v187, v0

    move-wide/from16 v185, v4

    move-wide/from16 v4, v157

    move-wide/from16 v0, v169

    .line 1394
    invoke-static {v4, v5, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v8, 0x19

    move-wide/from16 v189, v0

    move-wide/from16 v191, v13

    move-wide/from16 v0, v163

    move-wide/from16 v13, v173

    .line 1396
    invoke-static {v0, v1, v8, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v13, v0

    const/16 v8, 0x21

    .line 1399
    invoke-static {v0, v1, v8, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/4 v8, 0x4

    .line 1401
    invoke-static {v6, v7, v8, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v11, v6

    const/16 v8, 0x33

    .line 1403
    invoke-static {v4, v5, v8, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide/from16 v195, v4

    move-wide/from16 v193, v6

    move-wide/from16 v6, v187

    move-wide/from16 v4, v191

    const/16 v8, 0xd

    .line 1405
    invoke-static {v4, v5, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v8, 0x22

    move-wide/from16 v197, v4

    move-wide/from16 v4, v183

    .line 1407
    invoke-static {v4, v5, v8, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v8, 0x29

    move-wide/from16 v201, v0

    move-wide/from16 v199, v13

    move-wide/from16 v13, v177

    move-wide/from16 v0, v181

    .line 1409
    invoke-static {v13, v14, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v0, v13

    const/16 v8, 0x3b

    move-wide/from16 v203, v0

    move-wide/from16 v205, v2

    move-wide/from16 v0, v175

    move-wide/from16 v2, v185

    .line 1411
    invoke-static {v0, v1, v8, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v8, 0x11

    move-wide/from16 v207, v2

    move-wide/from16 v209, v4

    move-wide/from16 v2, v179

    move-wide/from16 v4, v189

    .line 1413
    invoke-static {v2, v3, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v8, 0x26

    .line 1416
    invoke-static {v2, v3, v8, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v8, 0x13

    .line 1418
    invoke-static {v13, v14, v8, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    sub-long/2addr v11, v13

    const/16 v8, 0xa

    .line 1420
    invoke-static {v0, v1, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v8, 0x37

    move-wide/from16 v213, v0

    move-wide/from16 v211, v13

    move-wide/from16 v13, v205

    move-wide/from16 v0, v209

    .line 1422
    invoke-static {v0, v1, v8, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v13, v0

    const/16 v8, 0x31

    move-wide/from16 v215, v0

    move-wide/from16 v0, v201

    .line 1424
    invoke-static {v0, v1, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v8, 0x12

    move-wide/from16 v219, v2

    move-wide/from16 v217, v4

    move-wide/from16 v4, v195

    move-wide/from16 v2, v199

    .line 1426
    invoke-static {v4, v5, v8, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v8, 0x17

    move-wide/from16 v223, v0

    move-wide/from16 v221, v2

    move-wide/from16 v2, v193

    move-wide/from16 v0, v203

    .line 1428
    invoke-static {v2, v3, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v8, 0x34

    move-wide/from16 v225, v0

    move-wide/from16 v227, v6

    move-wide/from16 v0, v197

    move-wide/from16 v6, v207

    .line 1430
    invoke-static {v0, v1, v8, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    const/16 v8, 0x18

    .line 1433
    invoke-static {v0, v1, v8, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    const/16 v8, 0xd

    .line 1435
    invoke-static {v4, v5, v8, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v18

    sub-long v15, v11, v18

    const/16 v4, 0x8

    .line 1437
    invoke-static {v2, v3, v4, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v22

    sub-long v20, v13, v22

    const/16 v2, 0x2f

    move-wide/from16 v13, v223

    move-wide/from16 v11, v227

    .line 1439
    invoke-static {v13, v14, v2, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v25, v11, v28

    move-wide/from16 v2, v219

    .line 1441
    invoke-static {v2, v3, v4, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v30, v6, v32

    const/16 v2, 0x11

    move-wide/from16 v3, v213

    move-wide/from16 v5, v217

    .line 1443
    invoke-static {v3, v4, v2, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v37

    sub-long v34, v5, v37

    const/16 v2, 0x16

    move-wide/from16 v3, v211

    move-wide/from16 v13, v221

    .line 1445
    invoke-static {v3, v4, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v41

    sub-long v39, v13, v41

    const/16 v2, 0x25

    move-wide/from16 v3, v215

    move-wide/from16 v5, v225

    .line 1447
    invoke-static {v3, v4, v2, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v46

    sub-long v44, v5, v46

    add-int/lit8 v2, v80, -0x2

    move-wide v12, v0

    move v1, v2

    move-object/from16 v5, v58

    move-object/from16 v6, v59

    move-object/from16 v3, v79

    move-object/from16 v4, v86

    move-object/from16 v0, p0

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/4 v11, 0x1

    const/4 v14, 0x4

    goto/16 :goto_0

    :cond_0
    move-object/from16 v79, v3

    move-object/from16 v86, v4

    const/4 v0, 0x0

    .line 1454
    aget-wide v1, v79, v0

    sub-long/2addr v9, v1

    const/4 v0, 0x1

    .line 1455
    aget-wide v1, v79, v0

    sub-long/2addr v12, v1

    const/4 v0, 0x2

    .line 1456
    aget-wide v1, v79, v0

    sub-long/2addr v15, v1

    .line 1457
    aget-wide v0, v79, v17

    sub-long v18, v18, v0

    const/4 v0, 0x4

    .line 1458
    aget-wide v1, v79, v0

    sub-long v20, v20, v1

    const/4 v0, 0x5

    .line 1459
    aget-wide v1, v79, v0

    sub-long v22, v22, v1

    .line 1460
    aget-wide v0, v79, v24

    sub-long v25, v25, v0

    .line 1461
    aget-wide v0, v79, v27

    sub-long v28, v28, v0

    const/16 v0, 0x8

    .line 1462
    aget-wide v1, v79, v0

    sub-long v30, v30, v1

    const/16 v0, 0x9

    .line 1463
    aget-wide v1, v79, v0

    sub-long v32, v32, v1

    const/16 v0, 0xa

    .line 1464
    aget-wide v1, v79, v0

    sub-long v34, v34, v1

    .line 1465
    aget-wide v0, v79, v36

    sub-long v37, v37, v0

    const/16 v0, 0xc

    .line 1466
    aget-wide v1, v79, v0

    sub-long v39, v39, v1

    const/16 v0, 0xd

    .line 1467
    aget-wide v1, v79, v0

    const/4 v0, 0x0

    aget-wide v3, v86, v0

    add-long/2addr v1, v3

    sub-long v41, v41, v1

    .line 1468
    aget-wide v1, v79, v43

    const/4 v3, 0x1

    aget-wide v4, v86, v3

    add-long/2addr v1, v4

    sub-long v44, v44, v1

    const/16 v1, 0xf

    .line 1469
    aget-wide v1, v79, v1

    sub-long v46, v46, v1

    .line 1474
    aput-wide v9, p2, v0

    .line 1475
    aput-wide v12, p2, v3

    const/4 v0, 0x2

    .line 1476
    aput-wide v15, p2, v0

    .line 1477
    aput-wide v18, p2, v17

    const/4 v0, 0x4

    .line 1478
    aput-wide v20, p2, v0

    const/4 v0, 0x5

    .line 1479
    aput-wide v22, p2, v0

    .line 1480
    aput-wide v25, p2, v24

    .line 1481
    aput-wide v28, p2, v27

    const/16 v0, 0x8

    .line 1482
    aput-wide v30, p2, v0

    const/16 v0, 0x9

    .line 1483
    aput-wide v32, p2, v0

    const/16 v0, 0xa

    .line 1484
    aput-wide v34, p2, v0

    .line 1485
    aput-wide v37, p2, v36

    const/16 v0, 0xc

    .line 1486
    aput-wide v39, p2, v0

    const/16 v0, 0xd

    .line 1487
    aput-wide v41, p2, v0

    .line 1488
    aput-wide v44, p2, v43

    const/16 v0, 0xf

    .line 1489
    aput-wide v46, p2, v0

    return-void

    .line 1251
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1247
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method encryptBlock([J[J)V
    .locals 231

    move-object/from16 v0, p0

    .line 1022
    iget-object v3, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 1023
    iget-object v4, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 1024
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v5

    .line 1025
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v6

    .line 1028
    array-length v7, v3

    const/16 v8, 0x21

    if-ne v7, v8, :cond_2

    .line 1032
    array-length v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    .line 1040
    aget-wide v9, p1, v7

    const/4 v11, 0x1

    .line 1041
    aget-wide v12, p1, v11

    const/4 v14, 0x2

    .line 1042
    aget-wide v15, p1, v14

    const/16 v17, 0x3

    .line 1043
    aget-wide v18, p1, v17

    const/4 v14, 0x4

    .line 1044
    aget-wide v20, p1, v14

    .line 1045
    aget-wide v22, p1, v8

    const/16 v24, 0x6

    .line 1046
    aget-wide v25, p1, v24

    const/16 v27, 0x7

    .line 1047
    aget-wide v28, p1, v27

    const/16 v8, 0x8

    .line 1048
    aget-wide v30, p1, v8

    const/16 v8, 0x9

    .line 1049
    aget-wide v32, p1, v8

    const/16 v8, 0xa

    .line 1050
    aget-wide v34, p1, v8

    const/16 v36, 0xb

    .line 1051
    aget-wide v37, p1, v36

    const/16 v8, 0xc

    .line 1052
    aget-wide v39, p1, v8

    const/16 v8, 0xd

    .line 1053
    aget-wide v41, p1, v8

    const/16 v43, 0xe

    .line 1054
    aget-wide v44, p1, v43

    const/16 v46, 0xf

    .line 1055
    aget-wide v46, p1, v46

    .line 1060
    aget-wide v48, v3, v7

    add-long v9, v9, v48

    .line 1061
    aget-wide v48, v3, v11

    add-long v12, v12, v48

    const/4 v1, 0x2

    .line 1062
    aget-wide v48, v3, v1

    add-long v15, v15, v48

    .line 1063
    aget-wide v48, v3, v17

    add-long v18, v18, v48

    .line 1064
    aget-wide v48, v3, v14

    add-long v20, v20, v48

    const/4 v1, 0x5

    .line 1065
    aget-wide v48, v3, v1

    add-long v22, v22, v48

    .line 1066
    aget-wide v48, v3, v24

    add-long v25, v25, v48

    .line 1067
    aget-wide v48, v3, v27

    add-long v28, v28, v48

    const/16 v1, 0x8

    .line 1068
    aget-wide v48, v3, v1

    add-long v30, v30, v48

    const/16 v1, 0x9

    .line 1069
    aget-wide v48, v3, v1

    add-long v32, v32, v48

    const/16 v1, 0xa

    .line 1070
    aget-wide v48, v3, v1

    add-long v34, v34, v48

    .line 1071
    aget-wide v48, v3, v36

    add-long v37, v37, v48

    const/16 v1, 0xc

    .line 1072
    aget-wide v48, v3, v1

    add-long v39, v39, v48

    .line 1073
    aget-wide v48, v3, v8

    aget-wide v50, v4, v7

    add-long v48, v48, v50

    add-long v41, v41, v48

    .line 1074
    aget-wide v48, v3, v43

    aget-wide v50, v4, v11

    add-long v48, v48, v50

    add-long v44, v44, v48

    const/16 v1, 0xf

    .line 1075
    aget-wide v48, v3, v1

    add-long v46, v46, v48

    move-wide/from16 v52, v22

    move-wide/from16 v54, v28

    move-wide/from16 v56, v32

    move-wide/from16 v58, v37

    move-wide/from16 v60, v41

    move-wide/from16 v62, v46

    const/4 v1, 0x1

    move-wide/from16 v229, v15

    move-wide/from16 v14, v18

    move-wide/from16 v18, v229

    :goto_0
    const/16 v11, 0x14

    if-ge v1, v11, :cond_0

    .line 1090
    aget v11, v5, v1

    .line 1091
    aget v16, v6, v1

    const/16 v7, 0x18

    add-long/2addr v9, v12

    .line 1099
    invoke-static {v12, v13, v7, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-object/from16 v64, v5

    move-object/from16 v65, v6

    add-long v5, v18, v14

    .line 1100
    invoke-static {v14, v15, v8, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v14

    move/from16 v68, v1

    move-wide/from16 v66, v9

    move-wide/from16 v8, v52

    add-long v0, v20, v8

    const/16 v7, 0x8

    .line 1101
    invoke-static {v8, v9, v7, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v10, 0x2f

    move-object/from16 v71, v3

    move-wide/from16 v69, v8

    move-wide/from16 v7, v54

    add-long v2, v25, v7

    .line 1102
    invoke-static {v7, v8, v10, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    move/from16 v72, v11

    move-wide/from16 v73, v12

    move-wide/from16 v9, v56

    add-long v11, v30, v9

    const/16 v13, 0x8

    .line 1103
    invoke-static {v9, v10, v13, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v13, 0x11

    move-wide/from16 v75, v11

    move-wide/from16 v77, v14

    move-wide/from16 v11, v58

    add-long v14, v34, v11

    .line 1104
    invoke-static {v11, v12, v13, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v13, 0x16

    move-wide/from16 v79, v7

    move-wide/from16 v81, v14

    move-wide/from16 v7, v60

    add-long v14, v39, v7

    .line 1105
    invoke-static {v7, v8, v13, v14, v15}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v13, 0x25

    move-wide/from16 v85, v0

    move-wide/from16 v83, v14

    move-wide/from16 v14, v62

    add-long v0, v44, v14

    .line 1106
    invoke-static {v14, v15, v13, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x26

    move-wide/from16 v87, v0

    add-long v0, v66, v9

    .line 1108
    invoke-static {v9, v10, v15, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x13

    add-long/2addr v5, v7

    .line 1109
    invoke-static {v7, v8, v15, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v2, v11

    const/16 v15, 0xa

    .line 1110
    invoke-static {v11, v12, v15, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v15, 0x37

    move-wide/from16 v89, v9

    add-long v9, v85, v13

    .line 1111
    invoke-static {v13, v14, v15, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x31

    move-wide/from16 v91, v11

    add-long v11, v81, v79

    move-wide/from16 v93, v7

    move-wide/from16 v7, v79

    .line 1112
    invoke-static {v7, v8, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x12

    move-wide/from16 v95, v11

    add-long v11, v83, v77

    move-wide/from16 v97, v13

    move-wide/from16 v13, v77

    .line 1113
    invoke-static {v13, v14, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x17

    move-wide/from16 v99, v11

    add-long v11, v87, v69

    move-wide/from16 v101, v2

    move-wide/from16 v2, v69

    .line 1114
    invoke-static {v2, v3, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x34

    move-wide/from16 v103, v11

    add-long v11, v75, v73

    move-wide/from16 v105, v9

    move-wide/from16 v9, v73

    .line 1115
    invoke-static {v9, v10, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x21

    add-long/2addr v0, v7

    .line 1117
    invoke-static {v7, v8, v15, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v5, v2

    const/4 v15, 0x4

    .line 1118
    invoke-static {v2, v3, v15, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x33

    move-wide/from16 v107, v7

    add-long v7, v105, v13

    .line 1119
    invoke-static {v13, v14, v15, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v109, v13

    add-long v13, v101, v9

    const/16 v15, 0xd

    .line 1120
    invoke-static {v9, v10, v15, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x22

    move-wide/from16 v111, v2

    add-long v2, v99, v97

    move-wide/from16 v113, v9

    move-wide/from16 v9, v97

    .line 1121
    invoke-static {v9, v10, v15, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x29

    move-wide/from16 v115, v2

    add-long v2, v103, v93

    move-wide/from16 v117, v7

    move-wide/from16 v7, v93

    .line 1122
    invoke-static {v7, v8, v15, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x3b

    add-long v11, v11, v91

    move-wide/from16 v119, v2

    move-wide/from16 v2, v91

    .line 1123
    invoke-static {v2, v3, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x11

    move-wide/from16 v121, v11

    add-long v11, v95, v89

    move-wide/from16 v123, v7

    move-wide/from16 v7, v89

    .line 1124
    invoke-static {v7, v8, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v0, v9

    const/4 v15, 0x5

    .line 1126
    invoke-static {v9, v10, v15, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x14

    add-long/2addr v5, v2

    .line 1127
    invoke-static {v2, v3, v15, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x30

    add-long v13, v13, v123

    move-wide/from16 v125, v9

    move-wide/from16 v9, v123

    .line 1128
    invoke-static {v9, v10, v15, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v15, 0x29

    move-wide/from16 v127, v9

    add-long v9, v117, v7

    .line 1129
    invoke-static {v7, v8, v15, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x2f

    move-wide/from16 v129, v2

    add-long v2, v119, v113

    move-wide/from16 v131, v7

    move-wide/from16 v7, v113

    .line 1130
    invoke-static {v7, v8, v15, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v15, 0x1c

    move-wide/from16 v133, v2

    add-long v2, v121, v111

    move-wide/from16 v135, v13

    move-wide/from16 v13, v111

    .line 1131
    invoke-static {v13, v14, v15, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x10

    add-long v11, v11, v109

    move-wide/from16 v137, v2

    move-wide/from16 v2, v109

    .line 1132
    invoke-static {v2, v3, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v15, 0x19

    move-wide/from16 v139, v11

    add-long v11, v115, v107

    move-wide/from16 v141, v13

    move-wide/from16 v13, v107

    .line 1133
    invoke-static {v13, v14, v15, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    .line 1138
    aget-wide v18, v71, v72

    add-long v0, v0, v18

    add-int/lit8 v15, v72, 0x1

    .line 1139
    aget-wide v18, v71, v15

    add-long v7, v7, v18

    add-int/lit8 v18, v72, 0x2

    .line 1140
    aget-wide v20, v71, v18

    add-long v5, v5, v20

    add-int/lit8 v19, v72, 0x3

    .line 1141
    aget-wide v20, v71, v19

    add-long v2, v2, v20

    add-int/lit8 v20, v72, 0x4

    .line 1142
    aget-wide v21, v71, v20

    add-long v9, v9, v21

    add-int/lit8 v21, v72, 0x5

    .line 1143
    aget-wide v22, v71, v21

    move-wide/from16 v143, v9

    add-long v9, v141, v22

    add-int/lit8 v22, v72, 0x6

    .line 1144
    aget-wide v25, v71, v22

    add-long v25, v135, v25

    add-int/lit8 v23, v72, 0x7

    .line 1145
    aget-wide v28, v71, v23

    add-long v13, v13, v28

    add-int/lit8 v28, v72, 0x8

    .line 1146
    aget-wide v30, v71, v28

    add-long v30, v137, v30

    add-int/lit8 v29, v72, 0x9

    .line 1147
    aget-wide v32, v71, v29

    move-wide/from16 v145, v13

    add-long v13, v131, v32

    add-int/lit8 v32, v72, 0xa

    .line 1148
    aget-wide v34, v71, v32

    add-long v34, v139, v34

    add-int/lit8 v33, v72, 0xb

    .line 1149
    aget-wide v37, v71, v33

    move-wide/from16 v147, v13

    add-long v13, v129, v37

    add-int/lit8 v37, v72, 0xc

    .line 1150
    aget-wide v39, v71, v37

    add-long v11, v11, v39

    add-int/lit8 v38, v72, 0xd

    .line 1151
    aget-wide v39, v71, v38

    aget-wide v41, v4, v16

    add-long v39, v39, v41

    move-wide/from16 v149, v11

    add-long v11, v127, v39

    add-int/lit8 v39, v72, 0xe

    .line 1152
    aget-wide v41, v71, v39

    add-int/lit8 v40, v16, 0x1

    aget-wide v44, v4, v40

    add-long v41, v41, v44

    add-long v41, v133, v41

    add-int/lit8 v44, v72, 0xf

    .line 1153
    aget-wide v45, v71, v44

    move-object/from16 v151, v4

    move-wide/from16 v152, v11

    move/from16 v4, v68

    int-to-long v11, v4

    add-long v45, v45, v11

    move-wide/from16 v154, v11

    add-long v11, v125, v45

    move/from16 v156, v4

    const/16 v4, 0x29

    add-long/2addr v0, v7

    .line 1158
    invoke-static {v7, v8, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    add-long/2addr v5, v2

    const/16 v4, 0x9

    .line 1159
    invoke-static {v2, v3, v4, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    const/16 v4, 0x25

    move-wide/from16 v157, v7

    add-long v7, v143, v9

    .line 1160
    invoke-static {v9, v10, v4, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x1f

    move-wide/from16 v159, v9

    add-long v9, v25, v145

    move-wide/from16 v161, v2

    move-wide/from16 v2, v145

    .line 1161
    invoke-static {v2, v3, v4, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v163, v2

    add-long v2, v30, v147

    move-wide/from16 v165, v7

    move-wide/from16 v7, v147

    const/16 v4, 0xc

    .line 1162
    invoke-static {v7, v8, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x2f

    move-wide/from16 v167, v2

    add-long v2, v34, v13

    .line 1163
    invoke-static {v13, v14, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x2c

    move-wide/from16 v169, v2

    add-long v2, v149, v152

    move-wide/from16 v171, v9

    move-wide/from16 v9, v152

    .line 1164
    invoke-static {v9, v10, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x1e

    move-wide/from16 v173, v2

    add-long v2, v41, v11

    .line 1165
    invoke-static {v11, v12, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x10

    add-long/2addr v0, v7

    .line 1167
    invoke-static {v7, v8, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x22

    add-long/2addr v5, v9

    .line 1168
    invoke-static {v9, v10, v4, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x38

    move-wide/from16 v175, v7

    add-long v7, v171, v13

    .line 1169
    invoke-static {v13, v14, v4, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x33

    move-wide/from16 v177, v13

    add-long v13, v165, v11

    .line 1170
    invoke-static {v11, v12, v4, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v179, v9

    add-long v9, v169, v163

    move-wide/from16 v181, v11

    move-wide/from16 v11, v163

    const/4 v4, 0x4

    .line 1171
    invoke-static {v11, v12, v4, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x35

    move-wide/from16 v183, v9

    add-long v9, v173, v161

    move-wide/from16 v185, v7

    move-wide/from16 v7, v161

    .line 1172
    invoke-static {v7, v8, v4, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x2a

    add-long v2, v2, v159

    move-wide/from16 v187, v9

    move-wide/from16 v9, v159

    .line 1173
    invoke-static {v9, v10, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x29

    move-wide/from16 v189, v2

    add-long v2, v167, v157

    move-wide/from16 v191, v7

    move-wide/from16 v7, v157

    .line 1174
    invoke-static {v7, v8, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x1f

    add-long/2addr v0, v11

    .line 1176
    invoke-static {v11, v12, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x2c

    add-long/2addr v5, v9

    .line 1177
    invoke-static {v9, v10, v4, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x2f

    add-long v13, v13, v191

    move-wide/from16 v193, v11

    move-wide/from16 v11, v191

    .line 1178
    invoke-static {v11, v12, v4, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x2e

    move-wide/from16 v195, v11

    add-long v11, v185, v7

    .line 1179
    invoke-static {v7, v8, v4, v11, v12}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x13

    move-wide/from16 v197, v9

    add-long v9, v187, v181

    move-wide/from16 v199, v7

    move-wide/from16 v7, v181

    .line 1180
    invoke-static {v7, v8, v4, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x2a

    move-wide/from16 v201, v9

    add-long v9, v189, v179

    move-wide/from16 v203, v13

    move-wide/from16 v13, v179

    .line 1181
    invoke-static {v13, v14, v4, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x2c

    add-long v2, v2, v177

    move-wide/from16 v205, v9

    move-wide/from16 v9, v177

    .line 1182
    invoke-static {v9, v10, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x19

    move-wide/from16 v207, v2

    add-long v2, v183, v175

    move-wide/from16 v209, v11

    move-wide/from16 v11, v175

    .line 1183
    invoke-static {v11, v12, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long/2addr v0, v7

    const/16 v4, 0x9

    .line 1185
    invoke-static {v7, v8, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x30

    add-long/2addr v5, v9

    .line 1186
    invoke-static {v9, v10, v4, v5, v6}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x23

    move-wide/from16 v211, v7

    add-long v7, v209, v13

    .line 1187
    invoke-static {v13, v14, v4, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v4, 0x34

    move-wide/from16 v213, v13

    add-long v13, v203, v11

    .line 1188
    invoke-static {v11, v12, v4, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x17

    move-wide/from16 v215, v9

    add-long v9, v205, v199

    move-wide/from16 v217, v11

    move-wide/from16 v11, v199

    .line 1189
    invoke-static {v11, v12, v4, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v4, 0x1f

    move-wide/from16 v219, v9

    add-long v9, v207, v197

    move-wide/from16 v221, v7

    move-wide/from16 v7, v197

    .line 1190
    invoke-static {v7, v8, v4, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    const/16 v4, 0x25

    add-long v2, v2, v195

    move-wide/from16 v223, v9

    move-wide/from16 v9, v195

    .line 1191
    invoke-static {v9, v10, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v4, 0x14

    move-wide/from16 v225, v2

    add-long v2, v201, v193

    move-wide/from16 v227, v7

    move-wide/from16 v7, v193

    .line 1192
    invoke-static {v7, v8, v4, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    .line 1197
    aget-wide v25, v71, v15

    add-long v0, v0, v25

    .line 1198
    aget-wide v25, v71, v18

    add-long v11, v11, v25

    .line 1199
    aget-wide v18, v71, v19

    add-long v18, v5, v18

    .line 1200
    aget-wide v4, v71, v20

    add-long/2addr v4, v9

    .line 1201
    aget-wide v9, v71, v21

    add-long v20, v13, v9

    .line 1202
    aget-wide v9, v71, v22

    add-long v52, v227, v9

    .line 1203
    aget-wide v9, v71, v23

    add-long v25, v221, v9

    .line 1204
    aget-wide v9, v71, v28

    add-long v54, v7, v9

    .line 1205
    aget-wide v6, v71, v29

    add-long v30, v223, v6

    .line 1206
    aget-wide v6, v71, v32

    add-long v56, v217, v6

    .line 1207
    aget-wide v6, v71, v33

    add-long v34, v225, v6

    .line 1208
    aget-wide v6, v71, v37

    add-long v58, v215, v6

    .line 1209
    aget-wide v6, v71, v38

    add-long/2addr v2, v6

    .line 1210
    aget-wide v6, v71, v39

    aget-wide v8, v151, v40

    add-long/2addr v6, v8

    add-long v60, v213, v6

    .line 1211
    aget-wide v6, v71, v44

    const/4 v8, 0x2

    add-int/lit8 v16, v16, 0x2

    aget-wide v8, v151, v16

    add-long/2addr v6, v8

    add-long v44, v219, v6

    add-int/lit8 v6, v72, 0x10

    .line 1212
    aget-wide v6, v71, v6

    add-long v6, v6, v154

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    add-long v62, v211, v6

    add-int/lit8 v6, v156, 0x2

    move-wide v9, v0

    move-wide/from16 v39, v2

    move-wide v14, v4

    move v1, v6

    move-wide v12, v11

    move-object/from16 v5, v64

    move-object/from16 v6, v65

    move-object/from16 v3, v71

    move-object/from16 v4, v151

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/16 v8, 0xd

    goto/16 :goto_0

    :cond_0
    move-wide v3, v9

    move-wide v1, v12

    move-wide v5, v14

    move-wide/from16 v22, v52

    move-wide/from16 v28, v54

    move-wide/from16 v9, v56

    move-wide/from16 v11, v58

    move-wide/from16 v7, v60

    move-wide/from16 v14, v62

    const/4 v13, 0x0

    .line 1219
    aput-wide v3, p2, v13

    const/4 v3, 0x1

    .line 1220
    aput-wide v1, p2, v3

    const/4 v1, 0x2

    .line 1221
    aput-wide v18, p2, v1

    .line 1222
    aput-wide v5, p2, v17

    const/4 v1, 0x4

    .line 1223
    aput-wide v20, p2, v1

    const/4 v1, 0x5

    .line 1224
    aput-wide v22, p2, v1

    .line 1225
    aput-wide v25, p2, v24

    .line 1226
    aput-wide v28, p2, v27

    const/16 v1, 0x8

    .line 1227
    aput-wide v30, p2, v1

    const/16 v1, 0x9

    .line 1228
    aput-wide v9, p2, v1

    const/16 v1, 0xa

    .line 1229
    aput-wide v34, p2, v1

    .line 1230
    aput-wide v11, p2, v36

    const/16 v1, 0xc

    .line 1231
    aput-wide v39, p2, v1

    const/16 v1, 0xd

    .line 1232
    aput-wide v7, p2, v1

    .line 1233
    aput-wide v44, p2, v43

    const/16 v1, 0xf

    .line 1234
    aput-wide v14, p2, v1

    return-void

    .line 1034
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1030
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
