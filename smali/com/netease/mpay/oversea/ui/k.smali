.class public Lcom/netease/mpay/oversea/ui/k;
.super Lcom/netease/mpay/oversea/ui/m;
.source "GuestLogin.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/m;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 225
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/k;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x1b

    .line 5
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/r/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/k;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/ui/k$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/ui/k$a;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 10

    const/16 v0, 0x21

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "birthday"

    .line 226
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "iso_code"

    .line 227
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLUVFinish:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 229
    new-instance p1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v6, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 230
    invoke-static/range {v0 .. v9}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 232
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    new-instance p2, Lcom/netease/mpay/oversea/h/c;

    const/4 p3, 0x0

    const/16 v0, 0x2713

    invoke-direct {p2, v0, p3}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m;->a(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/k;->c(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_unknown_type:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 221
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 222
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 3
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v2, :cond_d

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->j:Lcom/netease/mpay/oversea/n/h;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->k:Lcom/netease/mpay/oversea/n/h;

    const-string v3, "account"

    if-ne v2, v1, :cond_2

    .line 35
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/d;->f()Ljava/lang/String;

    move-result-object v5

    .line 37
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v3, v5}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v13, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v14

    sget-object v4, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v10, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 47
    invoke-static/range {v4 .. v11}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v15

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/16 v16, 0x0

    move-object v12, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 49
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_3

    .line 50
    :cond_1
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 52
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void

    .line 62
    :cond_2
    invoke-static {v1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 63
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v4, v1, Lcom/netease/mpay/oversea/t/d/b;->i:Ljava/lang/String;

    :cond_3
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 67
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v2, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v2, v3, v6}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v2, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v14, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v15

    sget-object v5, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v9, v1, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 70
    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v16

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/16 v17, 0x0

    move-object v13, v2

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 72
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_3

    .line 74
    :cond_4
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 76
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto/16 :goto_3

    .line 81
    :cond_5
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->G:Lcom/netease/mpay/oversea/n/h;

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 133
    :cond_6
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 135
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    .line 136
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto/16 :goto_3

    .line 137
    :cond_7
    :goto_0
    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-nez v2, :cond_8

    move-object v2, v4

    goto :goto_1

    :cond_8
    iget-object v2, v2, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    .line 138
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 139
    new-instance v2, Lcom/netease/mpay/oversea/t/b;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/f/d;->f()Ljava/lang/String;

    move-result-object v2

    :cond_9
    move-object v6, v2

    .line 142
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 143
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->G:Lcom/netease/mpay/oversea/n/h;

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v1, :cond_a

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v1, v2, :cond_a

    .line 145
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/t/c/g;

    .line 146
    invoke-virtual {v5}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "channel_login_fail_type"

    invoke-direct {v1, v5, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 151
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v3, v6}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v14, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v15

    sget-object v5, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 154
    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v2, :cond_b

    iget-object v4, v2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    :cond_b
    move-object v9, v4

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v10, 0x1

    .line 155
    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v16

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/16 v17, 0x0

    move-object v13, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v18}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 157
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_3

    .line 159
    :cond_c
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 160
    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v6

    new-instance v8, Lcom/netease/mpay/oversea/ui/k$c;

    invoke-direct {v8, v0}, Lcom/netease/mpay/oversea/ui/k$c;-><init>(Lcom/netease/mpay/oversea/ui/k;)V

    const/4 v7, 0x0

    move-object v3, v1

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 187
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_3

    .line 188
    :cond_d
    :goto_2
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v10, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v8, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 189
    invoke-static/range {v2 .. v9}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v12

    new-instance v14, Lcom/netease/mpay/oversea/ui/k$b;

    invoke-direct {v14, v0}, Lcom/netease/mpay/oversea/ui/k$b;-><init>(Lcom/netease/mpay/oversea/ui/k;)V

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 216
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_3
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;
    .locals 2

    .line 6
    new-instance p1, Lcom/netease/mpay/oversea/h/c;

    const/16 v0, 0x2711

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method protected c(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 5
    iget-object v1, p2, Lcom/netease/mpay/oversea/h/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 15
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/d;->f()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    if-eq v2, p1, :cond_6

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, p1, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    sget-object v1, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    if-ne v1, p1, :cond_2

    iget-object v1, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/oversea/ui/k$f;

    invoke-direct {v4, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/k$f;-><init>(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/n/h;)V

    invoke-static {v1, v2, v0, v4}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return v3

    .line 59
    :cond_2
    iget-object v1, p2, Lcom/netease/mpay/oversea/h/c;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/ui/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/netease/mpay/oversea/t/c/g;

    .line 62
    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v2, v7, :cond_3

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v2, v7, :cond_4

    goto :goto_1

    .line 63
    :cond_4
    sget-object v1, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    if-ne v1, p1, :cond_5

    .line 64
    new-instance v4, Lcom/netease/mpay/oversea/widget/f;

    invoke-direct {v4}, Lcom/netease/mpay/oversea/widget/f;-><init>()V

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v6, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 65
    invoke-static {v5, v7, v0}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v8

    new-instance v9, Lcom/netease/mpay/oversea/ui/k$g;

    invoke-direct {v9, p0, p2, v7}, Lcom/netease/mpay/oversea/ui/k$g;-><init>(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/t/c/g;)V

    new-instance v10, Lcom/netease/mpay/oversea/ui/k$h;

    invoke-direct {v10, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/k$h;-><init>(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/n/h;)V

    .line 66
    invoke-virtual/range {v4 .. v10}, Lcom/netease/mpay/oversea/widget/f;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/b$c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return v3

    .line 89
    :cond_5
    invoke-virtual {p0, v7, p2}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/h/c;)Z

    .line 90
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/h;->a()V

    return v3

    .line 91
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bounded_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 93
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 94
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v7, Lcom/netease/mpay/oversea/ui/k$d;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/k$d;-><init>(Lcom/netease/mpay/oversea/ui/k;)V

    new-instance v9, Lcom/netease/mpay/oversea/ui/k$e;

    invoke-direct {v9, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/k$e;-><init>(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/n/h;)V

    invoke-static/range {v4 .. v9}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return v3

    :cond_7
    return v0
.end method
