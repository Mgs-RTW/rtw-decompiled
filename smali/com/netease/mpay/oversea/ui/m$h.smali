.class Lcom/netease/mpay/oversea/ui/m$h;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/a0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/oversea/n/h;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/m;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m$h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m$h;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/m$h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m$h;->c(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/n/i/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m$h;->d(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    if-ne v2, v1, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    .line 13
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->e()Lcom/netease/mpay/oversea/t/f/f;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/f;->c()Lcom/netease/mpay/oversea/t/c/h;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/h;->a()V

    .line 18
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/f/f;->a(Lcom/netease/mpay/oversea/t/c/h;)V

    .line 20
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m$h;->c(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    :goto_0
    return-void
.end method

.method private c(Lcom/netease/mpay/oversea/h/c;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/oversea/ui/m$h$k;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/m$h$k;-><init>(Lcom/netease/mpay/oversea/ui/m$h;)V

    new-instance v5, Lcom/netease/mpay/oversea/ui/m$h$a;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/m$h$a;-><init>(Lcom/netease/mpay/oversea/ui/m$h;)V

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    if-eqz p3, :cond_0

    .line 27
    sget-object p3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 28
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    iput-object p3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 29
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v0, v1, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 32
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 33
    invoke-virtual {p3, v0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__switch_same_account_warning:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2
    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 3
    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/m$h$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m$h$b;-><init>(Lcom/netease/mpay/oversea/ui/m$h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    .line 4
    invoke-static {v1, v0, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->c()V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 10

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiStateImpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 26
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/ui/m;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1, v0, v1, p2}, Lcom/netease/mpay/oversea/ui/m;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/h/c;)V

    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->g:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    const/16 p2, 0x2717

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2719

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2718

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 42
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 43
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v4, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_tips:I

    new-array v0, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v4, p2, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/netease/mpay/oversea/ui/m$h$e;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/m$h$e;-><init>(Lcom/netease/mpay/oversea/ui/m$h;)V

    new-instance v9, Lcom/netease/mpay/oversea/ui/m$h$f;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/ui/m$h$f;-><init>(Lcom/netease/mpay/oversea/ui/m$h;)V

    invoke-static/range {v4 .. v9}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/ui/m$h$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/m$h$d;-><init>(Lcom/netease/mpay/oversea/ui/m$h;)V

    invoke-virtual {p2, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 104
    :cond_3
    sget-object p1, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    if-ne p1, v1, :cond_6

    .line 105
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->p:Lcom/netease/mpay/oversea/k/j;

    new-instance v0, Lcom/netease/mpay/oversea/k/i;

    invoke-direct {v0, p2}, Lcom/netease/mpay/oversea/k/i;-><init>(Lcom/netease/mpay/oversea/h/c;)V

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/k/j;->a(Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_6

    .line 106
    iget p1, p2, Lcom/netease/mpay/oversea/h/c;->a:I

    const/16 v0, 0x271b

    if-ne p1, v0, :cond_6

    .line 109
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 110
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 111
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v4, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    if-nez p2, :cond_5

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_retry:I

    new-array v0, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v4, p2, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_2

    :cond_5
    move-object v5, p2

    :goto_2
    new-instance v7, Lcom/netease/mpay/oversea/ui/m$h$g;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/m$h$g;-><init>(Lcom/netease/mpay/oversea/ui/m$h;)V

    new-instance v9, Lcom/netease/mpay/oversea/ui/m$h$h;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/ui/m$h$h;-><init>(Lcom/netease/mpay/oversea/ui/m$h;)V

    invoke-static/range {v4 .. v9}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/m$h$i;

    invoke-direct {v1, p0, p2}, Lcom/netease/mpay/oversea/ui/m$h$i;-><init>(Lcom/netease/mpay/oversea/ui/m$h;Lcom/netease/mpay/oversea/h/c;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 4

    const-string v0, "Event:ApiStateImpl\uff1aonSuccess"

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->p:Lcom/netease/mpay/oversea/k/j;

    new-instance v2, Lcom/netease/mpay/oversea/k/i;

    invoke-direct {v2, p2}, Lcom/netease/mpay/oversea/k/i;-><init>(Lcom/netease/mpay/oversea/n/i/b/d;)V

    invoke-interface {v1, v2}, Lcom/netease/mpay/oversea/k/j;->a(Lcom/netease/mpay/oversea/k/c;)Z

    .line 5
    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v2, :cond_0

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->e:Ljava/lang/String;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 9
    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/m$h$c;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m$h$c;-><init>(Lcom/netease/mpay/oversea/ui/m$h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    const/4 p1, 0x0

    .line 10
    invoke-static {v0, v1, p1, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "Event:ApiStateImpl\uff1afilterSameAccounts"

    .line 20
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m$h;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    :goto_0
    return-void
.end method

.method public b()Lcom/netease/mpay/oversea/n/h;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    return-object v0
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->g:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/m$h;->c(Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$h$j;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/oversea/ui/m$h$j;-><init>(Lcom/netease/mpay/oversea/ui/m$h;Lcom/netease/mpay/oversea/h/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
