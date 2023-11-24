.class Lcom/netease/push/utils/ApplicationLifeListener$1;
.super Ljava/lang/Object;
.source "ApplicationLifeListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/utils/ApplicationLifeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/push/utils/ApplicationLifeListener;


# direct methods
.method constructor <init>(Lcom/netease/push/utils/ApplicationLifeListener;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-static {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->access$008(Lcom/netease/push/utils/ApplicationLifeListener;)I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-static {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->access$010(Lcom/netease/push/utils/ApplicationLifeListener;)I

    .line 50
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-static {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->access$000(Lcom/netease/push/utils/ApplicationLifeListener;)I

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-virtual {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->onExit()V

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
    .locals 1

    .line 18
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-static {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->access$108(Lcom/netease/push/utils/ApplicationLifeListener;)I

    .line 19
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-static {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->access$100(Lcom/netease/push/utils/ApplicationLifeListener;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 20
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-virtual {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->onEnterFront()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-static {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->access$110(Lcom/netease/push/utils/ApplicationLifeListener;)I

    .line 37
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-static {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->access$100(Lcom/netease/push/utils/ApplicationLifeListener;)I

    move-result p1

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/netease/push/utils/ApplicationLifeListener$1;->this$0:Lcom/netease/push/utils/ApplicationLifeListener;

    invoke-virtual {p1}, Lcom/netease/push/utils/ApplicationLifeListener;->onEnterBackground()V

    :cond_0
    return-void
.end method
