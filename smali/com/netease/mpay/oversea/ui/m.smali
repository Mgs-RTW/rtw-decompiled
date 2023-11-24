.class public Lcom/netease/mpay/oversea/ui/m;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/k/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/m$i;,
        Lcom/netease/mpay/oversea/ui/m$h;,
        Lcom/netease/mpay/oversea/ui/m$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/k/g<",
        "Lcom/netease/mpay/oversea/k/f;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/netease/mpay/oversea/t/c/g;

.field protected b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field protected c:Lcom/netease/mpay/oversea/t/c/f;

.field protected d:Lcom/netease/mpay/oversea/ui/a0/b;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field protected g:Lcom/netease/mpay/oversea/thirdapi/d;

.field protected h:Z

.field protected i:Z

.field protected j:Landroid/app/Activity;

.field protected k:Lcom/netease/mpay/oversea/ui/h;

.field protected l:Lcom/netease/mpay/oversea/n/d;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Lcom/netease/mpay/oversea/k/j;

.field protected q:Lcom/netease/mpay/oversea/ui/z/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->i:Z

    .line 17
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    .line 19
    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    .line 20
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 21
    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    .line 24
    new-instance p5, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-direct {p5, v0, p2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    .line 25
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/k/j;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->p:Lcom/netease/mpay/oversea/k/j;

    if-eqz p4, :cond_0

    .line 27
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object p2, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/r/f;->c(Lcom/netease/mpay/oversea/n/h;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/m;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m;->b(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/t/c/g;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/m;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/m;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->m:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 5

    .line 36
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->G:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 39
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/k;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 43
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/h;->a()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/netease/mpay/oversea/widget/c;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/widget/c;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/m$f;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/m$f;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/widget/c;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/c;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$e;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/m$e;-><init>(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/n/h;)V

    .line 55
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/widget/c;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/c;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/k/j;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/netease/mpay/oversea/k/e;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/k/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/mpay/oversea/k/e;->b(Lcom/netease/mpay/oversea/k/g;)Lcom/netease/mpay/oversea/k/j;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/h/j/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m$c;-><init>(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/thirdapi/g;)V
    .locals 1

    const-string v0, "dealApiLoginFailed"

    .line 11
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/m;->b(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;

    move-result-object p1

    .line 13
    iget v0, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ui/m;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/m$d;

    invoke-direct {v1, p0, p2, p3}, Lcom/netease/mpay/oversea/ui/m$d;-><init>(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/h/c;)V

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->g()Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    const-string v1, ", this:"

    const-string v2, "Event:LoginTask state:"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v10, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 22
    invoke-virtual {v0, v3, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v9, 0x0

    move-object v5, p2

    .line 23
    invoke-static/range {v4 .. v11}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->l:Lcom/netease/mpay/oversea/n/d;

    .line 27
    iput-object p1, v0, Lcom/netease/mpay/oversea/n/d;->l:Ljava/lang/String;

    .line 28
    iput-object p2, v0, Lcom/netease/mpay/oversea/n/d;->k:Ljava/lang/String;

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 30
    new-instance p1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->l:Lcom/netease/mpay/oversea/n/d;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_8

    .line 35
    :cond_3
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->i:Z

    if-eqz v0, :cond_7

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v0

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 39
    iget-object v4, v0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    if-eqz v0, :cond_5

    .line 40
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v8, v3

    goto :goto_4

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_7

    .line 43
    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 44
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    :goto_3
    move-object v8, v0

    :goto_4
    move-object v7, v4

    goto :goto_5

    :cond_7
    move-object v7, v3

    move-object v8, v7

    .line 48
    :goto_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v5

    .line 50
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    :cond_8
    :goto_6
    move-object v9, v3

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    goto :goto_6

    :goto_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 52
    invoke-virtual {v0, v3, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v10, 0x1

    move-object v6, p2

    .line 53
    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->l:Lcom/netease/mpay/oversea/n/d;

    .line 58
    iput-object p1, v0, Lcom/netease/mpay/oversea/n/d;->l:Ljava/lang/String;

    .line 59
    iput-object p2, v0, Lcom/netease/mpay/oversea/n/d;->k:Ljava/lang/String;

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 61
    new-instance p1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->l:Lcom/netease/mpay/oversea/n/d;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 62
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_8
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/h/j/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 73
    instance-of p1, p2, Lcom/netease/mpay/oversea/k/a;

    if-eqz p1, :cond_0

    .line 74
    check-cast p2, Lcom/netease/mpay/oversea/k/a;

    iget-object p1, p2, Lcom/netease/mpay/oversea/k/a;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/k/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/h/c;)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 64
    iget-object v0, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guide_msg:I

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 66
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p1

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 68
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    invoke-direct {v1, v3, p2, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 69
    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 4
    check-cast p1, Lcom/netease/mpay/oversea/k/f;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    const/16 v2, 0x2716

    const/16 v3, 0x271a

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_2

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/g;->c:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_error_cancel:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v3, p1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 12
    :cond_2
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_3

    .line 13
    new-instance p1, Lcom/netease/mpay/oversea/h/c;

    const-string v0, ""

    invoke-direct {p1, v3, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p1, Lcom/netease/mpay/oversea/thirdapi/g;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/g$a;->b:Lcom/netease/mpay/oversea/thirdapi/g$a;

    if-ne v0, v1, :cond_4

    const/16 v2, 0x271a

    .line 19
    :cond_4
    new-instance v0, Lcom/netease/mpay/oversea/n/g$b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/n/g$b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 20
    invoke-static {v1, v3, v5}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/n/g$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    const/4 v3, -0x1

    if-eqz p1, :cond_5

    .line 21
    iget-object v5, p1, Lcom/netease/mpay/oversea/thirdapi/g;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;Ljava/lang/Integer;)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n/g$b;->a()Lcom/netease/mpay/oversea/n/g;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/netease/mpay/oversea/h/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n/g;->b()Ljava/lang/String;

    .line 25
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    if-eqz v0, :cond_7

    .line 26
    new-instance v0, Lcom/netease/mpay/oversea/n/g$b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/netease/mpay/oversea/n/g$b;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_retry:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    aput-object v6, v4, v7

    .line 27
    invoke-static {v2, v5, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/n/g$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    if-eqz p1, :cond_6

    .line 28
    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/g;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;Ljava/lang/Integer;)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g$b;->a()Lcom/netease/mpay/oversea/n/g;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->b()Ljava/lang/String;

    :cond_7
    return-object v1

    .line 32
    :cond_8
    :goto_2
    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/g;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/g$a;->b:Lcom/netease/mpay/oversea/thirdapi/g$a;

    if-ne p1, v0, :cond_9

    .line 33
    new-instance p1, Lcom/netease/mpay/oversea/h/c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_error_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 35
    :cond_9
    new-instance p1, Lcom/netease/mpay/oversea/h/c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_network_err_others:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method protected c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/d;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->w:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_vk_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->l:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_wechat_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->A:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_tiktok_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->u:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_twitter_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->L:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_4

    const-string v0, ""

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    new-instance v2, Lcom/netease/mpay/oversea/h/c;

    const/16 v3, 0x2716

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3, v2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    .line 20
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_7

    .line 23
    invoke-static {v1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/m;->f:Z

    new-instance v3, Lcom/netease/mpay/oversea/ui/m$g;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/m$g;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/thirdapi/e;)V

    goto :goto_2

    .line 34
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$b;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/m$b;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method protected d()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, "dealApiLoginCancel"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/g$a;->b:Lcom/netease/mpay/oversea/thirdapi/g$a;

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ui/m;->b(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;

    move-result-object v0

    const/16 v1, 0x2713

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/netease/mpay/oversea/ui/m;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->e()V

    return-void
.end method

.method protected g()Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/netease/mpay/oversea/ui/a0/b;
    .locals 6

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/d;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->d()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 6
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/ui/m$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/ui/m$i;-><init>(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/ui/m$a;)V

    return-object v0

    .line 9
    :cond_5
    new-instance v0, Lcom/netease/mpay/oversea/ui/m$h;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/m$h;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/j/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->e()V

    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->e()V

    :cond_1
    return v1
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/j/a;->b()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/j/a;->c()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->f()Lcom/netease/mpay/oversea/h/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/j/a;->d()V

    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->i:Z

    .line 2
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->h()Lcom/netease/mpay/oversea/ui/a0/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->f:Z

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->g()Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->i:Z

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/d;->a()Lcom/netease/mpay/oversea/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d;->d()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v3, v0, :cond_2

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v3, v3, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v3

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    if-eq v3, v4, :cond_6

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->r:Lcom/netease/mpay/oversea/n/h;

    if-eq v3, v4, :cond_6

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    if-ne v3, v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v5, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v4, v5, :cond_5

    sget-object v5, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v4, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x1

    .line 19
    :goto_2
    invoke-static {v3}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 20
    new-instance v3, Lcom/netease/mpay/oversea/t/b;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v3

    if-eqz v4, :cond_7

    .line 22
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    .line 24
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->i:Z

    if-nez v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_a

    .line 26
    new-instance v3, Lcom/netease/mpay/oversea/ui/j;

    invoke-direct {v3}, Lcom/netease/mpay/oversea/ui/j;-><init>()V

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v6, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    new-instance v8, Lcom/netease/mpay/oversea/ui/m$a;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/ui/m$a;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    invoke-virtual/range {v3 .. v8}, Lcom/netease/mpay/oversea/ui/j;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/ui/j$g;)V

    goto :goto_4

    .line 50
    :cond_a
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/a0/b;->a()V

    :goto_4
    return v2
.end method
