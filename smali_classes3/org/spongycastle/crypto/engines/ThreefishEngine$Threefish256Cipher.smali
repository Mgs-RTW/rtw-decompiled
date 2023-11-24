.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 460
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 34

    move-object/from16 v0, p0

    .line 573
    iget-object v2, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 574
    iget-object v3, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    .line 575
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v4

    .line 576
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v5

    .line 579
    array-length v6, v2

    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    .line 583
    array-length v6, v3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    .line 588
    aget-wide v8, p1, v6

    const/4 v10, 0x1

    .line 589
    aget-wide v11, p1, v10

    const/4 v13, 0x2

    .line 590
    aget-wide v14, p1, v13

    const/16 v16, 0x3

    .line 591
    aget-wide v17, p1, v16

    const/16 v1, 0x11

    :goto_0
    if-lt v1, v10, :cond_0

    .line 595
    aget v19, v4, v1

    .line 596
    aget v20, v5, v1

    add-int/lit8 v21, v19, 0x1

    .line 599
    aget-wide v22, v2, v21

    sub-long v8, v8, v22

    add-int/lit8 v22, v19, 0x2

    .line 600
    aget-wide v23, v2, v22

    add-int/lit8 v25, v20, 0x1

    aget-wide v26, v3, v25

    add-long v23, v23, v26

    sub-long v11, v11, v23

    add-int/lit8 v23, v19, 0x3

    .line 601
    aget-wide v26, v2, v23

    add-int/lit8 v24, v20, 0x2

    aget-wide v28, v3, v24

    add-long v26, v26, v28

    sub-long v6, v14, v26

    add-int/lit8 v14, v19, 0x4

    .line 602
    aget-wide v14, v2, v14

    move-wide/from16 v30, v11

    int-to-long v10, v1

    add-long/2addr v14, v10

    const-wide/16 v26, 0x1

    add-long v14, v14, v26

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    sub-long v4, v17, v14

    const/16 v12, 0x20

    .line 606
    invoke-static {v4, v5, v12, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    move-wide/from16 v13, v30

    .line 608
    invoke-static {v13, v14, v12, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v6, v12

    const/16 v14, 0x3a

    .line 611
    invoke-static {v12, v13, v14, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v8, v12

    const/16 v14, 0x16

    .line 613
    invoke-static {v4, v5, v14, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v14, 0x2e

    .line 616
    invoke-static {v4, v5, v14, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v14, 0xc

    .line 618
    invoke-static {v12, v13, v14, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v6, v12

    const/16 v14, 0x19

    .line 621
    invoke-static {v12, v13, v14, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v8, v12

    const/16 v14, 0x21

    .line 623
    invoke-static {v4, v5, v14, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    .line 627
    aget-wide v14, v2, v19

    sub-long/2addr v8, v14

    .line 628
    aget-wide v14, v2, v21

    aget-wide v17, v3, v20

    add-long v14, v14, v17

    sub-long/2addr v12, v14

    .line 629
    aget-wide v14, v2, v22

    aget-wide v17, v3, v25

    add-long v14, v14, v17

    sub-long/2addr v6, v14

    .line 630
    aget-wide v14, v2, v23

    add-long/2addr v14, v10

    sub-long/2addr v4, v14

    const/4 v10, 0x5

    .line 633
    invoke-static {v4, v5, v10, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v11, 0x25

    .line 635
    invoke-static {v12, v13, v11, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v6, v11

    const/16 v13, 0x17

    .line 638
    invoke-static {v11, v12, v13, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v8, v11

    const/16 v13, 0x28

    .line 640
    invoke-static {v4, v5, v13, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v13, 0x34

    .line 643
    invoke-static {v4, v5, v13, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v8, v4

    const/16 v13, 0x39

    .line 645
    invoke-static {v11, v12, v13, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v6, v11

    const/16 v13, 0xe

    .line 648
    invoke-static {v11, v12, v13, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v8, v11

    const/16 v13, 0x10

    .line 650
    invoke-static {v4, v5, v13, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v17

    sub-long v14, v6, v17

    add-int/lit8 v1, v1, -0x2

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 657
    aget-wide v4, v2, v1

    sub-long/2addr v8, v4

    const/4 v4, 0x1

    .line 658
    aget-wide v5, v2, v4

    aget-wide v19, v3, v1

    add-long v5, v5, v19

    sub-long/2addr v11, v5

    const/4 v5, 0x2

    .line 659
    aget-wide v6, v2, v5

    aget-wide v19, v3, v4

    add-long v6, v6, v19

    sub-long/2addr v14, v6

    .line 660
    aget-wide v6, v2, v16

    sub-long v17, v17, v6

    .line 665
    aput-wide v8, p2, v1

    .line 666
    aput-wide v11, p2, v4

    .line 667
    aput-wide v14, p2, v5

    .line 668
    aput-wide v17, p2, v16

    return-void

    .line 585
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 581
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method encryptBlock([J[J)V
    .locals 32

    move-object/from16 v0, p0

    .line 465
    iget-object v2, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 466
    iget-object v3, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    .line 467
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v4

    .line 468
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v5

    .line 471
    array-length v6, v2

    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    .line 475
    array-length v6, v3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    .line 483
    aget-wide v8, p1, v6

    const/4 v10, 0x1

    .line 484
    aget-wide v11, p1, v10

    const/4 v13, 0x2

    .line 485
    aget-wide v14, p1, v13

    const/16 v16, 0x3

    .line 486
    aget-wide v17, p1, v16

    .line 491
    aget-wide v19, v2, v6

    add-long v8, v8, v19

    .line 492
    aget-wide v19, v2, v10

    aget-wide v21, v3, v6

    add-long v19, v19, v21

    add-long v11, v11, v19

    .line 493
    aget-wide v19, v2, v13

    aget-wide v21, v3, v10

    add-long v19, v19, v21

    add-long v14, v14, v19

    .line 494
    aget-wide v19, v2, v16

    add-long v17, v17, v19

    const/4 v1, 0x1

    move-wide/from16 v30, v14

    move-wide/from16 v13, v17

    move-wide/from16 v17, v30

    :goto_0
    const/16 v10, 0x12

    if-ge v1, v10, :cond_0

    .line 509
    aget v10, v4, v1

    .line 510
    aget v15, v5, v1

    const/16 v6, 0xe

    add-long/2addr v8, v11

    .line 518
    invoke-static {v11, v12, v6, v8, v9}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v6, 0x10

    move-wide/from16 v23, v8

    add-long v7, v17, v13

    .line 519
    invoke-static {v13, v14, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v6, 0x34

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    add-long v4, v23, v13

    .line 521
    invoke-static {v13, v14, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v6, 0x39

    add-long/2addr v7, v11

    .line 522
    invoke-static {v11, v12, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v6, 0x17

    add-long/2addr v4, v11

    .line 524
    invoke-static {v11, v12, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v6, 0x28

    add-long/2addr v7, v13

    .line 525
    invoke-static {v13, v14, v6, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v4, v13

    const/4 v6, 0x5

    .line 527
    invoke-static {v13, v14, v6, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v9, 0x25

    add-long/2addr v7, v11

    .line 528
    invoke-static {v11, v12, v9, v7, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    .line 533
    aget-wide v17, v2, v10

    add-long v4, v4, v17

    add-int/lit8 v9, v10, 0x1

    .line 534
    aget-wide v17, v2, v9

    aget-wide v19, v3, v15

    add-long v17, v17, v19

    add-long v11, v11, v17

    add-int/lit8 v17, v10, 0x2

    .line 535
    aget-wide v18, v2, v17

    add-int/lit8 v20, v15, 0x1

    aget-wide v21, v3, v20

    add-long v18, v18, v21

    add-long v7, v7, v18

    add-int/lit8 v18, v10, 0x3

    .line 536
    aget-wide v21, v2, v18

    move-wide/from16 v27, v7

    int-to-long v6, v1

    add-long v21, v21, v6

    add-long v13, v13, v21

    const/16 v8, 0x19

    add-long/2addr v4, v11

    .line 541
    invoke-static {v11, v12, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x21

    move/from16 v29, v1

    add-long v0, v27, v13

    .line 542
    invoke-static {v13, v14, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v8, 0x2e

    add-long/2addr v4, v13

    .line 544
    invoke-static {v13, v14, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v8, 0xc

    add-long/2addr v0, v11

    .line 545
    invoke-static {v11, v12, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x3a

    add-long/2addr v4, v11

    .line 547
    invoke-static {v11, v12, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    const/16 v8, 0x16

    add-long/2addr v0, v13

    .line 548
    invoke-static {v13, v14, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v4, v13

    const/16 v8, 0x20

    .line 550
    invoke-static {v13, v14, v8, v4, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v0, v11

    .line 551
    invoke-static {v11, v12, v8, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    .line 556
    aget-wide v8, v2, v9

    add-long/2addr v8, v4

    .line 557
    aget-wide v4, v2, v17

    aget-wide v19, v3, v20

    add-long v4, v4, v19

    add-long/2addr v11, v4

    .line 558
    aget-wide v4, v2, v18

    const/16 v17, 0x2

    add-int/lit8 v15, v15, 0x2

    aget-wide v17, v3, v15

    add-long v4, v4, v17

    add-long v17, v0, v4

    add-int/lit8 v10, v10, 0x4

    .line 559
    aget-wide v0, v2, v10

    add-long/2addr v0, v6

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    add-long/2addr v13, v0

    add-int/lit8 v1, v29, 0x2

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v0, p0

    const/4 v6, 0x0

    const/4 v7, 0x5

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 565
    aput-wide v8, p2, v0

    const/4 v0, 0x1

    .line 566
    aput-wide v11, p2, v0

    const/4 v0, 0x2

    .line 567
    aput-wide v17, p2, v0

    .line 568
    aput-wide v13, p2, v16

    return-void

    .line 477
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 473
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
