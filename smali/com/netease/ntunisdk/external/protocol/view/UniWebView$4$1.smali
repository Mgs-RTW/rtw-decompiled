.class Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4$1;
.super Ljava/lang/Object;
.source "UniWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 532
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "webURL"

    .line 533
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;

    iget-object v2, v2, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4$1;->this$1:Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/view/UniWebView$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/UniWebView;

    const-string v2, "onPageError"

    invoke-static {v1, v0, v2}, Lcom/netease/ntunisdk/external/protocol/view/UniWebView;->access$700(Lcom/netease/ntunisdk/external/protocol/view/UniWebView;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 536
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
