.class public Lcom/netease/mpay/oversea/ui/r;
.super Lcom/netease/mpay/oversea/ui/a;
.source "UserCenterHandler.java"


# instance fields
.field protected f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/t/c/f;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/netease/mpay/oversea/k/l;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/r;->j:Z

    .line 10
    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/z/c;->c(Landroid/app/Activity;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/r;)Lcom/netease/mpay/oversea/k/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    return-object p0
.end method

.method private a(Lcom/netease/mpay/oversea/k/h;)V
    .locals 5

    .line 118
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/h;->d()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/h;->c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 121
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/h;->b()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x1e

    if-ne v2, v0, :cond_7

    .line 137
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/h;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/h;->e()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p1

    .line 139
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 140
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 142
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v4

    invoke-direct {v0, v2, v1, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 143
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 144
    new-instance p1, Lcom/netease/mpay/oversea/ui/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v4, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v1, v2, v0, v4}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 145
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto/16 :goto_1

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 148
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v4

    invoke-direct {v0, v2, v1, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 149
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 150
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v4, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v1, v2, v0, v4}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 151
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto/16 :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p1

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/a;->i(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    .line 157
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    instance-of p1, p1, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 158
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 159
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 160
    new-instance v0, Lcom/netease/mpay/oversea/ui/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v4, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 161
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_1

    .line 162
    :cond_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    instance-of p1, p1, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 163
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 164
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 165
    new-instance v0, Lcom/netease/mpay/oversea/ui/n;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v4, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v4, v1, v3}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 166
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_1

    .line 168
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 18

    move-object/from16 v7, p0

    .line 169
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_2

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/t/c/g;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/netease/mpay/oversea/ui/f;

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, v7, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v4, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v5, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v5, v2, v1}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 172
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto/16 :goto_1

    .line 173
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/t/c/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Lcom/netease/mpay/oversea/ui/n;

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, v7, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v4, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v5, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v5, v2, v1}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 175
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto/16 :goto_1

    .line 177
    :cond_1
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto/16 :goto_1

    .line 180
    :cond_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    .line 181
    new-instance v6, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v1

    invoke-direct {v6, v2, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 183
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    invoke-virtual {v6, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 184
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    new-instance v17, Lcom/netease/mpay/oversea/n/k/b;

    iget-object v9, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v12, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v13, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v14, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    new-instance v16, Lcom/netease/mpay/oversea/ui/r$c;

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    .line 189
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/ui/r$c;-><init>(Lcom/netease/mpay/oversea/ui/r;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    const/4 v15, 0x0

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v16}, Lcom/netease/mpay/oversea/n/k/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;ZLcom/netease/mpay/oversea/n/k/g;)V

    .line 250
    invoke-virtual/range {v17 .. v17}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_1

    .line 252
    :cond_4
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 253
    :cond_5
    iget-object v0, v7, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/h$i;-><init>()V

    iget-object v2, v7, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 255
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private k()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/netease/mpay/oversea/u/b/a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    new-instance v4, Lcom/netease/mpay/oversea/ui/r$b;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v4, p0, v2, v0, v5}, Lcom/netease/mpay/oversea/ui/r$b;-><init>(Lcom/netease/mpay/oversea/ui/r;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netease/mpay/oversea/u/b/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/h/h;)V

    .line 53
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 257
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(IILandroid/content/Intent;)V

    .line 258
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/ui/z/b;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/z/b;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    const-string p1, "data"

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/k/l;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/k/l;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    const-string v1, "NAV_TAB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/k/l;->b(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    const-string v1, "NAV_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/k/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/h$i;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/l;->f()Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->U()Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/h/c;

    const/16 v4, 0x3ef

    invoke-direct {v3, v4, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 23
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/d/b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    goto :goto_2

    .line 35
    :cond_3
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    .line 38
    :goto_2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->Q()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 40
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/h/c;

    const/16 v4, 0x3f0

    invoke-direct {v3, v4, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 43
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v1

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void

    .line 51
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/netease/mpay/oversea/ui/r;->h:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 52
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    :cond_6
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->i:Ljava/lang/String;

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 53
    :goto_4
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ui/r;->j:Z

    .line 54
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/l;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "restore_account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p1, :cond_9

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, p1, :cond_8

    .line 56
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 58
    :cond_8
    new-instance v1, Lcom/netease/mpay/oversea/ui/j;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/j;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/r;->g:Lcom/netease/mpay/oversea/t/c/f;

    new-instance v6, Lcom/netease/mpay/oversea/ui/r$a;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/ui/r$a;-><init>(Lcom/netease/mpay/oversea/ui/r;)V

    invoke-virtual/range {v1 .. v6}, Lcom/netease/mpay/oversea/ui/j;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/ui/j$g;)V

    goto :goto_5

    .line 89
    :cond_9
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/r;->m()V

    :goto_5
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/b;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 260
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Z)V

    .line 261
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    .line 262
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/ui/z/b;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 2

    .line 90
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/a;->a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)Z

    .line 91
    instance-of p1, p2, Lcom/netease/mpay/oversea/k/b;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    if-eq p2, v1, :cond_1

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->h:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$i;

    .line 98
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/f;->V()Z

    move-result v1

    invoke-direct {p2, v1}, Lcom/netease/mpay/oversea/ui/h$i;-><init>(Z)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 99
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v1

    .line 100
    invoke-virtual {p1, p2, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$h;

    invoke-direct {v1, p2}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 103
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p2

    .line 104
    invoke-virtual {p1, v1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :goto_1
    return v0

    .line 113
    :cond_2
    instance-of p1, p2, Lcom/netease/mpay/oversea/k/k;

    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    check-cast p2, Lcom/netease/mpay/oversea/k/k;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/k/k;->b()Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return v0

    .line 116
    :cond_3
    instance-of p1, p2, Lcom/netease/mpay/oversea/k/h;

    if-eqz p1, :cond_4

    .line 117
    check-cast p2, Lcom/netease/mpay/oversea/k/h;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/ui/r;->a(Lcom/netease/mpay/oversea/k/h;)V

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/netease/mpay/oversea/k/f;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/r;->a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/ui/z/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$i;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/f;->V()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/h$i;-><init>(Z)V

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return v1
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/a;->e()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->f()V

    :cond_0
    return-void
.end method

.method protected l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/r;->a(Lcom/netease/mpay/oversea/t/c/g;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/k/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/e;

    const-string v1, "home"

    if-eqz v0, :cond_2

    .line 8
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/r;->j:Z

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/ui/z/e;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/e;->f()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/e;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/k/l;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/r;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->f(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    const-string v2, "switch"

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/k/l;->a(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/k/l;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/k/l;->a(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/k/l;->b(Ljava/lang/String;)V

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/k/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/e;

    .line 31
    :goto_2
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v2, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/e;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/k/l;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/k/l;->b(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r;->k:Lcom/netease/mpay/oversea/k/l;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/k/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/e;

    .line 36
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    :cond_4
    return-void
.end method

.method protected m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__login:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v2, v0, v1}, Lcom/netease/mpay/oversea/ui/z/c;->a(Landroid/view/View;Landroid/view/View;)V

    .line 5
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v2, :cond_0

    .line 6
    invoke-static {v1}, Lcom/netease/mpay/oversea/ui/z/e;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/e;->c(Z)V

    .line 8
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Lcom/netease/mpay/oversea/ui/z/e;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/e;->c(Z)V

    .line 12
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v2}, Lcom/netease/mpay/oversea/ui/z/e;->b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ui/z/c;->d(Lcom/netease/mpay/oversea/ui/z/e;)Z

    .line 13
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    .line 15
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/r;->k()V

    return-void
.end method
