.class Lcom/netease/mpay/oversea/o/g/c$f;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/OnSpanClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c;->a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/o/g/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFFRulesClicked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOutLinkClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    const-string p3, "child_protection_policy"

    const-string v0, "child_protection"

    invoke-virtual {p2, v0, p3}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->c(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 5
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/o/g/b;->c:Ljava/lang/String;

    aput-object v1, v0, p3

    iget-object p3, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p3}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/o/g/b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget-object p3, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p3}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/o/g/b;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const-string p3, "%s%s%s"

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "birthday"

    .line 7
    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/c;->b(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/c;->b(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/a;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/mpay/oversea/o/a;->b:Ljava/lang/String;

    const-string v0, "iso_code"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/widget/o;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "open:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/c;->d(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$f;->a:Lcom/netease/mpay/oversea/o/g/c;

    .line 14
    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->e(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v2, 0x0

    invoke-direct {p3, p1, v0, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/ui/s$a;)V

    .line 15
    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/ui/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    return v1

    :cond_1
    return p3
.end method

.method public onRealnameClicked()V
    .locals 0

    return-void
.end method

.method public onUrsRealnameClicked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
