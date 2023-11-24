.class final Lcom/appsflyer/Foreground$2$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground$2;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$a:Landroid/app/Activity;

.field final synthetic values:Lcom/appsflyer/Foreground$2;


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground$2;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/appsflyer/Foreground$2$4;->values:Lcom/appsflyer/Foreground$2;

    iput-object p2, p0, Lcom/appsflyer/Foreground$2$4;->$$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 52
    iget-object v0, p0, Lcom/appsflyer/Foreground$2$4;->values:Lcom/appsflyer/Foreground$2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsflyer/Foreground$2;->values:Z

    .line 53
    iget-object v0, p0, Lcom/appsflyer/Foreground$2$4;->$$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/appsflyer/Foreground$2$4$5;

    invoke-direct {v2, p0, v0}, Lcom/appsflyer/Foreground$2$4$5;-><init>(Lcom/appsflyer/Foreground$2$4;Landroid/content/Context;)V

    sget-wide v4, Lcom/appsflyer/Foreground;->CHECK_DELAY:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "Background task failed with a throwable: "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
