.class public Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$UriFactory;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/model/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public build(Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance p1, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$UriFactory;->resources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader;->getInstance()Lcom/netease/ntunisdk/glide/load/model/UnitModelLoader;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader;-><init>(Landroid/content/res/Resources;Lcom/netease/ntunisdk/glide/load/model/ModelLoader;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
