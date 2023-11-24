.class Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$OrientationReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

.field final synthetic val$finalIs:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;->val$byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation(Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;->val$byteArrayPool:Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$4;->val$finalIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    throw p1
.end method
