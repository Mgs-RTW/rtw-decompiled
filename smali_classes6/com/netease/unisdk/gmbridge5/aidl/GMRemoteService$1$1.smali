.class Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1$1;
.super Ljava/lang/Object;
.source "GMRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1;->send(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1;

.field final synthetic val$gmWebviewActivity:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1$1;->this$1:Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1$1;->val$gmWebviewActivity:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1$1;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1$1;->val$gmWebviewActivity:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1$1;->val$params:Ljava/lang/String;

    const-string v2, "gmsdk.gmbridge_call_js"

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
