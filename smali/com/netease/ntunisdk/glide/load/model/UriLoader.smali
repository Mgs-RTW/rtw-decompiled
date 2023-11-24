.class public Lcom/netease/ntunisdk/glide/load/model/UriLoader;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/model/UriLoader$AssetFileDescriptorFactory;,
        Lcom/netease/ntunisdk/glide/load/model/UriLoader$FileDescriptorFactory;,
        Lcom/netease/ntunisdk/glide/load/model/UriLoader$StreamFactory;,
        Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final factory:Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "file"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.resource"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "content"

    aput-object v3, v1, v2

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/model/UriLoader;->SCHEMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory<",
            "TData;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/UriLoader;->factory:Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;

    return-void
.end method


# virtual methods
.method public buildLoadData(Landroid/net/Uri;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "TData;>;"
        }
    .end annotation

    .line 49
    new-instance p2, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/netease/ntunisdk/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/netease/ntunisdk/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/netease/ntunisdk/glide/load/model/UriLoader;->factory:Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;

    invoke-interface {p4, p1}, Lcom/netease/ntunisdk/glide/load/model/UriLoader$LocalUriFetcherFactory;->build(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/load/data/DataFetcher;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 29
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/model/UriLoader;->buildLoadData(Landroid/net/Uri;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/net/Uri;)Z
    .locals 1

    .line 54
    sget-object v0, Lcom/netease/ntunisdk/glide/load/model/UriLoader;->SCHEMES:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/model/UriLoader;->handles(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
