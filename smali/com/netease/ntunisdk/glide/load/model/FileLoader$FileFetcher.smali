.class final Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/data/DataFetcher<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private final opener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener<",
            "TData;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->file:Ljava/io/File;

    .line 66
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->opener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->opener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->opener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;
    .locals 1

    .line 107
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
            "-TData;>;)V"
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->opener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->file:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;->open(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->data:Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;->data:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "FileLoader"

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open file"

    .line 76
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_0
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
