.class public Lcom/netease/mpay/oversea/ui/h;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/h$k;,
        Lcom/netease/mpay/oversea/ui/h$l;,
        Lcom/netease/mpay/oversea/ui/h$i;,
        Lcom/netease/mpay/oversea/ui/h$m;,
        Lcom/netease/mpay/oversea/ui/h$h;,
        Lcom/netease/mpay/oversea/ui/h$j;,
        Lcom/netease/mpay/oversea/ui/h$g;,
        Lcom/netease/mpay/oversea/ui/h$o;,
        Lcom/netease/mpay/oversea/ui/h$n;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/h;->b:Z

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/h;->c:Z

    .line 18
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    .line 19
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/h;->b:Z

    .line 20
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/ui/h;->c:Z

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3f0

    return p1

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3ef

    return p1

    :cond_1
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_2

    return p1

    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p1, 0x3ed

    return p1

    :pswitch_1
    const/16 p1, 0x3f1

    return p1

    :pswitch_2
    const/16 p1, 0x3eb

    return p1

    :pswitch_3
    const/16 p1, 0x3e9

    return p1

    :pswitch_4
    const/16 p1, 0x3e8

    return p1

    :pswitch_5
    const/16 p1, 0x3ea

    return p1

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V
    .locals 3

    .line 99
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->j()Lcom/netease/mpay/oversea/t/c/f;

    .line 101
    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->d(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p4}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onUserLogout()V

    .line 103
    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    goto :goto_1

    .line 105
    :cond_0
    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    instance-of v0, p3, Lcom/netease/mpay/oversea/ui/h$k;

    if-eqz v0, :cond_1

    .line 107
    check-cast p3, Lcom/netease/mpay/oversea/ui/h$k;

    iget p3, p3, Lcom/netease/mpay/oversea/ui/h$k;->j:I

    goto :goto_0

    :cond_1
    const/16 p3, 0x66

    .line 108
    :goto_0
    invoke-interface {p4, p1, p2, p3}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V
    .locals 11

    .line 117
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-nez p1, :cond_1

    .line 121
    new-instance p1, Lcom/netease/mpay/oversea/User;

    iget-object v2, p2, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/oversea/ui/h$k;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/h$k;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 123
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->b()I

    move-result v5

    iget-object v6, p2, Lcom/netease/mpay/oversea/ui/h$k;->d:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/oversea/ui/h$k;->g:Ljava/lang/String;

    iget v8, p2, Lcom/netease/mpay/oversea/ui/h$k;->j:I

    iget-object v9, p2, Lcom/netease/mpay/oversea/ui/h$k;->k:Ljava/lang/String;

    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/h$k;->h:Ljava/util/ArrayList;

    .line 126
    invoke-static {v0}, Lcom/netease/mpay/oversea/t/c/g;->a(Ljava/util/ArrayList;)[I

    move-result-object v10

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)V

    :cond_1
    if-eqz p3, :cond_4

    .line 129
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 130
    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/h$k;->o:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/e;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 132
    iget-boolean v0, p2, Lcom/netease/mpay/oversea/ui/h$k;->m:Z

    if-eqz v0, :cond_3

    .line 133
    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/h$k;->n:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lcom/netease/mpay/oversea/e;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/User;)V

    goto :goto_1

    .line 135
    :cond_3
    invoke-interface {p3, p1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onLoginSuccess(Lcom/netease/mpay/oversea/User;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/n/h;)V
    .locals 4

    .line 111
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    .line 115
    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/n/i/a/h$a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/ui/s$a;)V

    .line 116
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/ui/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/ui/h$i;Lcom/netease/mpay/oversea/e;)V
    .locals 13

    .line 143
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/ui/h$i;->d:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 146
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    new-instance v2, Lcom/netease/mpay/oversea/User;

    iget-object v4, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/netease/mpay/oversea/t/c/f;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    iget-object v3, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 152
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->b()I

    move-result v7

    iget-object v8, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v9, v1, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    iget v10, v1, Lcom/netease/mpay/oversea/t/c/f;->n:I

    iget-object v11, v1, Lcom/netease/mpay/oversea/t/c/f;->r:Ljava/lang/String;

    iget-object v0, v1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    .line 155
    invoke-static {v0}, Lcom/netease/mpay/oversea/t/c/g;->a(Ljava/util/ArrayList;)[I

    move-result-object v12

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 159
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 160
    invoke-interface {p2, v2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onDialogFinish(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 161
    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/h$j;->a(Lcom/netease/mpay/oversea/ui/h$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/h;->b(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_2

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivityStub;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/h;->b(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 177
    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/h/c;-><init>()V

    :goto_1
    new-instance v2, Lcom/netease/mpay/oversea/ui/h$e;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/h$e;-><init>(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/h;ILjava/lang/String;Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/ui/h;->a(ILjava/lang/String;Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/h;->b(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method private a(ZLcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V
    .locals 13

    move-object v6, p0

    .line 39
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips_ignore:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 42
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__force_bind_email_account:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 43
    iget-object v7, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    new-instance v10, Lcom/netease/mpay/oversea/ui/h$c;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, v8

    move-object/from16 v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/h$c;-><init>(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$k;Ljava/lang/String;Lcom/netease/mpay/oversea/e;Z)V

    new-instance v12, Lcom/netease/mpay/oversea/ui/h$d;

    move-object v0, v12

    move v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/h$d;-><init>(Lcom/netease/mpay/oversea/ui/h;ZLjava/lang/String;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    invoke-static/range {v7 .. v12}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V
    .locals 4

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/netease/mpay/oversea/ui/h$k;

    .line 2
    iget v1, v0, Lcom/netease/mpay/oversea/ui/h$k;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string p1, "Event:finishWithResult showBindGuide"

    .line 3
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/e;->b()V

    .line 7
    :cond_0
    iget p1, v0, Lcom/netease/mpay/oversea/ui/h$k;->i:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v2, v0, p2}, Lcom/netease/mpay/oversea/ui/h;->b(ZLcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 8
    :cond_2
    iget v1, v0, Lcom/netease/mpay/oversea/ui/h$k;->l:I

    if-eqz v1, :cond_5

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/e;->b()V

    :cond_3
    const-string p1, "Event:finishWithResult needBindEmail"

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 13
    iget p1, v0, Lcom/netease/mpay/oversea/ui/h$k;->l:I

    if-ne p1, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {p0, v2, v0, p2}, Lcom/netease/mpay/oversea/ui/h;->a(ZLcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    :cond_5
    const-string v1, "Event:finishWithResult -- finish"

    .line 15
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 16
    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/n/h;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 93
    sget-object v0, Lcom/netease/mpay/oversea/ui/h$o;->c:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/netease/mpay/oversea/h/c;->a:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 96
    invoke-interface {p3}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onUserLogout()V

    goto :goto_3

    :cond_1
    const/16 v0, 0x2711

    if-eqz p1, :cond_2

    .line 100
    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    if-eqz v1, :cond_2

    iget v0, v1, Lcom/netease/mpay/oversea/h/c;->a:I

    .line 102
    :cond_2
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/h;->a(I)I

    move-result v0

    if-eqz p1, :cond_3

    .line 103
    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, v1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, ""

    .line 105
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 106
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    if-eq v2, v3, :cond_5

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-ne v2, v3, :cond_4

    goto :goto_1

    .line 109
    :cond_4
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_error_cancel:I

    goto :goto_2

    .line 110
    :cond_5
    :goto_1
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__bind_error_cancel:I

    .line 111
    :goto_2
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_6
    instance-of p1, p1, Lcom/netease/mpay/oversea/ui/h$m;

    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 117
    invoke-virtual {p3, v0, v1, p2}, Lcom/netease/mpay/oversea/e;->a(ILjava/lang/String;I)V

    goto :goto_3

    .line 119
    :cond_7
    invoke-interface {p3, v0, v1, p2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    :goto_3
    return-void
.end method

.method private b(ZLcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V
    .locals 13

    move-object v6, p0

    .line 19
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_0

    .line 20
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips_ignore:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    if-eqz p1, :cond_1

    .line 22
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips_enforced:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_1
    iget-object v0, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bind_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    .line 24
    iget-object v7, v6, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    new-instance v10, Lcom/netease/mpay/oversea/ui/h$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, v8

    move-object/from16 v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/h$a;-><init>(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$k;Ljava/lang/String;Lcom/netease/mpay/oversea/e;Z)V

    new-instance v12, Lcom/netease/mpay/oversea/ui/h$b;

    move-object v0, v12

    move v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/h$b;-><init>(Lcom/netease/mpay/oversea/ui/h;ZLcom/netease/mpay/oversea/ui/h$k;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    invoke-static/range {v7 .. v12}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/h$g;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 136
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/netease/mpay/oversea/ui/h$n;->a:Lcom/netease/mpay/oversea/ui/h$n;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/h$g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 139
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/h$g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 142
    :goto_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/ui/h$g;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    instance-of v0, p1, Lcom/netease/mpay/oversea/ui/h$k;

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/ui/h;->b:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 189
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/h;->c:Z

    if-nez v0, :cond_2

    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivityStub;

    if-nez v1, :cond_3

    instance-of v0, v0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz v0, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    sget-object v1, Lcom/netease/mpay/oversea/ui/h$n;->a:Lcom/netease/mpay/oversea/ui/h$n;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 197
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V
    .locals 3

    const-string v0, "Event:finishWithResult"

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "Event:finishWithResult callback is null"

    .line 12
    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    return-void

    .line 17
    :cond_1
    sget-object v0, Lcom/netease/mpay/oversea/ui/h$f;->a:[I

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const/16 v2, 0x66

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    check-cast p1, Lcom/netease/mpay/oversea/ui/h$i;

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$i;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 33
    :cond_3
    check-cast p1, Lcom/netease/mpay/oversea/ui/h$m;

    invoke-direct {p0, p1, v2, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 34
    :cond_4
    check-cast p1, Lcom/netease/mpay/oversea/ui/h$l;

    invoke-direct {p0, p1, v2, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 35
    :cond_5
    check-cast p1, Lcom/netease/mpay/oversea/ui/h$h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/h$h;->a(Lcom/netease/mpay/oversea/ui/h$h;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_0

    :cond_6
    const-string v0, "Event:finishWithResult LOGIN_SUCCESS is null"

    .line 36
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/h;->b(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void

    :cond_7
    :goto_1
    const-string p1, "Event:finishWithResult activity is null"

    .line 38
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-void
.end method
