.class Lcom/netease/mpay/oversea/n/l/h$e;
.super Lcom/netease/mpay/oversea/widget/e;
.source "PassportLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/h;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/l/e/e;

.field final synthetic c:Lcom/netease/mpay/oversea/n/l/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/h;Lcom/netease/mpay/oversea/l/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$e;->c:Lcom/netease/mpay/oversea/n/l/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/h$e;->b:Lcom/netease/mpay/oversea/l/e/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/h$e;->c:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/h;->f(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "neteasegames_login_policy"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$e;->b:Lcom/netease/mpay/oversea/l/e/e;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/e;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$e;->c:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/h;->g(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/h$e;->b:Lcom/netease/mpay/oversea/l/e/e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/l/e/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/l/h$e;->c:Lcom/netease/mpay/oversea/n/l/h;

    .line 4
    invoke-static {v2}, Lcom/netease/mpay/oversea/n/l/h;->h(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/ui/s$a;)V

    .line 5
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    :cond_0
    return-void
.end method
