.class Lcom/netease/unisdk/gmbridge/data/DataManager$1;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/data/DataManager;->requestData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/data/DataManager;

.field final synthetic val$needParseMenu:Z


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/data/DataManager;Z)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager$1;->this$0:Lcom/netease/unisdk/gmbridge/data/DataManager;

    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager$1;->val$needParseMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setToken(Ljava/lang/String;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager$1;->this$0:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->access$002(Lcom/netease/unisdk/gmbridge/data/DataManager;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "gm_bridge DataManager"

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager$1;->this$0:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->access$000(Lcom/netease/unisdk/gmbridge/data/DataManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager$1;->this$0:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->access$100(Lcom/netease/unisdk/gmbridge/data/DataManager;)V

    .line 227
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager$1;->this$0:Lcom/netease/unisdk/gmbridge/data/DataManager;

    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager$1;->val$needParseMenu:Z

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->access$200(Lcom/netease/unisdk/gmbridge/data/DataManager;Z)V

    return-void
.end method
