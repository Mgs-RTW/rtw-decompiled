.class Lcom/netease/mpay/oversea/o/g/c$e;
.super Lcom/netease/mpay/oversea/widget/d;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/o/g/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection"

    const-string v1, "child_protection_continue"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->b(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->l(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_location_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object p1

    iget p1, p1, Lcom/netease/mpay/oversea/o/g/b;->a:I

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/oversea/o/g/b;->a:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v1

    iget v1, v1, Lcom/netease/mpay/oversea/o/g/b;->a:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/h/l/g;->a(III)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->v(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_date_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->w(Lcom/netease/mpay/oversea/o/g/c;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "%s-%s-%s"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p1, :cond_2

    .line 14
    :try_start_1
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {p1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_2
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    .line 17
    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    .line 18
    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 19
    invoke-static {p1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 23
    :goto_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "%s%s%s"

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->c:Ljava/lang/String;

    aput-object v6, v4, v3

    iget-object v3, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v3}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/o/g/b;->c:Ljava/lang/String;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/g/b;->c:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v1, p1, v0}, Lcom/netease/mpay/oversea/o/g/c;->a(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$e;->d:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->x(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_date_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
