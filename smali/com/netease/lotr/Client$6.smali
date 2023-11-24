.class Lcom/netease/lotr/Client$6;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/netease/pushclient/PushManager$PushManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->requestPushService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Client;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;)V
    .locals 0

    .line 1918
    iput-object p1, p0, Lcom/netease/lotr/Client$6;->this$0:Lcom/netease/lotr/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NeoX"

    .line 1930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushManager Init Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object p1, p0, Lcom/netease/lotr/Client$6;->this$0:Lcom/netease/lotr/Client;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/netease/lotr/Client;->m_is_push_manager_init:Z

    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .line 1922
    invoke-static {}, Lcom/netease/pushclient/PushManager;->startService()V

    .line 1923
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getDevId()Ljava/lang/String;

    .line 1924
    iget-object v0, p0, Lcom/netease/lotr/Client$6;->this$0:Lcom/netease/lotr/Client;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/lotr/Client;->m_is_push_manager_init:Z

    return-void
.end method
