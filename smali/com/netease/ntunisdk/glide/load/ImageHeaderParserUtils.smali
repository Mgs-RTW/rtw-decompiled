.class public final Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$OrientationReader;,
        Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;
    }
.end annotation


# static fields
.field private static final MARK_READ_LIMIT:I = 0x500000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$5;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$5;-><init>(Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getOrientationInternal(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$OrientationReader;)I

    move-result p0

    return p0
.end method

.method public static getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object p1, v0

    :cond_1
    const/high16 v0, 0x500000

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 143
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getOrientationInternal(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$OrientationReader;)I

    move-result p0

    return p0
.end method

.method private static getOrientationInternal(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$OrientationReader;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$OrientationReader;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    .line 196
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;

    .line 197
    invoke-interface {p1, v3}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$OrientationReader;->getOrientation(Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;)I

    move-result v3

    if-eq v3, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getType(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;-><init>(Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/util/List;Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 34
    sget-object p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object p1, v0

    :cond_1
    const/high16 p2, 0x500000

    .line 41
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 43
    new-instance p2, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$1;

    invoke-direct {p2, p1}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$1;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, p2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 63
    sget-object p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$2;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeInternal(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 117
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;

    .line 118
    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;->getType(Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    move-result-object v2

    .line 119
    sget-object v3, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method
