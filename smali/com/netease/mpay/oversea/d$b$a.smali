.class Lcom/netease/mpay/oversea/d$b$a;
.super Ljava/lang/Object;
.source "GrowthyImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/d$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/d$b;->b(Lcom/netease/mpay/oversea/d$b;)I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/d$b;->c(Lcom/netease/mpay/oversea/d$b;)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/d$b;->a(Lcom/netease/mpay/oversea/d$b;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/d$b;->b()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/d$b;->e(Lcom/netease/mpay/oversea/d$b;)I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/d$b;->d(Lcom/netease/mpay/oversea/d$b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/d$b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/d$b;->f(Lcom/netease/mpay/oversea/d$b;)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/d$b;->d(Lcom/netease/mpay/oversea/d$b;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/d$b$a;->a:Lcom/netease/mpay/oversea/d$b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/d$b;->a()V

    :cond_0
    return-void
.end method
