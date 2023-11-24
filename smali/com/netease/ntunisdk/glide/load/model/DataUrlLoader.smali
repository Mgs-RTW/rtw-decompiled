.class public final Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$StreamFactory;,
        Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;,
        Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
        "TModel;TData;>;"
    }
.end annotation


# static fields
.field private static final BASE64_TAG:Ljava/lang/String; = ";base64"

.field private static final DATA_SCHEME_IMAGE:Ljava/lang/String; = "data:image"


# instance fields
.field private final dataDecoder:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder<",
            "TData;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader;->dataDecoder:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "TData;>;"
        }
    .end annotation

    .line 44
    new-instance p2, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/netease/ntunisdk/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/netease/ntunisdk/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader;->dataDecoder:Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;

    invoke-direct {p4, p1, v0}, Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataUriFetcher;-><init>(Ljava/lang/String;Lcom/netease/ntunisdk/glide/load/model/DataUrlLoader$DataDecoder;)V

    invoke-direct {p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
