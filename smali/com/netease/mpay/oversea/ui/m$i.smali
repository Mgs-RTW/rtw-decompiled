.class Lcom/netease/mpay/oversea/ui/m$i;
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
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/m;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/ui/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/ui/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/m$i;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/n/h;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$i$c;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/oversea/ui/m$i$c;-><init>(Lcom/netease/mpay/oversea/ui/m$i;Lcom/netease/mpay/oversea/n/h;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m$i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/m$i;->d()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m$i;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/m$i;->a(Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m$i;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m$i;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 133
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 134
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v5, Lcom/netease/mpay/oversea/ui/m$i$a;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/m$i$a;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/m$i$b;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/m$i$b;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 10

    .line 79
    new-instance v9, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/oversea/n/i/b/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v6, p2, Lcom/netease/mpay/oversea/n/i/b/d;->g:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    iget-boolean v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->k:Z

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->l:Ljava/lang/String;

    .line 82
    invoke-virtual {v9, v0}, Lcom/netease/mpay/oversea/t/c/f$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    .line 83
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->b(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->o:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->n:I

    .line 85
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->a(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->c(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->q:I

    .line 87
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->b(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 88
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/r/f;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/i/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/n/i/b/e;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v2, :cond_2

    .line 94
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/r/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$i$j;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/netease/mpay/oversea/ui/m$i$j;-><init>(Lcom/netease/mpay/oversea/ui/m$i;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/m;->o:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 104
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    const-string v0, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1afinishWithResult"

    .line 105
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v0, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 108
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 109
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :goto_1
    return-void
.end method

.method private a(ZZLcom/netease/mpay/oversea/h/c;)V
    .locals 8

    .line 147
    iget v0, p3, Lcom/netease/mpay/oversea/h/c;->a:I

    const/16 v1, 0x271e

    if-eq v1, v0, :cond_1

    const/16 v1, 0x271d

    if-eq v1, v0, :cond_1

    const/16 v1, 0x2713

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 161
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 162
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v3, p3, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/oversea/ui/m$i$e;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/m$i$e;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/m$i$f;

    invoke-direct {v7, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m$i$f;-><init>(Lcom/netease/mpay/oversea/ui/m$i;ZZ)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mpay/oversea/ui/m$i$d;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/ui/m$i$d;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    invoke-static {p1, p3, p2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/m$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/m$i;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 11

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_account_changed:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v8, Lcom/netease/mpay/oversea/ui/m$i$l;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/ui/m$i$l;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    new-instance v10, Lcom/netease/mpay/oversea/ui/m$i$m;

    invoke-direct {v10, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m$i$m;-><init>(Lcom/netease/mpay/oversea/ui/m$i;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    invoke-static/range {v5 .. v10}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_new_guest_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/m$i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v2, v1, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v2, v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bounded_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/m$i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/m$i;->f()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ui/m$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/m$i;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v0}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/ui/m;->f:Z

    .line 2
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$i$k;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/m$i$k;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_tips:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-static {v2, v1, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/oversea/ui/m$i$n;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/m$i$n;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/m$i$o;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/m$i$o;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->c()V

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v1, v0, :cond_4

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 30
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guide_msg:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_expired:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    move-object v3, v0

    .line 38
    new-instance v0, Lcom/netease/mpay/oversea/widget/f;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/widget/f;-><init>()V

    const-string v1, "login_guide"

    const-string v2, "login"

    const-string v4, "close"

    invoke-virtual {v0, v1, v2, v4}, Lcom/netease/mpay/oversea/widget/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/f;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v0, 0x0

    .line 39
    invoke-static {v2, v4, v0}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/oversea/ui/m$i$h;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/ui/m$i$h;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    new-instance v7, Lcom/netease/mpay/oversea/ui/m$i$i;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/m$i$i;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/widget/f;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/b$c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 41
    :cond_4
    :goto_1
    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/ui/R$string;->netease_mpay_oversea__login_expired:I

    .line 42
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/n/f;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$i$g;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/m$i$g;-><init>(Lcom/netease/mpay/oversea/ui/m$i;)V

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_2
    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 5

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginWithGuideStateImpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/ui/m;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1, v0, v1, p2}, Lcom/netease/mpay/oversea/ui/m;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_2

    .line 119
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m$i;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x2717

    if-ne p1, v3, :cond_3

    if-nez p2, :cond_2

    .line 122
    new-instance p2, Lcom/netease/mpay/oversea/h/c;

    const/16 v3, 0x2716

    const-string v4, ""

    invoke-direct {p2, v3, v4}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    .line 124
    :cond_2
    iget-object v3, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_google_unsupported:I

    invoke-static {v3, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 129
    :cond_3
    sget-object v3, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m$i;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v4

    if-ne v3, v4, :cond_4

    const/16 v3, 0x2712

    if-eq p1, v3, :cond_5

    const/16 v3, 0x2714

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 130
    :cond_5
    :goto_1
    invoke-direct {p0, v0, v1, p2}, Lcom/netease/mpay/oversea/ui/m$i;->a(ZZLcom/netease/mpay/oversea/h/c;)V

    :goto_2
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m$i;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 2

    const-string v0, "Event:LoginWithGuideStateImpl\uff1aonSuccess"

    .line 57
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p3, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1aisNewGuest"

    .line 59
    invoke-static {p3}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 60
    sget-object p3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object p3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 61
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, p3, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 63
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 64
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_1

    .line 67
    :cond_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1aswitch user"

    .line 73
    invoke-static {p3}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m$i;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p3, "Event:LoginWithGuideStateImpl\uff1aonSuccess \uff1alast user"

    .line 76
    invoke-static {p3}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m$i;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    :goto_1
    return-void
.end method

.method public b()Lcom/netease/mpay/oversea/n/h;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    return-object v0
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 5

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m$i;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v3

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v3, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m$i;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/ui/m$i;->a(ZZLcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
