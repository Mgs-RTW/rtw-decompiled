.class final Lcom/netease/ntunisdk/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher;
.super Ljava/lang/Object;
.source "ByteBufferFileLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/ByteBufferFileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 85
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;
    .locals 1

    .line 91
    sget-object v0, Lcom/netease/ntunisdk/glide/load/DataSource;->LOCAL:Lcom/netease/ntunisdk/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/ByteBufferFileLoader$ByteBufferFetcher;->file:Ljava/io/File;

    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/ByteBufferUtil;->fromFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 63
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "ByteBufferFileLoader"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to obtain ByteBuffer for file"

    .line 66
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_0
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
