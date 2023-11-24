.class Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$1;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever$RequestManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/manager/RequestManagerRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/manager/Lifecycle;Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1

    .line 529
    new-instance v0, Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/RequestManager;-><init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/manager/Lifecycle;Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-object v0
.end method
