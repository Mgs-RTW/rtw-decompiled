.class public Lcom/appsflyer/internal/ad;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final $$a:[I

.field static final $$b:[B

.field static final AFDateFormat:[I

.field private static collectIntentsFromActivities:[I

.field static final getDataFormatter:[I

.field static final valueOf:[B

.field static final values:[I


# direct methods
.method static $$b([BI)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-static {p0, p1}, Lcom/appsflyer/internal/ad;->values([BI)[I

    move-result-object v3

    .line 1207
    array-length v1, p0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 1213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1219
    :cond_0
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    .line 1222
    new-array v4, v1, [I

    .line 1226
    mul-int/lit8 v1, p1, 0x4

    .line 1231
    const/4 v2, 0x0

    add-int/lit8 v5, v1, 0x1

    aget v1, v3, v1

    aput v1, v4, v2

    .line 1232
    add-int/lit8 v1, v5, 0x1

    aget v2, v3, v5

    aput v2, v4, v0

    .line 1233
    const/4 v2, 0x2

    add-int/lit8 v5, v1, 0x1

    aget v1, v3, v1

    aput v1, v4, v2

    .line 1234
    const/4 v1, 0x3

    const/4 v2, 0x4

    aget v6, v3, v5

    aput v6, v4, v1

    .line 1235
    add-int/lit8 v1, v5, -0x7

    .line 1238
    :goto_0
    if-ge v0, p1, :cond_1

    .line 1240
    add-int/lit8 v5, v1, 0x1

    aget v1, v3, v1

    .line 1241
    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lcom/appsflyer/internal/ad;->$$a:[I

    sget-object v8, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v9, v1, 0x18

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->values:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v8, v1

    xor-int/2addr v1, v7

    aput v1, v4, v2

    .line 1245
    add-int/lit8 v1, v5, 0x1

    aget v2, v3, v5

    .line 1246
    add-int/lit8 v5, v6, 0x1

    sget-object v7, Lcom/appsflyer/internal/ad;->$$a:[I

    sget-object v8, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v9, v2, 0x18

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v2, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->values:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v2, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v8, v2

    xor-int/2addr v2, v7

    aput v2, v4, v6

    .line 1250
    add-int/lit8 v6, v1, 0x1

    aget v1, v3, v1

    .line 1251
    add-int/lit8 v7, v5, 0x1

    sget-object v2, Lcom/appsflyer/internal/ad;->$$a:[I

    sget-object v8, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v9, v1, 0x18

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v2, v2, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v2, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->values:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v2, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v8, v1

    xor-int/2addr v1, v2

    aput v1, v4, v5

    .line 1255
    aget v1, v3, v6

    .line 1256
    add-int/lit8 v2, v7, 0x1

    sget-object v5, Lcom/appsflyer/internal/ad;->$$a:[I

    sget-object v8, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v9, v1, 0x18

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v5, v5, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v5, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->values:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v5, v8

    sget-object v8, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    sget-object v9, Lcom/appsflyer/internal/ad;->$$b:[B

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v8, v1

    xor-int/2addr v1, v5

    aput v1, v4, v7

    .line 1260
    add-int/lit8 v1, v6, -0x7

    .line 1238
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1264
    :cond_1
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v1, v3, v1

    aput v1, v4, v2

    .line 1265
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v5, 0x1

    aget v5, v3, v5

    aput v5, v4, v0

    .line 1266
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v2, v3, v2

    aput v2, v4, v1

    .line 1267
    aget v1, v3, v5

    aput v1, v4, v0

    .line 187
    return-object v4
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v10, 0x100

    .line 26
    new-array v0, v10, [B

    sput-object v0, Lcom/appsflyer/internal/ad;->$$b:[B

    .line 29
    new-array v0, v10, [B

    sput-object v0, Lcom/appsflyer/internal/ad;->valueOf:[B

    .line 31
    new-array v0, v10, [I

    sput-object v0, Lcom/appsflyer/internal/ad;->$$a:[I

    .line 32
    new-array v0, v10, [I

    sput-object v0, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    .line 33
    new-array v0, v10, [I

    sput-object v0, Lcom/appsflyer/internal/ad;->values:[I

    .line 34
    new-array v0, v10, [I

    sput-object v0, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    .line 38
    new-array v0, v11, [I

    sput-object v0, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    move v3, v2

    move v0, v2

    .line 1354
    :goto_0
    shl-int/lit8 v4, v0, 0x1

    xor-int/2addr v4, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    :goto_1
    xor-int/2addr v0, v4

    int-to-byte v4, v0

    .line 1357
    shl-int/lit8 v0, v3, 0x1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    .line 1358
    shl-int/lit8 v3, v0, 0x2

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    .line 1359
    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v0, v3

    int-to-byte v3, v0

    .line 1360
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    :goto_2
    xor-int/2addr v0, v3

    int-to-byte v0, v0

    .line 1362
    sget-object v3, Lcom/appsflyer/internal/ad;->$$b:[B

    and-int/lit16 v5, v4, 0xff

    xor-int/lit8 v6, v0, 0x63

    .line 1387
    and-int/lit16 v7, v0, 0xff

    .line 1388
    shl-int/lit8 v8, v7, 0x1

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    .line 1362
    xor-int/2addr v6, v7

    .line 2387
    and-int/lit16 v7, v0, 0xff

    .line 2388
    shl-int/lit8 v8, v7, 0x2

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v8

    .line 1362
    xor-int/2addr v6, v7

    .line 3387
    and-int/lit16 v7, v0, 0xff

    .line 3388
    shl-int/lit8 v8, v7, 0x3

    shr-int/lit8 v7, v7, 0x5

    or-int/2addr v7, v8

    .line 1362
    xor-int/2addr v6, v7

    .line 4387
    and-int/lit16 v7, v0, 0xff

    .line 4388
    shl-int/lit8 v8, v7, 0x4

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v8

    .line 1362
    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1364
    and-int/lit16 v3, v4, 0xff

    if-ne v3, v2, :cond_8

    .line 1367
    sget-object v0, Lcom/appsflyer/internal/ad;->$$b:[B

    const/16 v3, 0x63

    aput-byte v3, v0, v1

    move v5, v1

    .line 49
    :goto_3
    if-ge v5, v10, :cond_3

    .line 51
    sget-object v0, Lcom/appsflyer/internal/ad;->$$b:[B

    aget-byte v0, v0, v5

    and-int/lit16 v6, v0, 0xff

    .line 53
    sget-object v0, Lcom/appsflyer/internal/ad;->valueOf:[B

    int-to-byte v3, v5

    aput-byte v3, v0, v6

    .line 55
    shl-int/lit8 v0, v5, 0x1

    .line 56
    if-lt v0, v10, :cond_7

    .line 58
    xor-int/lit16 v0, v0, 0x11b

    move v4, v0

    .line 60
    :goto_4
    shl-int/lit8 v0, v4, 0x1

    .line 61
    if-lt v0, v10, :cond_6

    .line 63
    xor-int/lit16 v0, v0, 0x11b

    move v3, v0

    .line 65
    :goto_5
    shl-int/lit8 v0, v3, 0x1

    .line 66
    if-lt v0, v10, :cond_0

    .line 68
    xor-int/lit16 v0, v0, 0x11b

    .line 70
    :cond_0
    xor-int v7, v0, v5

    .line 71
    xor-int v8, v7, v4

    .line 72
    xor-int v9, v7, v3

    .line 73
    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    .line 79
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v3, v7, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v3, v9, 0x8

    or-int/2addr v0, v3

    or-int/2addr v0, v8

    .line 80
    sget-object v3, Lcom/appsflyer/internal/ad;->$$a:[I

    aput v0, v3, v6

    .line 81
    sget-object v3, Lcom/appsflyer/internal/ad;->AFDateFormat:[I

    ushr-int/lit8 v4, v0, 0x8

    shl-int/lit8 v7, v0, 0x18

    or-int/2addr v4, v7

    aput v4, v3, v6

    .line 82
    sget-object v3, Lcom/appsflyer/internal/ad;->values:[I

    ushr-int/lit8 v4, v0, 0x10

    shl-int/lit8 v7, v0, 0x10

    or-int/2addr v4, v7

    aput v4, v3, v6

    .line 83
    sget-object v3, Lcom/appsflyer/internal/ad;->getDataFormatter:[I

    ushr-int/lit8 v4, v0, 0x18

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v4

    aput v0, v3, v6

    .line 49
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_1
    move v0, v1

    .line 1354
    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 1360
    goto/16 :goto_2

    .line 5373
    :cond_3
    sget-object v0, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    const/high16 v3, 0x1000000

    aput v3, v0, v1

    move v1, v2

    .line 5374
    :goto_6
    if-ge v1, v11, :cond_5

    .line 5376
    shl-int/lit8 v0, v2, 0x1

    .line 5377
    if-lt v0, v10, :cond_4

    .line 5379
    xor-int/lit16 v0, v0, 0x11b

    .line 5381
    :cond_4
    sget-object v2, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    shl-int/lit8 v3, v0, 0x18

    aput v3, v2, v1

    .line 5374
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_6

    .line 87
    :cond_5
    return-void

    :cond_6
    move v3, v0

    goto :goto_5

    :cond_7
    move v4, v0

    goto :goto_4

    :cond_8
    move v3, v0

    move v0, v4

    goto/16 :goto_0
.end method

.method static values([BI)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 121
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 133
    :cond_0
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v5, v0, 0x4

    .line 136
    new-array v6, v5, [I

    move v0, v2

    move v1, v2

    .line 144
    :goto_0
    if-ge v0, v3, :cond_1

    .line 146
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v1

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v7

    aput v4, v6, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    move v1, v2

    .line 154
    :goto_1
    if-ge v4, v5, :cond_2

    .line 156
    add-int/lit8 v0, v4, -0x1

    aget v0, v6, v0

    .line 157
    if-nez v1, :cond_3

    .line 161
    sget-object v1, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v1, v1, v7

    shl-int/lit8 v1, v1, 0x18

    sget-object v7, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v1, v7

    sget-object v7, Lcom/appsflyer/internal/ad;->$$b:[B

    and-int/lit16 v8, v0, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    sget-object v7, Lcom/appsflyer/internal/ad;->$$b:[B

    ushr-int/lit8 v0, v0, 0x18

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 165
    sget-object v7, Lcom/appsflyer/internal/ad;->collectIntentsFromActivities:[I

    add-int/lit8 v1, v2, 0x1

    aget v2, v7, v2

    xor-int/2addr v0, v2

    move v2, v3

    .line 167
    :goto_2
    add-int/lit8 v7, v4, -0x4

    aget v7, v6, v7

    xor-int/2addr v0, v7

    aput v0, v6, v4

    .line 154
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    move v4, v0

    move v9, v1

    move v1, v2

    move v2, v9

    goto :goto_1

    .line 170
    :cond_2
    return-object v6

    :cond_3
    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_2
.end method

.method public static values(I)[[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    .line 329
    new-array v2, v7, [[B

    move v0, v1

    .line 330
    :goto_0
    if-ge v0, v7, :cond_0

    .line 332
    shl-int/lit8 v3, v0, 0x3

    ushr-int v3, p0, v3

    .line 333
    new-array v4, v7, [B

    and-int/lit8 v5, v3, 0x3

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    const/4 v5, 0x1

    shr-int/lit8 v6, v3, 0x2

    and-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    aput-object v4, v2, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v2
.end method
