.class public Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final DEFAULT_DECODE_MEMORY_LIMIT:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "gm_bridge BitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 51
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 52
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 55
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 56
    div-int/lit8 p0, p0, 0x2

    .line 59
    :goto_0
    div-int v2, v0, v1

    if-le v2, p2, :cond_1

    div-int v2, p0, v1

    if-le v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    instance-of v2, p1, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 76
    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 77
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 79
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 82
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x2

    .line 83
    new-array v4, v3, [Ljava/lang/Object;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "gm_bridge BitmapUtil"

    const-string v6, "JustDecodeBounds : [%d,%d]"

    invoke-static {v5, v6, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v4, :cond_6

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v4, :cond_3

    goto :goto_2

    .line 89
    :cond_3
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v4, v4, 0x2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v4, v4, v6

    .line 90
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "original bitmap size = %d"

    invoke-static {v5, v7, v6}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v6, 0x200000

    if-le v4, v6, :cond_5

    .line 93
    div-int/2addr v4, v6

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v4, :cond_4

    mul-int/lit8 v6, v6, 0x4

    goto :goto_1

    :cond_4
    int-to-double v6, v6

    .line 98
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 99
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "scale = %d,inSampleSize = %d"

    invoke-static {v5, v1, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 103
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 86
    :cond_6
    :goto_2
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 34
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 39
    invoke-static {v0, p1, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 117
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 121
    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 125
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 107
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 110
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static returnNetworkImageBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "FileUtil"

    .line 190
    invoke-static {v0, p0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 191
    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 192
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil$1;-><init>(Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 216
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 218
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 223
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myBitmap[0]: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "out thread --- "

    invoke-static {v2, p0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    aget-object p0, v0, v1

    return-object p0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 16

    move-object/from16 v0, p0

    .line 139
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x4b

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v3, v0

    move-wide v5, v4

    const/16 v4, 0x4b

    :goto_0
    const-string v7, "gm_bridge BitmapUtil"

    const-string v8, "start compress ..."

    .line 147
    invoke-static {v7, v8}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v8, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 149
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v11, p2

    if-ge v8, v11, :cond_0

    .line 150
    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    const-string v4, "compress finish,size = %d"

    invoke-static {v7, v4, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v3, v0, :cond_2

    .line 152
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_0
    int-to-double v12, v2

    .line 157
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v5

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    cmpg-double v8, v12, v14

    if-gez v8, :cond_5

    add-int/lit8 v4, v4, -0xf

    .line 159
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const-string v9, "reduce quality to %d"

    invoke-static {v7, v9, v8}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v8, 0x1e

    if-ge v4, v8, :cond_4

    if-eq v3, v0, :cond_1

    .line 162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const-string v0, "can\'t reduce quality any more"

    .line 164
    invoke-static {v7, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_2
    :goto_1
    if-nez v9, :cond_3

    return v10

    :cond_3
    move-object/from16 v8, p1

    .line 186
    invoke-static {v1, v8}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->writeFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result v0

    return v0

    :cond_4
    move-object/from16 v8, p1

    goto :goto_2

    :cond_5
    move-object/from16 v8, p1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v12

    .line 170
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v9, v10

    const-string v12, "scale bitmap to %d"

    invoke-static {v7, v12, v9}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v5

    double-to-int v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v5

    double-to-int v9, v12

    invoke-static {v0, v7, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v3, v0, :cond_6

    .line 174
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object v3, v7

    .line 178
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_0
.end method
