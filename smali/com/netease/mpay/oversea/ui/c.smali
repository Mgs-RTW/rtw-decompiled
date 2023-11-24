.class public Lcom/netease/mpay/oversea/ui/c;
.super Lcom/netease/mpay/oversea/ui/a;
.source "ApiHandler.java"


# instance fields
.field private f:Lcom/netease/mpay/oversea/thirdapi/d;

.field private g:Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

.field private h:I

.field private i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/c;)Lcom/netease/mpay/oversea/SyncApiAuthCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/c;->i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    return-object p0
.end method

.method public static a(I)Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->v:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 9
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    return-object p0

    .line 10
    :cond_1
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->u:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 11
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/e0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/e0;-><init>()V

    return-object p0

    .line 12
    :cond_2
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->w:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    if-ne p0, v1, :cond_3

    .line 13
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/f0;-><init>()V

    return-object p0

    .line 14
    :cond_3
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    if-ne p0, v1, :cond_6

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/r/f;->K()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 16
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/o;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/o;-><init>()V

    return-object p0

    .line 17
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/r/f;->L()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 18
    new-instance p0, Lcom/netease/mpay/oversea/m/d;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/m/d;-><init>()V

    return-object p0

    .line 20
    :cond_5
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 4
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "channel_type"

    .line 6
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x1f

    .line 7
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/c;->f:Lcom/netease/mpay/oversea/thirdapi/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/c;->f:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/h/j/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "data"

    .line 21
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/c;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    const-string v0, "channel_type"

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/ui/c;->h:I

    .line 27
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;->a()Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 31
    :goto_0
    iget p1, p0, Lcom/netease/mpay/oversea/ui/c;->h:I

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/c;->a(I)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->f:Lcom/netease/mpay/oversea/thirdapi/d;

    if-nez p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz p1, :cond_0

    const/16 v0, 0xcd

    .line 34
    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/h;->a()V

    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/c$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/c$a;-><init>(Lcom/netease/mpay/oversea/ui/c;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method
