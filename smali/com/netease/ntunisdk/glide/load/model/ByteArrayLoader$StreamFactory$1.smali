.class Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory$1;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;->build(Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$Converter<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory$1;->this$0:Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert([B)Ljava/io/InputStream;
    .locals 1

    .line 134
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic convert([B)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/model/ByteArrayLoader$StreamFactory$1;->convert([B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 139
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
