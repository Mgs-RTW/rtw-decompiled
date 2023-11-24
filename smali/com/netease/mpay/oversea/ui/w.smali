.class public Lcom/netease/mpay/oversea/ui/w;
.super Lcom/netease/mpay/oversea/ui/m;
.source "WebViewLogin.java"


# instance fields
.field private r:Lcom/netease/mpay/oversea/ui/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/netease/mpay/oversea/ui/m;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/n/i/b/d;Lcom/netease/mpay/oversea/t/c/c;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__inherit_login_success:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v2, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__login_guest_bind_tips:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 102
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/w$d;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/w$d;-><init>(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/c;Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 103
    invoke-static {v1, v0, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V
    .locals 4

    .line 76
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 79
    :cond_0
    iget-object v0, p3, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 80
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/t/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 82
    new-instance p2, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v1, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 83
    sget-object p2, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p2, p3, :cond_1

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/n/i/b/d;Lcom/netease/mpay/oversea/t/c/c;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance p3, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-eqz v0, :cond_2

    .line 88
    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    :cond_2
    invoke-direct {p3, v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 89
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 90
    invoke-virtual {p2, p3, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    :cond_4
    invoke-interface {p3, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    :goto_0
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/w$c;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/netease/mpay/oversea/ui/w$c;-><init>(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v5, p3

    .line 53
    new-instance v18, Lcom/netease/mpay/oversea/n/k/b;

    iget-object v10, v8, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v8, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v12, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v13, v5, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v14, v5, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v15, v5, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    new-instance v17, Lcom/netease/mpay/oversea/ui/w$b;

    iget-object v2, v8, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 56
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v8, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/oversea/ui/w$b;-><init>(Lcom/netease/mpay/oversea/ui/w;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    const/16 v16, 0x0

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Lcom/netease/mpay/oversea/n/k/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;ZLcom/netease/mpay/oversea/n/k/g;)V

    .line 86
    invoke-virtual/range {v18 .. v18}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;Lcom/netease/mpay/oversea/ui/u$e;)Landroid/view/View;
    .locals 5

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/w;->p()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenStart(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/u;->b(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u$e;)Lcom/netease/mpay/oversea/ui/u;

    .line 17
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {p3, p1, p2}, Lcom/netease/mpay/oversea/ui/u;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$i;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/ui/h$i;-><init>()V

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 19
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p3

    .line 20
    invoke-virtual {p1, p2, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/h;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 8

    .line 24
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/e;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->k()V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    const-string v4, ""

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    goto/16 :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/e;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    const-string v4, ""

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->b(Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x1

    const-string v4, ""

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->n:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->m:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_7

    .line 43
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    new-instance p2, Lcom/netease/mpay/oversea/h/c;

    const/16 v0, 0x2713

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/e;->a(I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 11

    .line 46
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v2, :cond_0

    .line 47
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 50
    iget-object v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/c/g;

    .line 54
    :cond_1
    iget-object v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-nez v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 58
    :cond_2
    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 59
    :goto_0
    new-instance v0, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v3, p1, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/oversea/n/i/b/d;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/oversea/n/i/b/d;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v8, p1, Lcom/netease/mpay/oversea/n/i/b/d;->g:Ljava/lang/String;

    iget-object v9, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    iget-boolean v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->k:Z

    .line 61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->b(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->l:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->n:I

    .line 63
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->a(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    .line 64
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->c(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->q:I

    .line 65
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->b(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 66
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 68
    invoke-direct {p0, p1, v1, v0}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V

    .line 69
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 70
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, ""

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_4
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/ui/u;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/u;->k()V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 2
    iget v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/c;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->C:Lcom/netease/mpay/oversea/n/h;

    new-instance v4, Lcom/netease/mpay/oversea/ui/w$a;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/oversea/ui/w$a;-><init>(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/n/i/b/d;)V

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {v2, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    .line 27
    invoke-static {v0, v1, p1}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    :goto_0
    return-void
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->b()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->b()V

    :goto_0
    return-void
.end method

.method protected g()Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/w$e;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 12
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/h0;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/h0;-><init>()V

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/y;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/y;-><init>()V

    return-object v0

    .line 14
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/r;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/r;-><init>()V

    return-object v0

    .line 15
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/z;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/z;-><init>()V

    return-object v0

    .line 16
    :cond_3
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/a0;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/a0;-><init>()V

    return-object v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->e()V

    :cond_0
    return-void
.end method

.method public o()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->f()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 12
    :goto_0
    sget-object v3, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    .line 13
    iget-object v2, v0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    move-object v8, v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_4

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_6

    .line 18
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 19
    sget-object v3, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->H:Lcom/netease/mpay/oversea/n/h;

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v1

    move-object v7, v2

    goto :goto_3

    .line 23
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    move-object v6, v1

    move-object v7, v6

    move-object v8, v2

    goto :goto_4

    :cond_6
    move-object v6, v2

    move-object v7, v6

    :goto_3
    move-object v8, v7

    .line 27
    :goto_4
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    .line 28
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    goto :goto_5

    :cond_7
    const-string v0, ""

    :goto_5
    move-object v5, v0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v9, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v10, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 30
    invoke-static/range {v3 .. v10}, Lcom/netease/mpay/oversea/n/i/a/h$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    return-object v0

    :cond_a
    :goto_6
    return-object v2
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->j()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w;->r:Lcom/netease/mpay/oversea/ui/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->k()V

    :cond_0
    return-void
.end method
