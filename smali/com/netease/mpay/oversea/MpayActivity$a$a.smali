.class Lcom/netease/mpay/oversea/MpayActivity$a$a;
.super Ljava/lang/Object;
.source "MpayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayActivity$a;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/MpayActivity$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity$a$a;->a:Lcom/netease/mpay/oversea/MpayActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$a$a;->a:Lcom/netease/mpay/oversea/MpayActivity$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/MpayActivity$a;->c:Lcom/netease/mpay/oversea/MpayActivity;

    iget-object v2, v0, Lcom/netease/mpay/oversea/MpayActivity$a;->a:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/netease/mpay/oversea/MpayActivity$a;->b:Landroid/content/Intent;

    invoke-static {v1, v2, v0}, Lcom/netease/mpay/oversea/MpayActivity;->a(Lcom/netease/mpay/oversea/MpayActivity;Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method
