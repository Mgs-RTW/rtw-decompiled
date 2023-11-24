.class public Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
        "Lcom/netease/ntunisdk/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final TIMEOUT:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final modelCache:Lcom/netease/ntunisdk/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/ModelCache<",
            "Lcom/netease/ntunisdk/glide/load/model/GlideUrl;",
            "Lcom/netease/ntunisdk/glide/load/model/GlideUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;->TIMEOUT:Lcom/netease/ntunisdk/glide/load/Option;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;-><init>(Lcom/netease/ntunisdk/glide/load/model/ModelCache;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/model/ModelCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/ModelCache<",
            "Lcom/netease/ntunisdk/glide/load/model/GlideUrl;",
            "Lcom/netease/ntunisdk/glide/load/model/GlideUrl;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;->modelCache:Lcom/netease/ntunisdk/glide/load/model/ModelCache;

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/netease/ntunisdk/glide/load/model/GlideUrl;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/GlideUrl;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;->modelCache:Lcom/netease/ntunisdk/glide/load/model/ModelCache;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p2, p1, p3, p3}, Lcom/netease/ntunisdk/glide/load/model/ModelCache;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/glide/load/model/GlideUrl;

    if-nez p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;->modelCache:Lcom/netease/ntunisdk/glide/load/model/ModelCache;

    invoke-virtual {p2, p1, p3, p3, p1}, Lcom/netease/ntunisdk/glide/load/model/ModelCache;->put(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 55
    :cond_1
    :goto_0
    sget-object p2, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;->TIMEOUT:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p4, p2}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 56
    new-instance p3, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    new-instance p4, Lcom/netease/ntunisdk/glide/load/data/HttpUrlFetcher;

    invoke-direct {p4, p1, p2}, Lcom/netease/ntunisdk/glide/load/data/HttpUrlFetcher;-><init>(Lcom/netease/ntunisdk/glide/load/model/GlideUrl;I)V

    invoke-direct {p3, p1, p4}, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;)V

    return-object p3
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 21
    check-cast p1, Lcom/netease/ntunisdk/glide/load/model/GlideUrl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;->buildLoadData(Lcom/netease/ntunisdk/glide/load/model/GlideUrl;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lcom/netease/ntunisdk/glide/load/model/GlideUrl;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 21
    check-cast p1, Lcom/netease/ntunisdk/glide/load/model/GlideUrl;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/model/stream/HttpGlideUrlLoader;->handles(Lcom/netease/ntunisdk/glide/load/model/GlideUrl;)Z

    move-result p1

    return p1
.end method
