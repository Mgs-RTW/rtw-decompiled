.class Lcom/netease/lotr/Launcher$3;
.super Ljava/util/TimerTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher;->launch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lcom/netease/lotr/Launcher$3;->this$0:Lcom/netease/lotr/Launcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1073
    new-instance v0, Lcom/netease/lotr/Launcher$UpdateHandler;

    iget-object v1, p0, Lcom/netease/lotr/Launcher$3;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/lotr/Launcher$UpdateHandler;-><init>(Lcom/netease/lotr/Launcher;Landroid/os/Looper;)V

    const/4 v1, 0x1

    .line 1074
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
