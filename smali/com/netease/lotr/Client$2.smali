.class Lcom/netease/lotr/Client$2;
.super Landroid/telephony/PhoneStateListener;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->onCreate(Landroid/os/Bundle;)V
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

    .line 398
    iput-object p1, p0, Lcom/netease/lotr/Client$2;->this$0:Lcom/netease/lotr/Client;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const-string p1, "NeoX"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RINGING, number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/netease/lotr/Client$2;->this$0:Lcom/netease/lotr/Client;

    invoke-virtual {p1, v0}, Lcom/netease/lotr/Client;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p2, -0x1

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/netease/lotr/Client$2;->this$0:Lcom/netease/lotr/Client;

    invoke-static {p1}, Lcom/netease/lotr/Client;->access$500(Lcom/netease/lotr/Client;)I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 408
    iget-object p1, p0, Lcom/netease/lotr/Client$2;->this$0:Lcom/netease/lotr/Client;

    invoke-static {p1}, Lcom/netease/lotr/Client;->access$500(Lcom/netease/lotr/Client;)I

    move-result p1

    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnNetworkChanged(II)V

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/netease/lotr/Client$2;->this$0:Lcom/netease/lotr/Client;

    invoke-static {p1, p2}, Lcom/netease/lotr/Client;->access$502(Lcom/netease/lotr/Client;I)I

    return-void
.end method
