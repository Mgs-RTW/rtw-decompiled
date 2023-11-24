.class Lcom/netease/ntunisdk/glide/manager/ApplicationLifecycle;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/manager/Lifecycle;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V
    .locals 0

    .line 15
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/manager/LifecycleListener;->onStart()V

    return-void
.end method

.method public removeListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V
    .locals 0

    return-void
.end method
