.class final Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataUriFetcher"
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

.field private final dataUri:Ljava/lang/String;

.field private final reader:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->dataUri:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->data:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    .line 107
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;
    .locals 1

    .line 113
    sget-object v0, Lcom/netease/ntunisdk/glide/load/DataSource;->LOCAL:Lcom/netease/ntunisdk/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback<",
            "-TData;>;)V"
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->reader:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->dataUri:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->data:Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;->data:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
