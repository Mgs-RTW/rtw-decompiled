.class Lcom/netease/ntunisdk/glide/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/RequestManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestManager$1;->this$0:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager$1;->this$0:Lcom/netease/ntunisdk/glide/RequestManager;

    iget-object v0, v0, Lcom/netease/ntunisdk/glide/RequestManager;->lifecycle:Lcom/netease/ntunisdk/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/RequestManager$1;->this$0:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/glide/manager/Lifecycle;->addListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V

    return-void
.end method
