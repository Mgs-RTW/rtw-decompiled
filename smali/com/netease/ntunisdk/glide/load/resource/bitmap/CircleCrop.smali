.class public Lcom/netease/ntunisdk/glide/load/resource/bitmap/CircleCrop;
.super Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransformation;
.source "CircleCrop.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

.field private static final ID_BYTES:[B

.field private static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/CircleCrop;->CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/CircleCrop;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    instance-of p1, p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/CircleCrop;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected transform(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    invoke-static {p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/TransformationUtils;->circleCrop(Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/CircleCrop;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
