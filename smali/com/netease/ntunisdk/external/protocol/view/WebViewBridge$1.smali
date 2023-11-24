.class Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$1;
.super Ljava/lang/Object;
.source "WebViewBridge.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->access$000(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;)Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;->access$000(Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge;)Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/WebViewBridge$Callback;->callback(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
