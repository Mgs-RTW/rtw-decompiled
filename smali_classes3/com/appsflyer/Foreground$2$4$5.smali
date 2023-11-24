.class final Lcom/appsflyer/Foreground$2$4$5;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground$2$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$a:Lcom/appsflyer/Foreground$2$4;

.field private synthetic values:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground$2$4;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/appsflyer/Foreground$2$4$5;->$$a:Lcom/appsflyer/Foreground$2$4;

    iput-object p2, p0, Lcom/appsflyer/Foreground$2$4$5;->values:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/appsflyer/Foreground$2$4$5;->$$a:Lcom/appsflyer/Foreground$2$4;

    iget-object v0, v0, Lcom/appsflyer/Foreground$2$4;->values:Lcom/appsflyer/Foreground$2;

    iget-boolean v0, v0, Lcom/appsflyer/Foreground$2;->valueOf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/Foreground$2$4$5;->$$a:Lcom/appsflyer/Foreground$2$4;

    iget-object v0, v0, Lcom/appsflyer/Foreground$2$4;->values:Lcom/appsflyer/Foreground$2;

    iget-boolean v0, v0, Lcom/appsflyer/Foreground$2;->values:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/appsflyer/Foreground$2$4$5;->$$a:Lcom/appsflyer/Foreground$2$4;

    iget-object v0, v0, Lcom/appsflyer/Foreground$2$4;->values:Lcom/appsflyer/Foreground$2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/Foreground$2;->valueOf:Z

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/Foreground$2$4$5;->$$a:Lcom/appsflyer/Foreground$2$4;

    iget-object v0, v0, Lcom/appsflyer/Foreground$2$4;->values:Lcom/appsflyer/Foreground$2;

    iget-object v0, v0, Lcom/appsflyer/Foreground$2;->$$a:Lcom/appsflyer/Foreground$Listener;

    iget-object v1, p0, Lcom/appsflyer/Foreground$2$4$5;->values:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/appsflyer/Foreground$Listener;->onBecameBackground(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "Listener threw exception! "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
