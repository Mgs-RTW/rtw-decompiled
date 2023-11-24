.class Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Fetcher;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fetcher"
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
.field private final converter:Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final model:[B


# direct methods
.method constructor <init>([BLcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter<",
            "TData;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    .line 63
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;

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
            "TData;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/netease/ntunisdk/glide/load/DataSource;
    .locals 1

    .line 91
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

    .line 68
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Fetcher;->converter:Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Fetcher;->model:[B

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;->convert([B)Ljava/lang/Object;

    move-result-object p1

    .line 69
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method
