.class Lcom/netease/lotr/InputView$5;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/InputView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/InputView;


# direct methods
.method constructor <init>(Lcom/netease/lotr/InputView;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/netease/lotr/InputView$5;->this$0:Lcom/netease/lotr/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 183
    iget-object p1, p0, Lcom/netease/lotr/InputView$5;->this$0:Lcom/netease/lotr/InputView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/lotr/InputView;->inputFinish(Z)V

    .line 184
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 185
    new-instance v0, Lcom/netease/lotr/InputView$5$1;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$5$1;-><init>(Lcom/netease/lotr/InputView$5;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
