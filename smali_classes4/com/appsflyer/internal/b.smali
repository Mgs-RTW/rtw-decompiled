.class public Lcom/appsflyer/internal/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AFExecutor:[B

.field private static AFFacebookDeferredDeeplink$AppLinkFetchEvents:J

.field private static addChannel:I

.field private static addParams:Ljava/lang/Object;

.field private static getThreadPoolExecutor:B

.field public static isEncrypt:[B

.field private static key:Ljava/lang/Object;

.field public static final onAppLinkFetchFinished:I

.field public static post:[B

.field private static toList:I


# direct methods
.method public static $$b(CII)Ljava/lang/Object;
    .locals 7

    sget v0, Lcom/appsflyer/internal/b;->toList:I

    and-int/lit8 v1, v0, 0x15

    or-int/lit8 v0, v0, 0x15

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;

    sget v0, Lcom/appsflyer/internal/b;->toList:I

    xor-int/lit8 v2, v0, 0x21

    and-int/lit8 v0, v0, 0x21

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    sget v0, Lcom/appsflyer/internal/b;->addChannel:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_2
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v3, 0x1dc

    aget-byte v0, v0, v3

    int-to-byte v0, v0

    sget-object v3, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v4, 0x13b

    aget-byte v3, v3, v4

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0xc4

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v0, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v4, 0xc

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x3b5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    throw v1

    :cond_3
    throw v0
.end method

.method private static $$d(ISI)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    sget v0, Lcom/appsflyer/internal/b;->toList:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, v0, -0x1

    neg-int v0, p2

    or-int/lit8 v0, v0, 0x24

    shl-int/lit8 v0, v0, 0x1

    neg-int v3, p2

    xor-int/lit8 v3, v3, 0x24

    sub-int v6, v0, v3

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    neg-int v0, p0

    xor-int/lit8 v0, v0, -0x1

    rsub-int/lit8 v0, v0, 0x77

    add-int/lit8 v3, v0, -0x1

    new-array v0, v6, [B

    if-nez v7, :cond_5

    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v4, Lcom/appsflyer/internal/b;->toList:I

    or-int/lit8 v5, v4, 0x3

    shl-int/lit8 v5, v5, 0x1

    xor-int/lit8 v4, v4, 0x3

    sub-int v4, v5, v4

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :cond_1
    sget v4, Lcom/appsflyer/internal/b;->addChannel:I

    add-int/lit8 v4, v4, 0x59

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    :cond_2
    move v4, v1

    move v5, v3

    move v3, v1

    move v1, v2

    :goto_1
    neg-int v4, v4

    neg-int v8, v4

    and-int/2addr v8, v5

    neg-int v4, v4

    or-int/2addr v4, v5

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, -0x2

    add-int/lit8 v4, v4, -0x1

    :goto_2
    and-int/lit8 v5, v1, 0x1

    or-int/lit8 v8, v1, 0x1

    add-int/2addr v5, v8

    int-to-byte v8, v4

    aput-byte v8, v0, v1

    if-ne v5, v6, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BI)V

    sget v0, Lcom/appsflyer/internal/b;->toList:I

    and-int/lit8 v2, v0, 0x6f

    or-int/lit8 v0, v0, 0x6f

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :cond_3
    nop

    return-object v1

    :cond_4
    or-int/lit8 v1, v3, 0x18

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v3, v3, 0x18

    sub-int/2addr v1, v3

    const/16 v3, 0x17

    neg-int v8, v3

    or-int/2addr v8, v1

    shl-int/lit8 v8, v8, 0x1

    neg-int v3, v3

    xor-int/2addr v1, v3

    sub-int v3, v8, v1

    aget-byte v1, v7, v3

    move v9, v1

    move v1, v5

    move v5, v4

    move v4, v9

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_0
    move v4, v3

    move v3, v1

    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 33

    .prologue
    const/4 v4, 0x0

    sput v4, Lcom/appsflyer/internal/b;->addChannel:I

    const/4 v4, 0x1

    sput v4, Lcom/appsflyer/internal/b;->toList:I

    invoke-static {}, Lcom/appsflyer/internal/b;->init$0()V

    invoke-static {}, Lcom/appsflyer/internal/b;->valueOf()V

    .line 77
    :try_start_0
    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0x1dc

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0xc2

    and-int/lit16 v6, v4, 0xc2

    or-int/2addr v5, v6

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v7, 0xc4

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v18

    .line 81
    sget-object v4, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0x1dc

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x3a9

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v7, 0xb

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    move-object v5, v4

    .line 1767
    :goto_0
    const/4 v6, 0x0

    .line 1771
    :try_start_1
    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v7, 0x53

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x2dd

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0xc4

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    .line 1772
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x1dc

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x3b

    aget-byte v8, v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x22

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v7, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    move-result-object v4

    .line 1776
    if-eqz v4, :cond_2

    move-object v6, v4

    .line 87
    :goto_1
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x0

    .line 95
    if-eqz v6, :cond_3

    .line 98
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x10

    aget-byte v4, v4, v11

    int-to-byte v4, v4

    const/16 v11, 0xef

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0x13b

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v4, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v10, v11, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v10, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    :goto_2
    move-object v10, v4

    .line 107
    :goto_3
    if-eqz v6, :cond_78

    .line 2371
    const/16 v4, 0x2c

    :goto_4
    packed-switch v4, :pswitch_data_0

    move-object v4, v8

    :goto_5
    move-object v7, v4

    .line 119
    :goto_6
    if-eqz v6, :cond_4

    .line 122
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x10

    aget-byte v4, v4, v11

    int-to-byte v4, v4

    xor-int/lit16 v11, v4, 0x10c

    and-int/lit16 v12, v4, 0x10c

    or-int/2addr v11, v12

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0x13b

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v4, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v8, v11, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v8, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    :goto_7
    move-object v6, v4

    .line 130
    :goto_8
    if-eqz v10, :cond_5

    .line 2371
    sget v4, Lcom/appsflyer/internal/b;->toList:I

    add-int/lit8 v4, v4, 0x49

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_76

    const/4 v4, 0x1

    :goto_9
    packed-switch v4, :pswitch_data_1

    const/16 v4, 0x36

    :try_start_4
    div-int/lit8 v4, v4, 0x0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_39

    move-object v8, v10

    .line 134
    :goto_a
    if-eqz v6, :cond_9

    .line 141
    :goto_b
    if-nez v7, :cond_6b

    .line 2371
    const/16 v4, 0x44

    :goto_c
    packed-switch v4, :pswitch_data_2

    move-object v5, v7

    .line 144
    :goto_d
    :try_start_5
    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v7, 0x53

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x22c

    int-to-short v7, v7

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x32

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v7, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x10

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    const/16 v9, 0x1c1

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x9

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v7

    .line 148
    const/16 v4, 0x9

    :try_start_6
    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0xb2

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x363

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v12, 0x5

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v5, v4, v9

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const/4 v9, 0x3

    aput-object v6, v4, v9

    const/4 v9, 0x4

    aput-object v7, v4, v9

    const/4 v9, 0x5

    aput-object v5, v4, v9

    const/4 v5, 0x6

    aput-object v8, v4, v5

    const/4 v5, 0x7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    aput-object v7, v4, v5

    .line 190
    const/16 v5, 0x9

    new-array v0, v5, [Z

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 194
    const/16 v5, 0x9

    new-array v0, v5, [Z

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    .line 198
    const/16 v5, 0x9

    new-array v0, v5, [Z

    move-object/from16 v22, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    fill-array-data v22, :array_2

    .line 204
    :try_start_7
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0x53

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    xor-int/lit8 v7, v6, 0x1

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v7

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x4a

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 205
    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v7, 0x19

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    const/16 v7, 0x279

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x212

    aget-byte v8, v8, v9

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 208
    const/4 v7, 0x0

    const/16 v5, 0x1a

    if-lt v6, v5, :cond_10

    const/4 v5, 0x1

    :goto_e
    aput-boolean v5, v22, v7

    .line 211
    const/4 v7, 0x1

    const/16 v5, 0x15

    if-lt v6, v5, :cond_68

    .line 2371
    const/16 v5, 0x21

    :goto_f
    packed-switch v5, :pswitch_data_3

    .line 211
    const/4 v5, 0x0

    :goto_10
    aput-boolean v5, v22, v7

    .line 212
    const/4 v7, 0x5

    const/16 v5, 0x15

    if-lt v6, v5, :cond_73

    .line 2371
    const/4 v5, 0x0

    :goto_11
    packed-switch v5, :pswitch_data_4

    .line 212
    const/4 v5, 0x0

    :goto_12
    aput-boolean v5, v22, v7

    .line 215
    const/4 v7, 0x4

    const/16 v5, 0x10

    if-ge v6, v5, :cond_12

    const/4 v5, 0x1

    :goto_13
    aput-boolean v5, v22, v7

    .line 216
    const/16 v7, 0x8

    const/16 v5, 0x10

    if-ge v6, v5, :cond_7a

    .line 2371
    const/4 v5, 0x1

    :goto_14
    packed-switch v5, :pswitch_data_5

    .line 216
    const/4 v5, 0x1

    :goto_15
    aput-boolean v5, v22, v7
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 224
    :goto_16
    const/4 v5, 0x0

    .line 225
    const/4 v7, 0x0

    move/from16 v19, v5

    .line 226
    :goto_17
    if-nez v7, :cond_13

    .line 3641
    sget v5, Lcom/appsflyer/internal/b;->addChannel:I

    xor-int/lit8 v6, v5, 0x31

    and-int/lit8 v5, v5, 0x31

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6d

    .line 2371
    const/16 v5, 0x39

    :goto_18
    packed-switch v5, :pswitch_data_6

    .line 3641
    const/16 v5, 0x71

    move/from16 v0, v19

    if-ge v0, v5, :cond_13

    .line 229
    :cond_0
    :try_start_8
    aget-boolean v5, v22, v19
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v5, :cond_69

    .line 2371
    const/16 v5, 0x39

    :goto_19
    packed-switch v5, :pswitch_data_7

    move v5, v7

    .line 267
    :goto_1a
    add-int/lit8 v6, v19, 0x1

    move v7, v5

    move/from16 v19, v6

    .line 272
    goto :goto_17

    .line 81
    :cond_1
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_0

    :cond_2
    move-object v6, v4

    .line 1785
    :goto_1b
    :try_start_9
    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v7, 0x53

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x1ac

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x32

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    .line 1786
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x10

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x34f

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x1d

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v7, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v4

    :goto_1c
    move-object v6, v4

    .line 1792
    goto/16 :goto_1

    .line 1788
    :catch_0
    move-exception v4

    move-object v4, v6

    goto :goto_1c

    :cond_3
    move-object v4, v7

    .line 95
    goto/16 :goto_2

    .line 100
    :catch_1
    move-exception v4

    move-object v10, v7

    goto/16 :goto_3

    .line 110
    :pswitch_0
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x10

    aget-byte v4, v4, v11

    int-to-byte v4, v4

    const/16 v11, 0x165

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0x46

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v4, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v7, v11, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v7, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v4

    goto/16 :goto_5

    :catch_2
    move-exception v4

    move-object v7, v8

    goto/16 :goto_6

    :cond_4
    move-object v4, v9

    .line 119
    goto/16 :goto_7

    .line 124
    :catch_3
    move-exception v4

    move-object v6, v9

    goto/16 :goto_8

    :pswitch_1
    move-object v8, v10

    .line 130
    goto/16 :goto_a

    :cond_5
    if-nez v5, :cond_7

    .line 3641
    sget v4, Lcom/appsflyer/internal/b;->toList:I

    const/16 v5, 0x15

    neg-int v5, v5

    neg-int v8, v5

    xor-int/2addr v8, v4

    neg-int v5, v5

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v8

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 130
    :cond_6
    const/4 v4, 0x0

    move-object v8, v4

    goto/16 :goto_a

    :cond_7
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0xb6

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x266

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x13b

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-result-object v4

    const/4 v5, 0x1

    :try_start_c
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0xb2

    aget-byte v4, v4, v8

    int-to-byte v4, v4

    const/16 v8, 0x363

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v4

    move-object v8, v4

    goto/16 :goto_a

    :catchall_0
    move-exception v4

    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_8

    throw v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 270
    :catch_4
    move-exception v4

    .line 272
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 130
    :cond_8
    :try_start_e
    throw v4

    .line 134
    :cond_9
    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0xb2

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x2b6

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x53

    aget-byte v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    move-result-object v4

    const/4 v5, 0x1

    :try_start_f
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x4d

    aget-byte v6, v6, v9

    int-to-short v6, v6

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x1dc

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x10

    aget-byte v6, v6, v9

    int-to-byte v6, v6

    const/16 v9, 0x2c5

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x13b

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v4, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v4

    const/4 v5, 0x1

    :try_start_10
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    const/16 v6, 0x363

    int-to-short v6, v6

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object v4

    .line 3641
    sget v5, Lcom/appsflyer/internal/b;->toList:I

    const/16 v6, 0x5f

    neg-int v6, v6

    neg-int v9, v6

    or-int/2addr v9, v5

    shl-int/lit8 v9, v9, 0x1

    neg-int v6, v6

    xor-int/2addr v5, v6

    sub-int v5, v9, v5

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_a

    :cond_a
    move-object v6, v4

    .line 272
    goto/16 :goto_b

    .line 134
    :catchall_1
    move-exception v4

    :try_start_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_b

    throw v5

    :cond_b
    throw v4

    :catchall_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_c

    throw v5

    :cond_c
    throw v4

    .line 141
    :pswitch_2
    if-eqz v8, :cond_d

    .line 144
    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0x1dc

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    or-int/lit16 v5, v4, 0x129

    int-to-short v5, v5

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x103

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    move-result-object v4

    const/4 v5, 0x2

    :try_start_12
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/4 v4, 0x0

    aput-object v8, v5, v4

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v7, 0xb2

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x363

    int-to-short v7, v7

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v4, v7, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x363

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v13, 0x5

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_d

    :cond_d
    move-object v5, v7

    .line 141
    goto/16 :goto_d

    .line 144
    :catchall_3
    move-exception v4

    :try_start_13
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_e

    throw v5

    :cond_e
    throw v4

    :catchall_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_f

    throw v5

    :cond_f
    throw v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 208
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 211
    :pswitch_3
    const/4 v5, 0x1

    goto/16 :goto_10

    .line 212
    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_12

    .line 215
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_13

    .line 216
    :pswitch_4
    const/4 v5, 0x0

    goto/16 :goto_15

    .line 226
    :pswitch_5
    const/16 v5, 0x9

    move/from16 v0, v19

    if-lt v0, v5, :cond_0

    .line 272
    :cond_13
    return-void

    .line 3641
    :pswitch_6
    sget v5, Lcom/appsflyer/internal/b;->addChannel:I

    add-int/lit8 v5, v5, 0xd

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_14

    .line 233
    :cond_14
    :try_start_14
    aget-boolean v23, v20, v19

    aget-object v12, v4, v19

    aget-boolean v16, v21, v19
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 2306
    if-eqz v23, :cond_1b

    .line 2371
    sget v5, Lcom/appsflyer/internal/b;->toList:I

    add-int/lit8 v5, v5, 0x42

    add-int/lit8 v5, v5, -0x1

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_15

    .line 2306
    :cond_15
    if-eqz v12, :cond_16

    :try_start_15
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x363

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x1dc

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x30d

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x59

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-result v5

    if-nez v5, :cond_1b

    .line 2310
    :cond_16
    :try_start_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x4d

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x18c

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x382

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x18c

    aget-byte v6, v6, v8

    const/4 v8, 0x1

    neg-int v8, v8

    xor-int/lit8 v8, v8, -0x1

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    const/16 v8, 0x129

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x19

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    neg-int v11, v10

    or-int/2addr v11, v9

    shl-int/lit8 v11, v11, 0x1

    neg-int v10, v10

    xor-int/2addr v9, v10

    sub-int v9, v11, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    move-result-object v5

    const/4 v6, 0x1

    :try_start_17
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0xb2

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x314

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x5d

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :catchall_5
    move-exception v5

    :try_start_18
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1a

    throw v6
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    .line 240
    :catch_5
    move-exception v5

    .line 243
    const/4 v6, 0x0

    .line 244
    add-int/lit8 v8, v19, 0x2

    add-int/lit8 v8, v8, -0x1

    :goto_1d
    :try_start_19
    move-object/from16 v0, v22

    array-length v9, v0

    if-ge v8, v9, :cond_17

    .line 246
    aget-boolean v9, v22, v8
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    if-eqz v9, :cond_65

    .line 248
    const/4 v6, 0x1

    .line 253
    :cond_17
    if-nez v6, :cond_67

    .line 3641
    sget v4, Lcom/appsflyer/internal/b;->toList:I

    const/16 v6, 0x57

    neg-int v6, v6

    neg-int v6, v6

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x1

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_18

    .line 256
    :cond_18
    :try_start_1a
    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0x4d

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    xor-int/lit16 v6, v4, 0x144

    and-int/lit16 v7, v4, 0x144

    or-int/2addr v6, v7

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0xb2

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    move-result-object v4

    const/4 v6, 0x2

    :try_start_1b
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v5, 0x0

    aput-object v4, v6, v5

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0xb2

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x314

    int-to-short v5, v5

    sget-object v7, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x5d

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :catchall_6
    move-exception v4

    :try_start_1c
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_66

    throw v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    .line 2306
    :catchall_7
    move-exception v5

    :try_start_1d
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_19

    throw v6

    :cond_19
    throw v5

    .line 2310
    :cond_1a
    throw v5

    .line 2313
    :cond_1b
    const/4 v13, 0x0

    .line 2314
    const/4 v14, 0x0

    .line 2316
    const/4 v9, 0x0

    .line 2317
    const/4 v10, 0x0

    .line 2320
    const/4 v15, 0x0

    .line 2323
    if-eqz v23, :cond_2d

    .line 2325
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4

    .line 2326
    :try_start_1e
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x4d

    aget-byte v6, v6, v8

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x1dc

    aget-byte v8, v8, v11

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x1dc

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x372

    int-to-short v8, v8

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0x28c

    aget-byte v11, v11, v24

    int-to-byte v11, v11

    invoke-static {v6, v8, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    move-result-wide v24

    const-wide/32 v26, 0x3a9680df

    xor-long v24, v24, v26

    :try_start_1f
    move-object/from16 v0, v17

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    move-object v5, v10

    move-object v6, v9

    move-object v8, v14

    move-object v9, v13

    .line 2330
    :goto_1e
    if-nez v5, :cond_6a

    .line 2371
    const/4 v10, 0x1

    :goto_1f
    packed-switch v10, :pswitch_data_8

    .line 2334
    if-nez v9, :cond_71

    .line 2371
    const/4 v10, 0x1

    :goto_20
    packed-switch v10, :pswitch_data_9

    .line 2334
    if-nez v8, :cond_1d

    const/4 v10, 0x5

    move v13, v10

    .line 2344
    :goto_21
    new-instance v14, Ljava/lang/StringBuilder;

    xor-int/lit8 v10, v13, 0x1

    and-int/lit8 v11, v13, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2346
    const/16 v10, 0x2e

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2348
    const/4 v10, 0x0

    move v11, v10

    :goto_22
    if-ge v11, v13, :cond_7b

    .line 2371
    const/4 v10, 0x1

    :goto_23
    packed-switch v10, :pswitch_data_a

    .line 2350
    if-eqz v16, :cond_1f

    .line 2352
    const/16 v10, 0x1a

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v24

    .line 2353
    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextBoolean()Z

    move-result v10

    .line 2355
    if-eqz v10, :cond_7e

    .line 2371
    const/4 v10, 0x1

    :goto_24
    packed-switch v10, :pswitch_data_b

    .line 2355
    add-int/lit8 v10, v24, 0x60

    .line 2358
    :goto_25
    int-to-char v10, v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2348
    :goto_26
    and-int/lit8 v10, v11, 0x1

    or-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    move v11, v10

    goto :goto_22

    .line 2326
    :catchall_8
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1c

    throw v6

    :cond_1c
    throw v5

    .line 2334
    :pswitch_7
    const/4 v10, 0x6

    move v13, v10

    goto :goto_21

    :cond_1d
    if-nez v6, :cond_72

    .line 2371
    const/16 v10, 0x1f

    :goto_27
    packed-switch v10, :pswitch_data_c

    .line 2334
    const/4 v10, 0x3

    move v13, v10

    goto :goto_21

    :cond_1e
    const/4 v10, 0x4

    move v13, v10

    goto :goto_21

    .line 2355
    :pswitch_8
    move/from16 v0, v24

    neg-int v10, v0

    neg-int v0, v10

    move/from16 v24, v0

    xor-int/lit8 v24, v24, 0x41

    neg-int v10, v10

    and-int/lit8 v10, v10, 0x41

    shl-int/lit8 v10, v10, 0x1

    add-int v10, v10, v24

    goto :goto_25

    .line 2362
    :cond_1f
    const/16 v10, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    neg-int v10, v10

    neg-int v0, v10

    move/from16 v24, v0

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0x2000

    move/from16 v24, v0

    neg-int v10, v10

    and-int/lit16 v10, v10, 0x2000

    shl-int/lit8 v10, v10, 0x1

    add-int v10, v10, v24

    .line 2363
    int-to-char v10, v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 2367
    :pswitch_9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_4

    move-result-object v11

    .line 2369
    if-nez v9, :cond_7d

    .line 2371
    const/4 v10, 0x1

    :goto_28
    packed-switch v10, :pswitch_data_d

    .line 3641
    sget v9, Lcom/appsflyer/internal/b;->addChannel:I

    const/16 v10, 0x75

    neg-int v10, v10

    neg-int v10, v10

    xor-int/lit8 v10, v10, -0x1

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_6f

    .line 2371
    const/4 v9, 0x0

    :goto_29
    packed-switch v9, :pswitch_data_e

    move-object v9, v11

    move-object v10, v12

    :goto_2a
    const/4 v11, 0x2

    :try_start_20
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x1

    aput-object v9, v11, v13

    const/4 v9, 0x0

    aput-object v10, v11, v9

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0xb2

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x363

    int-to-short v10, v10

    sget-object v13, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v14, 0x5

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v9, v10, v13}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0xb2

    aget-byte v14, v14, v24

    int-to-byte v14, v14

    const/16 v24, 0x363

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x5

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v14, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v10, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v10, v13

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    move-result-object v9

    goto/16 :goto_1e

    :catchall_9
    move-exception v5

    :try_start_21
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_20

    throw v6

    :cond_20
    throw v5
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_5
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_4

    .line 2373
    :pswitch_a
    if-nez v8, :cond_23

    .line 2371
    sget v8, Lcom/appsflyer/internal/b;->toList:I

    const/16 v10, 0x49

    neg-int v10, v10

    neg-int v13, v10

    xor-int/2addr v13, v8

    neg-int v10, v10

    and-int/2addr v8, v10

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v13

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_21

    .line 2375
    :cond_21
    const/4 v8, 0x2

    :try_start_22
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x1

    aput-object v11, v8, v10

    const/4 v10, 0x0

    aput-object v12, v8, v10

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x363

    int-to-short v11, v11

    sget-object v13, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v14, 0x5

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0xb2

    aget-byte v14, v14, v24

    int-to-byte v14, v14

    const/16 v24, 0x363

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x5

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v14, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    move-result-object v8

    goto/16 :goto_1e

    :catchall_a
    move-exception v5

    :try_start_23
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_22

    throw v6

    :cond_22
    throw v5
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_5
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_4

    .line 2377
    :cond_23
    if-nez v6, :cond_27

    .line 2371
    sget v6, Lcom/appsflyer/internal/b;->addChannel:I

    const/16 v10, 0x53

    neg-int v10, v10

    neg-int v10, v10

    xor-int/lit8 v10, v10, -0x1

    sub-int/2addr v6, v10

    add-int/lit8 v6, v6, -0x1

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_24

    .line 2379
    :cond_24
    const/4 v6, 0x2

    :try_start_24
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x1

    aput-object v11, v6, v10

    const/4 v10, 0x0

    aput-object v12, v6, v10

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x363

    int-to-short v11, v11

    sget-object v13, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v14, 0x5

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0xb2

    aget-byte v14, v14, v24

    int-to-byte v14, v14

    const/16 v24, 0x363

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x5

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v14, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    move-result-object v6

    goto/16 :goto_1e

    :catchall_b
    move-exception v5

    :try_start_25
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_25

    throw v6

    :cond_25
    throw v5

    .line 2383
    :catchall_c
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_26

    throw v6

    :cond_26
    throw v5
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_5
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4

    :cond_27
    const/4 v5, 0x2

    :try_start_26
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x1

    aput-object v11, v5, v10

    const/4 v10, 0x0

    aput-object v12, v5, v10

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x363

    int-to-short v11, v11

    sget-object v13, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v14, 0x5

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0xb2

    aget-byte v14, v14, v24

    int-to-byte v14, v14

    const/16 v24, 0x363

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v24, v0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x5

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v14, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    move-result-object v5

    .line 3641
    sget v10, Lcom/appsflyer/internal/b;->toList:I

    const/16 v11, 0x3f

    neg-int v11, v11

    neg-int v13, v11

    or-int/2addr v13, v10

    shl-int/lit8 v13, v13, 0x1

    neg-int v11, v11

    xor-int/2addr v10, v11

    sub-int v10, v13, v10

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_28

    :cond_28
    sget v10, Lcom/appsflyer/internal/b;->toList:I

    or-int/lit8 v11, v10, 0x5f

    shl-int/lit8 v11, v11, 0x1

    xor-int/lit8 v10, v10, 0x5f

    sub-int v10, v11, v10

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_29

    .line 2388
    :cond_29
    const/4 v10, 0x1

    :try_start_27
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0xb2

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    const/16 v13, 0x2f6

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0x4a

    aget-byte v14, v14, v24

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    sget-object v24, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0xb2

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, 0x363

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x5

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    move-result-object v10

    :try_start_28
    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0xb2

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    const/16 v13, 0x2f6

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0x4a

    aget-byte v14, v14, v24

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget-object v13, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v14, 0x1dc

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x283

    and-int/lit16 v0, v13, 0x283

    move/from16 v24, v0

    or-int v14, v14, v24

    int-to-short v14, v14

    sget-object v24, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x382

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v13, v14, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    goto/16 :goto_1e

    :catchall_d
    move-exception v6

    :try_start_29
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_2b

    throw v8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_5

    .line 2390
    :catch_6
    move-exception v6

    .line 2392
    :try_start_2a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x4d

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x36e

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x382

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x18c

    aget-byte v8, v8, v9

    const/4 v9, 0x1

    neg-int v10, v9

    xor-int/2addr v10, v8

    neg-int v9, v9

    and-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v10

    int-to-byte v8, v8

    const/16 v9, 0x129

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x19

    aget-byte v10, v10, v11

    const/4 v11, 0x1

    neg-int v12, v11

    or-int/2addr v12, v10

    shl-int/lit8 v12, v12, 0x1

    neg-int v11, v11

    xor-int/2addr v10, v11

    sub-int v10, v12, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_4

    move-result-object v5

    const/4 v8, 0x2

    :try_start_2b
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v6, 0x0

    aput-object v5, v8, v6

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x314

    int-to-short v6, v6

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x5d

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v5, v6, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    :catchall_e
    move-exception v5

    :try_start_2c
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_2c

    throw v6
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_4

    .line 2388
    :catchall_f
    move-exception v6

    :try_start_2d
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_2a

    throw v8

    :cond_2a
    throw v6

    :cond_2b
    throw v6
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_5

    .line 2392
    :cond_2c
    :try_start_2e
    throw v5

    :pswitch_b
    move-object v10, v5

    move-object v14, v8

    move-object v13, v9

    move-object v9, v6

    .line 2405
    :cond_2d
    const/16 v5, 0x1b80

    new-array v5, v5, [B

    .line 2406
    const-class v6, Lcom/appsflyer/internal/b;

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb6

    aget-byte v8, v8, v11

    int-to-byte v8, v8

    const/16 v11, 0x29b

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v16, 0xc4

    aget-byte v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    .line 2407
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_4

    move-result-object v6

    const/4 v8, 0x1

    :try_start_2f
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v8, v11

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    sget v11, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    shl-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v16, 0xb2

    aget-byte v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v16, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v17, 0xb2

    aget-byte v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3da

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    sget-object v24, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x5d

    aget-byte v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v11, v12

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_10

    move-result-object v6

    .line 3641
    sget v8, Lcom/appsflyer/internal/b;->toList:I

    const/16 v11, 0x33

    neg-int v11, v11

    neg-int v12, v11

    xor-int/2addr v12, v8

    neg-int v11, v11

    and-int/2addr v8, v11

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v12

    rem-int/lit16 v11, v8, 0x80

    sput v11, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2e

    .line 2408
    :cond_2e
    const/4 v8, 0x1

    :try_start_30
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v8, v11

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0xb2

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    sget v12, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    shl-int/lit8 v12, v12, 0x1

    int-to-short v12, v12

    sget-object v16, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v17, 0xb2

    aget-byte v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v11, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v16, 0x15

    aget-byte v12, v12, v16

    int-to-byte v12, v12

    const/16 v16, 0xce

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    sget-object v17, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v24, 0xa4

    aget-byte v17, v17, v24

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v24, [B

    aput-object v24, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v11, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    .line 3641
    sget v8, Lcom/appsflyer/internal/b;->addChannel:I

    const/4 v11, 0x5

    neg-int v11, v11

    neg-int v12, v11

    and-int/2addr v12, v8

    neg-int v11, v11

    or-int/2addr v8, v11

    add-int/2addr v8, v12

    rem-int/lit16 v11, v8, 0x80

    sput v11, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2f

    .line 2409
    :cond_2f
    :try_start_31
    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v8, v8, v11

    int-to-byte v8, v8

    sget v11, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    shl-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v16, 0xb2

    aget-byte v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x1dc

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0x283

    and-int/lit16 v0, v11, 0x283

    move/from16 v16, v0

    or-int v12, v12, v16

    int-to-short v12, v12

    sget-object v16, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v17, 0x382

    aget-byte v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v11, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    .line 2412
    const/16 v6, 0x10

    .line 2413
    const/16 v24, 0x16

    .line 2414
    const/16 v11, 0x1b58

    move-object/from16 v16, v15

    move-object/from16 v17, v18

    move v15, v6

    .line 2421
    :goto_2b
    add-int/lit16 v6, v15, 0x16d

    const/16 v8, 0x1b6f

    neg-int v8, v8

    neg-int v8, v8

    xor-int/lit8 v8, v8, -0x1

    sub-int v8, v15, v8

    add-int/lit8 v8, v8, -0x1

    :try_start_32
    aget-byte v8, v5, v8

    and-int/lit8 v12, v8, 0x7f

    or-int/lit8 v8, v8, 0x7f

    add-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    .line 2426
    array-length v6, v5
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_5
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_4

    neg-int v8, v15

    xor-int/lit8 v8, v8, -0x1

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x3

    :try_start_33
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v8, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x1

    aput-object v6, v8, v12

    const/4 v6, 0x0

    aput-object v5, v8, v6

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    sget v6, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    xor-int/lit16 v12, v6, -0x395

    and-int/lit16 v6, v6, 0x394

    int-to-short v6, v6

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x16

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v25, [B

    aput-object v25, v6, v12

    const/4 v12, 0x1

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v6, v12

    const/4 v12, 0x2

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v25, v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_13

    .line 2432
    :try_start_34
    sget-object v6, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;

    if-nez v6, :cond_7c

    .line 2371
    const/4 v6, 0x1

    :goto_2c
    packed-switch v6, :pswitch_data_f

    .line 2436
    const/16 v6, 0x10

    new-array v8, v6, [B

    fill-array-data v8, :array_3

    const-string v6, ""
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_4

    const/16 v12, 0x30

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 2371
    sget v27, Lcom/appsflyer/internal/b;->addChannel:I

    const/16 v28, 0x33

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v29, v0

    and-int v29, v29, v27

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    or-int v27, v27, v28

    add-int v27, v27, v29

    move/from16 v0, v27

    rem-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    sput v28, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v27, v27, 0x2

    if-nez v27, :cond_30

    .line 2436
    :cond_30
    const/16 v27, 0x4

    :try_start_35
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v28, 0x3

    aput-object v26, v27, v28

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v27, v26

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const/16 v25, 0x1

    aput-object v12, v27, v25

    const/4 v12, 0x0

    aput-object v6, v27, v12

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x53

    aget-byte v6, v6, v12

    int-to-byte v6, v6

    const/16 v12, 0x326

    int-to-short v12, v12

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x32

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v6, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x32

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    sget v25, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    const/16 v26, 0x1

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    or-int v28, v25, v26

    shl-int/lit8 v28, v28, 0x1

    xor-int v25, v25, v26

    sub-int v25, v28, v25

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x212

    aget-byte v26, v26, v28

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v12, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v12

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-class v28, Ljava/lang/CharSequence;

    aput-object v28, v25, v26

    const/16 v26, 0x1

    sget-object v28, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v28, v25, v26

    const/16 v26, 0x2

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v25, v26

    const/16 v26, 0x3

    sget-object v28, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v28, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v6, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_14

    move-result v6

    xor-int/lit8 v12, v6, 0x5

    and-int/lit8 v6, v6, 0x5

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v12, v6

    const v25, 0x1bc6b16c

    :try_start_36
    const-string v6, ""
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_5
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_4

    const/16 v26, 0x0

    const/16 v27, 0x2

    :try_start_37
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v28, 0x1

    aput-object v26, v27, v28

    const/16 v26, 0x0

    aput-object v6, v27, v26

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x53

    aget-byte v6, v6, v26

    int-to-byte v6, v6

    const/16 v26, 0x326

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x32

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v6, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x10

    aget-byte v26, v26, v28

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    xor-int/lit16 v0, v0, 0x32b

    move/from16 v28, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x32b

    move/from16 v29, v0

    or-int v28, v28, v29

    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v28, v0

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x53

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, Ljava/lang/CharSequence;

    aput-object v30, v28, v29

    const/16 v29, 0x1

    sget-object v30, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v30, v28, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_15

    move-result v6

    neg-int v0, v6

    move/from16 v26, v0

    xor-int v26, v26, v25

    neg-int v6, v6

    and-int v6, v6, v25

    shl-int/lit8 v6, v6, 0x1

    add-int v25, v26, v6

    .line 3110
    :try_start_38
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 3112
    sget-byte v8, Lcom/appsflyer/internal/b;->getThreadPoolExecutor:B

    sget-wide v26, Lcom/appsflyer/internal/b;->AFFacebookDeferredDeeplink$AppLinkFetchEvents:J

    move-wide/from16 v0, v26

    invoke-static {v6, v8, v0, v1}, Lcom/appsflyer/internal/ah;->AFDateFormat([BBJ)V

    .line 3116
    invoke-static/range {v25 .. v25}, Lcom/appsflyer/internal/ad;->values(I)[[B

    move-result-object v25

    .line 3119
    new-instance v8, Lcom/appsflyer/internal/ab;

    move-object/from16 v0, v25

    invoke-direct {v8, v5, v12, v6, v0}, Lcom/appsflyer/internal/ab;-><init>(Ljava/io/InputStream;I[B[[B)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_5
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_4

    move-object v6, v8

    .line 2446
    :goto_2d
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/4 v5, 0x1

    :try_start_39
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v5, v12

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0xb2

    aget-byte v8, v8, v12

    int-to-byte v8, v8

    const/16 v12, 0x3da

    int-to-short v12, v12

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x5d

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v8, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x43

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    xor-int/lit16 v0, v12, 0x252

    move/from16 v25, v0

    and-int/lit16 v0, v12, 0x252

    move/from16 v26, v0

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x201

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v12, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v12

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v8, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_19

    .line 2450
    if-eqz v23, :cond_74

    .line 2371
    const/4 v5, 0x1

    :goto_2e
    packed-switch v5, :pswitch_data_10

    .line 2452
    :try_start_3a
    sget-object v5, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_4

    if-nez v5, :cond_40

    .line 3641
    sget v5, Lcom/appsflyer/internal/b;->toList:I

    add-int/lit8 v5, v5, 0x11

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_31

    :cond_31
    move-object v12, v13

    .line 2452
    :goto_2f
    :try_start_3b
    sget-object v5, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_4

    if-nez v5, :cond_41

    move-object v8, v9

    .line 3588
    :goto_30
    const/4 v5, 0x1

    :try_start_3c
    new-array v5, v5, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v12, v5, v25

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0x2f6

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x4a

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0xb2

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    const/16 v29, 0x363

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    sget-object v30, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v31, 0x5

    aget-byte v30, v30, v31

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1a

    move-result-object v25

    .line 3594
    const/16 v5, 0x400

    :try_start_3d
    new-array v0, v5, [B

    move-object/from16 v26, v0
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1c

    .line 3596
    :goto_31
    if-lez v11, :cond_6c

    .line 2371
    const/4 v5, 0x0

    :goto_32
    packed-switch v5, :pswitch_data_11

    .line 3606
    :cond_32
    :try_start_3e
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x2f6

    int-to-short v6, v6

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x4a

    aget-byte v11, v11, v26

    int-to-byte v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x10

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    xor-int/lit16 v11, v6, 0x265

    and-int/lit16 v0, v6, 0x265

    move/from16 v26, v0

    or-int v11, v11, v26

    int-to-short v11, v11

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x382

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v6, v11, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1f

    move-result-object v5

    :try_start_3f
    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    const/16 v11, 0x382

    int-to-short v11, v11

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x32

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v6, v11, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x43

    aget-byte v11, v11, v26

    int-to-byte v11, v11

    const/16 v26, 0x173

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x201

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_20

    .line 3607
    :try_start_40
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x2f6

    int-to-short v6, v6

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x4a

    aget-byte v11, v11, v26

    int-to-byte v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x1dc

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    xor-int/lit16 v11, v6, 0x283

    and-int/lit16 v0, v6, 0x283

    move/from16 v26, v0

    or-int v11, v11, v26

    int-to-short v11, v11

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x382

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v6, v11, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_21

    .line 3619
    :try_start_41
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0x28c

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x129

    int-to-short v6, v6

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x1d

    aget-byte v11, v11, v25

    int-to-byte v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3620
    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x45

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    const/16 v11, 0x20a

    int-to-short v11, v11

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x212

    aget-byte v25, v25, v26

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v6, v11, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/16 v25, 0x0

    const-class v26, Ljava/lang/String;

    aput-object v26, v11, v25

    const/16 v25, 0x1

    const-class v26, Ljava/lang/String;

    aput-object v26, v11, v25

    const/16 v25, 0x2

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v26, v11, v25

    invoke-virtual {v5, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 3624
    const/4 v6, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1c

    const/16 v25, 0x0

    :try_start_42
    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0xb2

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    const/16 v27, 0x363

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x5

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x10

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2cf

    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v28, v0

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x46

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_22

    move-result-object v26

    :try_start_43
    aput-object v26, v11, v25
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1c

    const/16 v25, 0x1

    :try_start_44
    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0xb2

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    const/16 v27, 0x363

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x5

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x10

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2cf

    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v28, v0

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x46

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_23

    move-result-object v26

    :try_start_45
    aput-object v26, v11, v25

    const/16 v25, 0x2

    const/16 v26, 0x0

    .line 3627
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v11, v25

    .line 3624
    invoke-virtual {v5, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1c

    move-result-object v6

    .line 3641
    sget v5, Lcom/appsflyer/internal/b;->addChannel:I

    const/4 v11, 0x3

    neg-int v11, v11

    neg-int v11, v11

    xor-int/lit8 v11, v11, -0x1

    sub-int/2addr v5, v11

    add-int/lit8 v5, v5, -0x1

    rem-int/lit16 v11, v5, 0x80

    sput v11, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_33

    .line 3633
    :cond_33
    :try_start_46
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v5, v5, v11

    int-to-byte v5, v5

    const/16 v11, 0x363

    int-to-short v11, v11

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x5

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v5, v11, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x28c

    aget-byte v11, v11, v25

    int-to-byte v11, v11

    const/16 v25, 0x270

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0xbd

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v11, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_24

    .line 3634
    :try_start_47
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v5, v5, v11

    int-to-byte v5, v5

    const/16 v11, 0x363

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x5

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v5, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x28c

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    const/16 v12, 0x270

    int-to-short v12, v12

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xbd

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v11, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_25

    .line 3639
    :try_start_48
    sget-object v5, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_5
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_4

    if-nez v5, :cond_34

    .line 272
    sget v5, Lcom/appsflyer/internal/b;->toList:I

    xor-int/lit8 v8, v5, 0x67

    and-int/lit8 v5, v5, 0x67

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v8

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_51

    .line 3641
    :try_start_49
    const-class v5, Lcom/appsflyer/internal/b;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_5
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_4

    const/4 v8, 0x0

    :try_start_4a
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_4
    .catchall {:try_start_4a .. :try_end_4a} :catchall_37

    :goto_33
    :try_start_4b
    const-class v8, Ljava/lang/Class;

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x10

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0x249

    and-int/lit16 v0, v11, 0x249

    move/from16 v25, v0

    or-int v12, v12, v25

    int-to-short v12, v12

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x53

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v11, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_28

    move-result-object v5

    :try_start_4c
    sput-object v5, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;

    :cond_34
    move-object v8, v6

    .line 2467
    :goto_34
    if-eqz v23, :cond_70

    .line 2371
    const/4 v5, 0x3

    :goto_35
    packed-switch v5, :pswitch_data_12

    .line 2494
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x198

    int-to-short v6, v6

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x1d

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2495
    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x45

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    const/16 v11, 0x3a1

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0xa4

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v25, Ljava/lang/String;

    aput-object v25, v11, v12

    invoke-virtual {v5, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_4

    move-result-object v5

    .line 2499
    const/4 v6, 0x1

    :try_start_4d
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v17, v6, v11

    invoke-virtual {v5, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4d .. :try_end_4d} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_4

    move-result-object v5

    .line 2515
    :cond_35
    :goto_36
    if-eqz v5, :cond_79

    .line 2371
    const/4 v6, 0x0

    :goto_37
    packed-switch v6, :pswitch_data_13

    .line 2517
    :try_start_4e
    check-cast v5, Ljava/lang/Class;

    .line 2522
    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x1dc

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    const/16 v11, 0x103

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v16, 0xc4

    aget-byte v12, v12, v16

    int-to-byte v12, v12

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v12

    .line 2527
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v16, Ljava/lang/Object;

    aput-object v16, v6, v11

    const/4 v11, 0x1

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v6, v11

    .line 2528
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 2529
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2530
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v6, 0x0

    aput-object v8, v16, v6

    const/4 v8, 0x1

    if-nez v23, :cond_77

    .line 2371
    const/4 v6, 0x1

    :goto_38
    packed-switch v6, :pswitch_data_14

    .line 2530
    const/4 v6, 0x1

    :goto_39
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v16, v8

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;

    .line 2532
    const/16 v11, 0x29ec

    .line 2371
    const/4 v6, 0x0

    packed-switch v6, :pswitch_data_15

    .line 2535
    sget-object v6, Lcom/appsflyer/internal/b;->isEncrypt:[B

    .line 2548
    :goto_3a
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v15, v8

    move-object/from16 v16, v5

    move-object/from16 v17, v12

    move-object v5, v6

    .line 2556
    goto/16 :goto_2b

    .line 2407
    :catchall_10
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_36

    throw v6

    :cond_36
    throw v5

    .line 2408
    :catchall_11
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_37

    throw v6

    :cond_37
    throw v5

    .line 2409
    :catchall_12
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_38

    throw v6

    :cond_38
    throw v5

    .line 2426
    :catchall_13
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_39

    throw v6

    :cond_39
    throw v5

    .line 2436
    :catchall_14
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3a

    throw v6

    :cond_3a
    throw v5

    :catchall_15
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3b

    throw v6

    :cond_3b
    throw v5

    .line 2443
    :pswitch_c
    sget-object v8, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_4

    const v12, 0x2a30a3fb

    :try_start_4f
    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x53

    aget-byte v6, v6, v25

    int-to-byte v6, v6

    xor-int/lit8 v25, v6, 0x40

    and-int/lit8 v26, v6, 0x40

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x22

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v6, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x10

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0x241

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x28c

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_16

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v6, v26, v28

    neg-int v6, v6

    neg-int v0, v6

    move/from16 v25, v0

    and-int v25, v25, v12

    neg-int v6, v6

    or-int/2addr v6, v12

    add-int v12, v25, v6

    :try_start_50
    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x53

    aget-byte v6, v6, v25

    int-to-byte v6, v6

    xor-int/lit8 v25, v6, 0x40

    and-int/lit8 v26, v6, 0x40

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x22

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v6, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xc4

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    sget v26, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    move/from16 v0, v26

    xor-int/lit16 v0, v0, -0x158

    move/from16 v27, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x157

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x382

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_17

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    xor-int/lit8 v25, v6, 0xc

    and-int/lit8 v6, v6, 0xc

    shl-int/lit8 v6, v6, 0x1

    add-int v6, v6, v25

    int-to-short v6, v6

    const/16 v25, 0x3

    :try_start_51
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const/16 v26, 0x2

    aput-object v6, v25, v26

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x1

    aput-object v6, v25, v12

    const/4 v6, 0x0

    aput-object v5, v25, v6

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0x1dc

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x13b

    aget-byte v6, v6, v12

    int-to-short v6, v6

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xc4

    aget-byte v12, v12, v26

    int-to-byte v12, v12

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    sget-object v5, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v6, v12, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x53

    int-to-byte v6, v6

    const/16 v12, 0x2c3

    int-to-short v12, v12

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x124

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v6, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    const/16 v26, 0x0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0xb2

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3da

    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v28, v0

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x5d

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v12, v26

    const/16 v26, 0x1

    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v27, v12, v26

    const/16 v26, 0x2

    sget-object v27, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v27, v12, v26

    invoke-virtual {v5, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_18

    move-object v6, v5

    goto/16 :goto_2d

    :catchall_16
    move-exception v5

    :try_start_52
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3c

    throw v6

    :cond_3c
    throw v5

    :catchall_17
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3d

    throw v6

    :cond_3d
    throw v5

    :catchall_18
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3e

    throw v6

    :cond_3e
    throw v5

    .line 2446
    :catchall_19
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3f

    throw v6

    :cond_3f
    throw v5
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_5
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_4

    :cond_40
    move-object v12, v14

    .line 2452
    goto/16 :goto_2f

    :cond_41
    move-object v8, v10

    goto/16 :goto_30

    .line 3588
    :catchall_1a
    move-exception v5

    :try_start_53
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_42

    throw v6
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_7
    .catchall {:try_start_53 .. :try_end_53} :catchall_1c

    .line 3590
    :catch_7
    move-exception v5

    .line 3592
    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x4d

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x190

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0x382

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x18c

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    neg-int v11, v10

    and-int/2addr v11, v9

    neg-int v10, v10

    or-int/2addr v9, v10

    add-int/2addr v9, v11

    int-to-byte v9, v9

    const/16 v10, 0x129

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0x19

    aget-byte v11, v11, v13

    add-int/lit8 v11, v11, -0x1

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1c

    move-result-object v6

    const/4 v9, 0x2

    :try_start_55
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v5, 0x0

    aput-object v6, v9, v5

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x314

    int-to-short v6, v6

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x5d

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v5, v6, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/Throwable;

    aput-object v11, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1b

    :catchall_1b
    move-exception v5

    :try_start_56
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_43

    throw v6
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1c

    .line 3633
    :catchall_1c
    move-exception v5

    move-object v6, v5

    :try_start_57
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0xb2

    aget-byte v5, v5, v9

    int-to-byte v5, v5

    const/16 v9, 0x363

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v11, 0x5

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x28c

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x270

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v13, 0xbd

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v12, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_26

    .line 3634
    :try_start_58
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0xb2

    aget-byte v5, v5, v9

    int-to-byte v5, v5

    const/16 v9, 0x363

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/4 v11, 0x5

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x28c

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x270

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0xbd

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_27

    .line 3635
    :try_start_59
    throw v6
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_5
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_4

    .line 3588
    :cond_42
    :try_start_5a
    throw v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_7
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1c

    .line 3592
    :cond_43
    :try_start_5b
    throw v5

    .line 3596
    :pswitch_d
    const/4 v5, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    .line 3597
    move/from16 v0, v27

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1c

    move-result v27

    const/16 v28, 0x3

    :try_start_5c
    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v29, 0x2

    aput-object v27, v28, v29

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v27, 0x1

    aput-object v5, v28, v27

    const/4 v5, 0x0

    aput-object v26, v28, v5

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0xb2

    aget-byte v5, v5, v27

    int-to-byte v5, v5

    const/16 v27, 0x3da

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x5d

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v5, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x15

    aget-byte v27, v27, v29

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    const/16 v29, 0x126

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    sget-object v30, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v31, 0x201

    aget-byte v30, v30, v31

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-class v31, [B

    aput-object v31, v29, v30

    const/16 v30, 0x1

    sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v31, v29, v30

    const/16 v30, 0x2

    sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v31, v29, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_1d

    move-result v5

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v5, v0, :cond_32

    .line 3641
    sget v27, Lcom/appsflyer/internal/b;->toList:I

    and-int/lit8 v28, v27, 0x2f

    or-int/lit8 v27, v27, 0x2f

    add-int v27, v27, v28

    move/from16 v0, v27

    rem-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    sput v28, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_44

    .line 3600
    :cond_44
    const/16 v27, 0x0

    .line 3641
    sget v28, Lcom/appsflyer/internal/b;->addChannel:I

    const/16 v29, 0x15

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v30, v0

    and-int v30, v30, v28

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    or-int v28, v28, v29

    add-int v28, v28, v30

    move/from16 v0, v28

    rem-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    sput v29, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v28, v28, 0x2

    if-nez v28, :cond_45

    .line 3600
    :cond_45
    const/16 v28, 0x3

    :try_start_5d
    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x2

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v29, 0x1

    aput-object v27, v28, v29

    const/16 v27, 0x0

    aput-object v26, v28, v27

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0xb2

    aget-byte v27, v27, v29

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    const/16 v29, 0x2f6

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    sget-object v30, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v31, 0x4a

    aget-byte v30, v30, v31

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v27

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x47

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    sget-object v31, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v32, 0x382

    aget-byte v31, v31, v32

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    invoke-static/range {v29 .. v31}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-class v32, [B

    aput-object v32, v30, v31

    const/16 v31, 0x1

    sget-object v32, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v32, v30, v31

    const/16 v31, 0x2

    sget-object v32, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v32, v30, v31

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1e

    .line 3601
    neg-int v0, v5

    move/from16 v27, v0

    xor-int v27, v27, v11

    neg-int v5, v5

    and-int/2addr v5, v11

    shl-int/lit8 v5, v5, 0x1

    add-int v5, v5, v27

    move v11, v5

    goto/16 :goto_31

    .line 3597
    :catchall_1d
    move-exception v5

    :try_start_5e
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_46

    throw v6

    :cond_46
    throw v5

    .line 3600
    :catchall_1e
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_47

    throw v6

    :cond_47
    throw v5

    .line 3606
    :catchall_1f
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_48

    throw v6

    :cond_48
    throw v5

    :catchall_20
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_49

    throw v6

    :cond_49
    throw v5

    .line 3607
    :catchall_21
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4a

    throw v6

    :cond_4a
    throw v5

    .line 3624
    :catchall_22
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4b

    throw v6

    :cond_4b
    throw v5

    :catchall_23
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4c

    throw v6

    :cond_4c
    throw v5
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1c

    .line 3633
    :catchall_24
    move-exception v5

    :try_start_5f
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4d

    throw v6

    :cond_4d
    throw v5

    .line 3634
    :catchall_25
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4e

    throw v6

    :cond_4e
    throw v5

    .line 3633
    :catchall_26
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_4f

    throw v6

    :cond_4f
    throw v5

    .line 3634
    :catchall_27
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_50

    throw v6

    :cond_50
    throw v5

    .line 3641
    :cond_51
    const-class v5, Lcom/appsflyer/internal/b;

    goto/16 :goto_33

    :catchall_28
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_52

    throw v6

    :cond_52
    throw v5

    .line 3657
    :pswitch_e
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_4

    move-result-object v8

    .line 3660
    const/4 v6, 0x1

    :try_start_60
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v6, v11

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0xb2

    aget-byte v5, v5, v11

    int-to-byte v5, v5

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x1c

    aget-byte v11, v11, v12

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x9

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v5, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3da

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x5d

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v11, v12

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_29

    move-result-object v11

    .line 2371
    sget v5, Lcom/appsflyer/internal/b;->toList:I

    and-int/lit8 v6, v5, 0x21

    or-int/lit8 v5, v5, 0x21

    add-int/2addr v5, v6

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_53

    .line 3660
    :cond_53
    :try_start_61
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x210

    int-to-short v6, v6

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x63

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_2a

    move-result-object v12

    .line 3663
    const/16 v5, 0x400

    :try_start_62
    new-array v0, v5, [B

    move-object/from16 v25, v0
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_5
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_4

    .line 3664
    const/4 v5, 0x0

    move v6, v5

    .line 3666
    :goto_3b
    const/4 v5, 0x1

    :try_start_63
    new-array v5, v5, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v25, v5, v26

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0xb2

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x1c

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x9

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x15

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    const/16 v28, 0x126

    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v28, v0

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x201

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, [B

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_2b

    move-result v5

    if-lez v5, :cond_59

    int-to-long v0, v6

    move-wide/from16 v26, v0

    .line 3667
    :try_start_64
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_5
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_4

    move-result-wide v28

    cmp-long v26, v26, v28

    if-gez v26, :cond_59

    .line 3669
    const/16 v26, 0x0

    const/16 v27, 0x3

    :try_start_65
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x2

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v28, 0x1

    aput-object v26, v27, v28

    const/16 v26, 0x0

    aput-object v25, v27, v26

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0xb2

    aget-byte v26, v26, v28

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    const/16 v28, 0x210

    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v28, v0

    sget-object v29, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v30, 0x63

    aget-byte v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x47

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    xor-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    or-int v29, v29, v30

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    sget-object v30, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v31, 0x382

    aget-byte v30, v30, v31

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-class v31, [B

    aput-object v31, v29, v30

    const/16 v30, 0x1

    sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v31, v29, v30

    const/16 v30, 0x2

    sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v31, v29, v30

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2c

    .line 3670
    and-int v26, v6, v5

    or-int/2addr v5, v6

    add-int v5, v5, v26

    move v6, v5

    goto/16 :goto_3b

    .line 3660
    :catchall_29
    move-exception v5

    :try_start_66
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_54

    throw v6

    :cond_54
    throw v5

    :catchall_2a
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_55

    throw v6

    :cond_55
    throw v5

    .line 3666
    :catchall_2b
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_56

    throw v6

    :cond_56
    throw v5

    .line 3669
    :catchall_2c
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_57

    throw v6

    :cond_57
    throw v5

    .line 3672
    :catchall_2d
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_58

    throw v6

    :cond_58
    throw v5
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_5
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_4

    :cond_59
    :try_start_67
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x210

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x63

    aget-byte v8, v8, v25

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0xe

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x394

    and-int/lit16 v0, v6, 0x394

    move/from16 v25, v0

    or-int v8, v8, v25

    int-to-short v8, v8

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x13b

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v6, v8, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2d

    move-result-object v6

    .line 3676
    :try_start_68
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0xb2

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x1c

    aget-byte v8, v8, v25

    int-to-short v8, v8

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x9

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v5, v8, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x1dc

    aget-byte v8, v8, v25

    int-to-byte v8, v8

    or-int/lit16 v0, v8, 0x283

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x382

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v8, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v11, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2e

    .line 3682
    :goto_3c
    :try_start_69
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0xb2

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x210

    int-to-short v8, v8

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x63

    aget-byte v11, v11, v25

    int-to-byte v11, v11

    invoke-static {v5, v8, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x1dc

    aget-byte v8, v8, v11

    int-to-byte v8, v8

    or-int/lit16 v11, v8, 0x283

    int-to-short v11, v11

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x382

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v8, v11, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2f

    .line 3686
    :goto_3d
    :try_start_6a
    const-class v5, Lcom/appsflyer/internal/b;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_4

    :try_start_6b
    const-class v8, Ljava/lang/Class;

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x10

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0x249

    and-int/lit16 v0, v11, 0x249

    move/from16 v25, v0

    or-int v12, v12, v25

    int-to-short v12, v12

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x53

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v11, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_30

    move-result-object v11

    .line 3691
    :try_start_6c
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x28c

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    const/16 v8, 0xab

    int-to-short v8, v8

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x47

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v5, v8, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3692
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0x67

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x5d

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v8, v12

    const/4 v12, 0x1

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0x198

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x1d

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v8, v12

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 3694
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_4

    const/4 v12, 0x0

    const/16 v25, 0x1

    :try_start_6d
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v6, v25, v26

    sget-object v6, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v6, v6, v26

    int-to-byte v6, v6

    const/16 v26, 0x67

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x5d

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x47

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    xor-int/lit16 v0, v0, 0x3c0

    move/from16 v27, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x201

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-class v29, [B

    aput-object v29, v27, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_31

    move-result-object v6

    :try_start_6e
    aput-object v6, v8, v12

    const/4 v6, 0x1

    aput-object v11, v8, v6

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_4

    move-result-object v6

    .line 3707
    :try_start_6f
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v8, 0x28c

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x146

    int-to-short v8, v8

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x43

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v5, v8, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3708
    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x63

    aget-byte v8, v8, v12

    int-to-byte v8, v8

    const/16 v12, 0x348

    int-to-short v12, v12

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x59

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v8, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 3709
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3711
    invoke-virtual {v8, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 3712
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 3714
    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x9

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3c3

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x4a

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v25

    .line 3715
    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3717
    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x9

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    xor-int/lit16 v0, v0, 0x276

    move/from16 v27, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x276

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x45

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    .line 3718
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3720
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3721
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 3723
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 3726
    new-instance v28, Ljava/util/ArrayList;

    check-cast v5, Ljava/util/List;

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3728
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 3729
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 3731
    invoke-static {v12}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v29

    .line 3732
    move/from16 v0, v29

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v30

    .line 3733
    const/4 v5, 0x0

    move v8, v5

    :goto_3e
    move/from16 v0, v29

    if-ge v8, v0, :cond_75

    .line 2371
    const/16 v5, 0x46

    :goto_3f
    packed-switch v5, :pswitch_data_16

    .line 3735
    invoke-static {v12, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-static {v0, v8, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_5

    .line 3733
    and-int/lit8 v5, v8, 0x18

    or-int/lit8 v8, v8, 0x18

    add-int/2addr v5, v8

    const/16 v8, 0x17

    neg-int v8, v8

    xor-int/lit8 v8, v8, -0x1

    sub-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x1

    move v8, v5

    goto :goto_3e

    .line 3676
    :catchall_2e
    move-exception v5

    :try_start_70
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_5a

    throw v8

    :catch_8
    move-exception v5

    goto/16 :goto_3c

    :cond_5a
    throw v5
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_70} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_5
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_4

    .line 3682
    :catchall_2f
    move-exception v5

    :try_start_71
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_5b

    throw v8

    :catch_9
    move-exception v5

    goto/16 :goto_3d

    :cond_5b
    throw v5
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_71} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_5
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_4

    .line 3686
    :catchall_30
    move-exception v5

    :try_start_72
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5c

    throw v6

    :cond_5c
    throw v5

    .line 3694
    :catchall_31
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5d

    throw v6

    :cond_5d
    throw v5
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_5
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_4

    .line 3738
    :pswitch_f
    :try_start_73
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_5

    .line 2371
    sget v5, Lcom/appsflyer/internal/b;->toList:I

    add-int/lit8 v5, v5, 0x6f

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5e

    .line 3749
    :cond_5e
    :try_start_74
    sget-object v5, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;

    if-nez v5, :cond_6e

    .line 2371
    const/16 v5, 0x4d

    :goto_40
    packed-switch v5, :pswitch_data_17

    .line 3751
    sput-object v6, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;

    :pswitch_10
    move-object v8, v6

    .line 2461
    goto/16 :goto_34

    .line 3741
    :catch_a
    move-exception v5

    .line 3745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x4d

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x194

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x382

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v9, 0x18c

    aget-byte v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    int-to-byte v8, v8

    const/16 v9, 0x129

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x19

    aget-byte v10, v10, v11

    const/4 v11, 0x1

    neg-int v12, v11

    and-int/2addr v12, v10

    neg-int v11, v11

    or-int/2addr v10, v11

    add-int/2addr v10, v12

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_5
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_4

    move-result-object v6

    const/4 v8, 0x2

    :try_start_75
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v5, 0x0

    aput-object v6, v8, v5

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xb2

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x314

    int-to-short v6, v6

    sget-object v9, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v10, 0x5d

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v5, v6, v9}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_32

    :catchall_32
    move-exception v5

    :try_start_76
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5f

    throw v6

    :cond_5f
    throw v5

    .line 2471
    :pswitch_11
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0x28c

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x129

    int-to-short v6, v6

    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x1d

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 2472
    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v11, 0x45

    aget-byte v5, v5, v11

    int-to-byte v5, v5

    const/16 v11, 0x3a1

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0xa4

    aget-byte v12, v12, v25

    int-to-byte v12, v12

    invoke-static {v5, v11, v12}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v25, Ljava/lang/String;

    aput-object v25, v11, v12

    const/4 v12, 0x1

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0x198

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0x1d

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v11, v12

    invoke-virtual {v6, v5, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2475
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v17, v11, v12

    const/4 v12, 0x1

    const-class v17, Lcom/appsflyer/internal/b;
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_5
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_4

    :try_start_77
    const-class v25, Ljava/lang/Class;

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x10

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    xor-int/lit16 v0, v0, 0x249

    move/from16 v27, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x249

    move/from16 v28, v0

    or-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x53

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_33

    move-result-object v17

    :try_start_78
    aput-object v17, v11, v12

    invoke-virtual {v5, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2484
    if-eqz v5, :cond_35

    .line 2486
    sget-object v11, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v12, 0x1dc

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    or-int/lit16 v12, v11, 0x283

    int-to-short v12, v12

    sget-object v17, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x382

    aget-byte v17, v17, v25

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v12, v0}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2487
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_36

    .line 2475
    :catchall_33
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_60

    throw v6

    :cond_60
    throw v5
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_5
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_4

    .line 2502
    :catch_b
    move-exception v5

    .line 2506
    :try_start_79
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/lang/Exception;

    throw v5
    :try_end_79
    .catch Ljava/lang/ClassNotFoundException; {:try_start_79 .. :try_end_79} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_5
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_4

    .line 2508
    :catch_c
    move-exception v5

    .line 2510
    const/4 v5, 0x0

    goto/16 :goto_36

    .line 2530
    :pswitch_12
    const/4 v6, 0x0

    goto/16 :goto_39

    .line 2539
    :pswitch_13
    const/16 v6, 0x2a18

    :try_start_7a
    new-array v6, v6, [B

    .line 2540
    const-class v8, Lcom/appsflyer/internal/b;

    sget-object v16, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v17, 0xb6

    aget-byte v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x193

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xc4

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v16

    .line 2541
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_4

    move-result-object v8

    const/16 v16, 0x1

    :try_start_7b
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    sget-object v8, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v17, 0xb2

    aget-byte v8, v8, v17

    int-to-byte v8, v8

    sget v17, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v8, v0, v1}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v25, 0x0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0xb2

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    const/16 v27, 0x3da

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v29, 0x5d

    aget-byte v28, v28, v29

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    aput-object v26, v17, v25

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_35

    move-result-object v8

    .line 2371
    sget v16, Lcom/appsflyer/internal/b;->addChannel:I

    const/16 v17, 0x37

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    xor-int/lit8 v17, v17, -0x1

    sub-int v16, v16, v17

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    rem-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    sput v17, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_61

    .line 2543
    :cond_61
    const/16 v16, 0x1

    :try_start_7c
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v6, v16, v17

    sget-object v17, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0xb2

    aget-byte v17, v17, v25

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sget v25, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    shl-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0xb2

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0x15

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    const/16 v26, 0xce

    move/from16 v0, v26

    int-to-short v0, v0

    move/from16 v26, v0

    sget-object v27, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v28, 0xa4

    aget-byte v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, [B

    aput-object v28, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_36

    .line 2544
    :try_start_7d
    sget-object v16, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v17, 0xb2

    aget-byte v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    sget v17, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    sget-object v25, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v26, 0xb2

    aget-byte v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    sget-object v17, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v25, 0x1dc

    aget-byte v17, v17, v25

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    xor-int/lit16 v0, v0, 0x283

    move/from16 v25, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x283

    move/from16 v26, v0

    or-int v25, v25, v26

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v27, 0x382

    aget-byte v26, v26, v27

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v17

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_34

    goto/16 :goto_3a

    :catchall_34
    move-exception v5

    :try_start_7e
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_64

    throw v6

    .line 2541
    :catchall_35
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_62

    throw v6

    :cond_62
    throw v5

    .line 2543
    :catchall_36
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_63

    throw v6

    :cond_63
    throw v5

    .line 2544
    :cond_64
    throw v5

    .line 2553
    :pswitch_14
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Ljava/lang/Object;

    aput-object v9, v5, v6

    const/4 v6, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v6

    .line 2554
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 2555
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2556
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v9, v5

    const/4 v8, 0x1

    if-nez v23, :cond_7f

    .line 2371
    const/4 v5, 0x0

    :goto_41
    packed-switch v5, :pswitch_data_18

    .line 2556
    const/4 v5, 0x1

    :goto_42
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v9, v8

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_4

    .line 238
    const/4 v5, 0x1

    goto/16 :goto_1a

    .line 2556
    :pswitch_15
    const/4 v5, 0x0

    goto :goto_42

    .line 244
    :cond_65
    or-int/lit8 v9, v8, -0x9

    shl-int/lit8 v9, v9, 0x1

    xor-int/lit8 v8, v8, -0x9

    sub-int v8, v9, v8

    const/16 v9, -0xa

    neg-int v10, v9

    or-int/2addr v10, v8

    shl-int/lit8 v10, v10, 0x1

    neg-int v9, v9

    xor-int/2addr v8, v9

    sub-int v8, v10, v8

    goto/16 :goto_1d

    .line 256
    :cond_66
    :try_start_7f
    throw v4

    .line 261
    :cond_67
    const/4 v5, 0x0

    sput-object v5, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;

    .line 262
    const/4 v5, 0x0

    sput-object v5, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_4

    move v5, v7

    goto/16 :goto_1a

    .line 272
    :catchall_37
    move-exception v4

    throw v4

    .line 3641
    :pswitch_16
    sget v5, Lcom/appsflyer/internal/b;->addChannel:I

    xor-int/lit8 v8, v5, 0x1b

    and-int/lit8 v5, v5, 0x1b

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v8

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto/16 :goto_12

    :catchall_38
    move-exception v4

    throw v4

    .line 2371
    :pswitch_17
    const/16 v9, 0x51

    :try_start_80
    div-int/lit8 v9, v9, 0x0
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_5
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_4
    .catchall {:try_start_80 .. :try_end_80} :catchall_38

    move-object v9, v11

    move-object v10, v12

    goto/16 :goto_2a

    :pswitch_18
    sget v10, Lcom/appsflyer/internal/b;->addChannel:I

    const/16 v11, 0x21

    neg-int v11, v11

    neg-int v13, v11

    and-int/2addr v13, v10

    neg-int v11, v11

    or-int/2addr v10, v11

    add-int/2addr v10, v13

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_1e

    const/4 v10, 0x2

    move v13, v10

    goto/16 :goto_21

    :catchall_39
    move-exception v4

    throw v4

    :cond_68
    const/16 v5, 0x52

    goto/16 :goto_f

    :cond_69
    const/4 v5, 0x3

    goto/16 :goto_19

    :cond_6a
    const/4 v10, 0x0

    goto/16 :goto_1f

    :cond_6b
    const/16 v4, 0x4d

    goto/16 :goto_c

    :cond_6c
    const/4 v5, 0x1

    goto/16 :goto_32

    :cond_6d
    const/16 v5, 0x56

    goto/16 :goto_18

    :cond_6e
    const/16 v5, 0x35

    goto/16 :goto_40

    :cond_6f
    const/4 v9, 0x1

    goto/16 :goto_29

    :cond_70
    const/16 v5, 0x4c

    goto/16 :goto_35

    :cond_71
    const/4 v10, 0x0

    goto/16 :goto_20

    :cond_72
    const/16 v10, 0x32

    goto/16 :goto_27

    :cond_73
    const/4 v5, 0x1

    goto/16 :goto_11

    :cond_74
    const/4 v5, 0x0

    goto/16 :goto_2e

    :cond_75
    const/16 v5, 0x55

    goto/16 :goto_3f

    :cond_76
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_77
    const/4 v6, 0x0

    goto/16 :goto_38

    :cond_78
    const/16 v4, 0x2a

    goto/16 :goto_4

    :cond_79
    const/4 v6, 0x1

    goto/16 :goto_37

    :cond_7a
    const/4 v5, 0x0

    goto/16 :goto_14

    :cond_7b
    const/4 v10, 0x0

    goto/16 :goto_23

    :cond_7c
    const/4 v6, 0x0

    goto/16 :goto_2c

    :cond_7d
    const/4 v10, 0x0

    goto/16 :goto_28

    :cond_7e
    const/4 v10, 0x0

    goto/16 :goto_24

    :cond_7f
    const/4 v5, 0x1

    goto/16 :goto_41

    .line 218
    :catch_d
    move-exception v5

    goto/16 :goto_16

    .line 1778
    :catch_e
    move-exception v4

    goto/16 :goto_1b

    .line 2371
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x44
        :pswitch_2
    .end packed-switch

    .line 190
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 194
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 198
    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 2371
    nop

    :pswitch_data_3
    .packed-switch 0x21
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x56
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x39
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1f
        :pswitch_18
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    .line 2436
    :array_3
    .array-data 1
        0x67t
        -0x76t
        -0x44t
        -0x76t
        -0x19t
        0x56t
        -0x21t
        0x67t
        -0x35t
        0x41t
        0x4dt
        -0x22t
        0x24t
        0xbt
        0x2et
        -0x50t
    .end array-data

    .line 2371
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_11
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x55
        :pswitch_f
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x35
        :pswitch_10
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init$0()V
    .locals 5

    const/16 v4, 0x3f1

    const/4 v1, 0x0

    sget v0, Lcom/appsflyer/internal/b;->toList:I

    const/16 v2, 0x2f

    neg-int v2, v2

    neg-int v3, v2

    and-int/2addr v3, v0

    neg-int v2, v2

    or-int/2addr v0, v2

    add-int/2addr v0, v3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-array v0, v4, [B

    const-string v2, "x\u00cf\u00df+\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5:\u00c2\u0003\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u000f\u00da\u001c\u00fe\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be%%\u0000\u00f7\u0005\u0011\u0003\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c69\u00c2\u0003\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u0008\u00f9\u0004\u0016\u00da\u001a\u00fe\u00fa\u000e\u00f4\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c66\u00c5K\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c\u00f6\u00ff\u0006\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\t\u00f8\u00f8\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u00ee\t\u00ed\u000b\u00ee\u0007\u00ef\u000b\u00ee\u000b\u00eb\u000b\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d46\u00ff\u00f4\u0010\u00ff\u00f6\u000e\u00ea$\u00fe\u0006\u00f2\t\u0001\u00e2(\u000c\u00f6\u0001\u0014\u00fe\u0006\n7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c66\u00ce\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0006\u00f5\u0006\u00e3$\u0016\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u001a,\u000b\u00f6\u000c\u0000\u0002\u0002\u00fb\u000c\t\u0001\u0012\u00d4*\u00f8\u0012\u0006\u00f5\u0002\u00e20\u0008\u00e2\u0018\u0007\u00fb\u00ee\u000e\u000c\u00f3\u0011\u00fb\u0001\n\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u00108\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d5\u0001\u00f4\n\u0017\u00ed\u0008\t\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u000c\u0006\u0007\u00f57\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c65\u00cf\u0003@\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u0003A\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdI\u00f4\u0016\u00ff\u00bd)\u0014\u0016\u00ff\u00e4\"\u00f8\u0006\n\u0001\u0012\u00de\u001a\u0003\u0010\u00f5\u0012\u00d0(\u0011\u00f4\u0010\u00f4\u0016\u00f7\u00e7 \r\u0004\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ee\u0006\u00f0\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u0008\u0001 \u0016\u00f4\u00e4,\u0006\u00fe\u00f7\u0016\u00fe\u00f2\u0012\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v0, 0xfa

    sput v0, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    :goto_1
    sget v0, Lcom/appsflyer/internal/b;->toList:I

    and-int/lit8 v1, v0, 0x49

    or-int/lit8 v0, v0, 0x49

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    nop

    return-void

    :pswitch_0
    new-array v0, v4, [B

    const-string v2, "x\u00cf\u00df+\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5:\u00c2\u0003\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u000f\u00da\u001c\u00fe\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be%%\u0000\u00f7\u0005\u0011\u0003\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c69\u00c2\u0003\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u0008\u00f9\u0004\u0016\u00da\u001a\u00fe\u00fa\u000e\u00f4\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c66\u00c5K\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c\u00f6\u00ff\u0006\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\t\u00f8\u00f8\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u00ee\t\u00ed\u000b\u00ee\u0007\u00ef\u000b\u00ee\u000b\u00eb\u000b\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d46\u00ff\u00f4\u0010\u00ff\u00f6\u000e\u00ea$\u00fe\u0006\u00f2\t\u0001\u00e2(\u000c\u00f6\u0001\u0014\u00fe\u0006\n7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c66\u00ce\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0006\u00f5\u0006\u00e3$\u0016\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u001a,\u000b\u00f6\u000c\u0000\u0002\u0002\u00fb\u000c\t\u0001\u0012\u00d4*\u00f8\u0012\u0006\u00f5\u0002\u00e20\u0008\u00e2\u0018\u0007\u00fb\u00ee\u000e\u000c\u00f3\u0011\u00fb\u0001\n\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u00108\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d5\u0001\u00f4\n\u0017\u00ed\u0008\t\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u000c\u0006\u0007\u00f57\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c65\u00cf\u0003@\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u0003A\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdI\u00f4\u0016\u00ff\u00bd)\u0014\u0016\u00ff\u00e4\"\u00f8\u0006\n\u0001\u0012\u00de\u001a\u0003\u0010\u00f5\u0012\u00d0(\u0011\u00f4\u0010\u00f4\u0016\u00f7\u00e7 \r\u0004\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ee\u0006\u00f0\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u0008\u0001 \u0016\u00f4\u00e4,\u0006\u00fe\u00f7\u0016\u00fe\u00f2\u0012\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v0, 0x50a8

    sput v0, Lcom/appsflyer/internal/b;->onAppLinkFetchFinished:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)I
    .locals 7

    sget v0, Lcom/appsflyer/internal/b;->addChannel:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;

    sget v0, Lcom/appsflyer/internal/b;->addChannel:I

    or-int/lit8 v2, v0, 0x4f

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v0, v0, 0x4f

    sub-int v0, v2, v0

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v3, 0x1dc

    aget-byte v0, v0, v3

    int-to-byte v0, v0

    sget-object v3, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v4, 0x13b

    aget-byte v3, v3, v4

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0xc4

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v0, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v4, 0x1a

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0x250

    and-int/lit16 v5, v3, 0x250

    or-int/2addr v4, v5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0xbd

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sget v1, Lcom/appsflyer/internal/b;->addChannel:I

    add-int/lit8 v1, v1, 0x68

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/16 v1, 0xd

    :goto_0
    packed-switch v1, :pswitch_data_0

    nop

    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    :pswitch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    const/16 v1, 0x13

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method static valueOf()V
    .locals 4

    const-wide v2, 0x11124a0437870890L

    sget v0, Lcom/appsflyer/internal/b;->toList:I

    xor-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    sput-byte v0, Lcom/appsflyer/internal/b;->getThreadPoolExecutor:B

    sput-wide v2, Lcom/appsflyer/internal/b;->AFFacebookDeferredDeeplink$AppLinkFetchEvents:J

    :goto_1
    nop

    return-void

    :pswitch_0
    const/16 v0, 0x46

    sput-byte v0, Lcom/appsflyer/internal/b;->getThreadPoolExecutor:B

    sput-wide v2, Lcom/appsflyer/internal/b;->AFFacebookDeferredDeeplink$AppLinkFetchEvents:J

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method public static values(Ljava/lang/Object;)I
    .locals 7

    sget v0, Lcom/appsflyer/internal/b;->addChannel:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->toList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/b;->addParams:Ljava/lang/Object;

    sget v0, Lcom/appsflyer/internal/b;->toList:I

    xor-int/lit8 v2, v0, 0x1f

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    sget-object v0, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v3, 0x1dc

    aget-byte v0, v0, v3

    int-to-byte v0, v0

    sget-object v3, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v4, 0x13b

    aget-byte v3, v3, v4

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v5, 0xc4

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v0, Lcom/appsflyer/internal/b;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0x53

    int-to-byte v3, v3

    const/16 v4, 0x2b4

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/b;->AFExecutor:[B

    const/16 v6, 0x124

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/b;->$$d(ISI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sget v1, Lcom/appsflyer/internal/b;->toList:I

    and-int/lit8 v2, v1, 0x31

    or-int/lit8 v1, v1, 0x31

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b;->addChannel:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x24

    :goto_0
    packed-switch v1, :pswitch_data_0

    nop

    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    :pswitch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    const/16 v1, 0x56

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method
