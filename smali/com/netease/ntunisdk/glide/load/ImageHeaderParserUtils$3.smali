.class Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

.field final synthetic val$parcelFileDescriptorRewinder:Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;->val$parcelFileDescriptorRewinder:Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;->val$byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType(Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;->val$parcelFileDescriptorRewinder:Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;

    .line 95
    invoke-virtual {v3}, Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;->val$byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1, v2, v3}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :try_start_1
    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;->getType(Ljava/io/InputStream;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :catch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;->val$parcelFileDescriptorRewinder:Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 101
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 106
    :catch_1
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$3;->val$parcelFileDescriptorRewinder:Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    throw p1
.end method
