.class abstract Lcom/netease/ntunisdk/glide/GeneratedAppGlideModule;
.super Lcom/netease/ntunisdk/glide/module/AppGlideModule;
.source "GeneratedAppGlideModule.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getExcludedModuleClasses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method getRequestManagerFactory()Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
