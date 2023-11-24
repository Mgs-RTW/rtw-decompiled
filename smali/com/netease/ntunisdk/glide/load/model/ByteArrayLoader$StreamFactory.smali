.class public Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance p1, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader;

    new-instance v0, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory$1;-><init>(Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;)V

    invoke-direct {p1, v0}, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader;-><init>(Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
