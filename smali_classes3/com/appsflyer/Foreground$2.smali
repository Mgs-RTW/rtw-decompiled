.class final Lcom/appsflyer/Foreground$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground;->$$a(Landroid/content/Context;Lcom/appsflyer/Foreground$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic $$a:Lcom/appsflyer/Foreground$Listener;

.field private AFDateFormat:Ljava/util/concurrent/Executor;

.field valueOf:Z

.field values:Z


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground$Listener;)V
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lcom/appsflyer/Foreground$2;->$$a:Lcom/appsflyer/Foreground$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/Foreground$2;->values:Z

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/Foreground$2;->AFDateFormat:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Lcom/appsflyer/Foreground$2;->AFDateFormat:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/Foreground$2$2;

    invoke-direct {v1, p1}, Lcom/appsflyer/Foreground$2$2;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    iget-object v0, p0, Lcom/appsflyer/Foreground$2;->AFDateFormat:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/Foreground$2$4;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/Foreground$2$4;-><init>(Lcom/appsflyer/Foreground$2;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/appsflyer/Foreground$2;->AFDateFormat:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/Foreground$2$5;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/Foreground$2$5;-><init>(Lcom/appsflyer/Foreground$2;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
