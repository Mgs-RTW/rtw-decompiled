.class public Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final DEFAULT_DECODE_MEMORY_LIMIT:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "gm_bridge BitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 47
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 48
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 51
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 52
    div-int/lit8 p0, p0, 0x2

    .line 55
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
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    instance-of v2, p1, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 72
    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 73
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 75
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 78
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const-string v3, "gm_bridge BitmapUtil"

    const-string v4, "JustDecodeBounds : [%d,%d]"

    const/4 v5, 0x2

    .line 79
    new-array v6, v5, [Ljava/lang/Object;

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v4, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_6

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v3, :cond_3

    goto :goto_2

    .line 85
    :cond_3
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v3, v3, v4

    const-string v4, "gm_bridge BitmapUtil"

    const-string v6, "original bitmap size = %d"

    .line 86
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v6, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v4, 0x200000

    if-le v3, v4, :cond_5

    .line 89
    div-int/2addr v3, v4

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v3, :cond_4

    mul-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_4
    int-to-double v6, v4

    .line 94
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    const-string v6, "gm_bridge BitmapUtil"

    const-string v7, "scale = %d,inSampleSize = %d"

    .line 95
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v6, v7, v5}, Lcom/netease/unisdk/gmbridge/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 99
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 82
    :cond_6
    :goto_2
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 42
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 30
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 35
    invoke-static {v0, p1, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 38
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 113
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 117
    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 121
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 103
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 106
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 13

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 138
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x4b

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v2, p0

    move-wide v4, v3

    const/16 v3, 0x4b

    :goto_0
    const-string v6, "gm_bridge BitmapUtil"

    const-string v7, "start compress ..."

    .line 143
    invoke-static {v6, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v6, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 145
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v6, p2, :cond_0

    const-string p2, "gm_bridge BitmapUtil"

    const-string v1, "compress finish,size = %d"

    .line 146
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p2, v1, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v2, p0, :cond_2

    .line 148
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_0
    int-to-double v9, v1

    .line 153
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v4

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    cmpg-double v6, v9, v11

    if-gez v6, :cond_4

    add-int/lit8 v3, v3, -0xf

    const-string v6, "gm_bridge BitmapUtil"

    const-string v9, "reduce quality to %d"

    .line 155
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v6, v9, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v6, 0x1e

    if-ge v3, v6, :cond_6

    if-eq v2, p0, :cond_1

    .line 158
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const-string p0, "gm_bridge BitmapUtil"

    const-string p2, "can\'t reduce quality any more"

    .line 160
    invoke-static {p0, p2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_2
    :goto_1
    if-nez v7, :cond_3

    return v8

    .line 182
    :cond_3
    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->writeFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_4
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v9

    const-string v6, "gm_bridge BitmapUtil"

    const-string v9, "scale bitmap to %d"

    .line 166
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v6, v9, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-int v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v4

    double-to-int v7, v9

    invoke-static {p0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eq v2, p0, :cond_5

    .line 170
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object v2, v6

    .line 174
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_0
.end method
