.class public Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$FileDescriptorFactory;
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
    name = "FileDescriptorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/Integer;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$FileDescriptorFactory;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public build(Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
            "Ljava/lang/Integer;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader$FileDescriptorFactory;->resources:Landroid/content/res/Resources;

    const-class v2, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    .line 100
    invoke-virtual {p1, v2, v3}, Lcom/netease/ntunisdk/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/netease/ntunisdk/glide/load/model/ResourceLoader;-><init>(Landroid/content/res/Resources;Lcom/netease/ntunisdk/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
