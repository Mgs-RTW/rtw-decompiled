.class Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;
.super Ljava/util/TimerTask;
.source "UniWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->loadingAlarm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Ljava/lang/String;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
