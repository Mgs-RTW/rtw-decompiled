.class public Lcom/netease/mpay/oversea/t/c/f$b;
.super Ljava/lang/Object;
.source "LoginInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/t/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/netease/mpay/oversea/t/c/g;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/netease/mpay/oversea/t/c/f;

.field private i:Z

.field private j:Lcom/netease/mpay/oversea/t/c/g;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/t/c/g;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->k:Z

    .line 14
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/netease/mpay/oversea/t/c/f$b;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/netease/mpay/oversea/t/c/f$b;->c:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/netease/mpay/oversea/t/c/f$b;->d:Ljava/lang/String;

    if-nez p7, :cond_0

    .line 18
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p7, p0, Lcom/netease/mpay/oversea/t/c/f$b;->f:Ljava/util/ArrayList;

    .line 19
    iput-object p6, p0, Lcom/netease/mpay/oversea/t/c/f$b;->g:Ljava/lang/String;

    if-nez p5, :cond_1

    .line 20
    sget-object p1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    goto :goto_0

    :cond_1
    move-object p1, p5

    :goto_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->e:Lcom/netease/mpay/oversea/t/c/g;

    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->m:I

    const/16 p1, 0x66

    .line 22
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->n:I

    .line 28
    sget-object p1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p5, p1, :cond_2

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->f:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->f:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/netease/mpay/oversea/t/c/f$b;->e:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->i:Z

    .line 30
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->k:Z

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->h:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->h:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/f;->a(Lcom/netease/mpay/oversea/t/c/f;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->h:Lcom/netease/mpay/oversea/t/c/f;

    invoke-static {v1}, Lcom/netease/mpay/oversea/t/c/f;->a(Lcom/netease/mpay/oversea/t/c/f;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v0, :cond_3

    .line 12
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->v:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/f;->a(Lcom/netease/mpay/oversea/t/c/f;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/f;->a(Lcom/netease/mpay/oversea/t/c/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->h:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/c/f$b;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v1, v2, :cond_2

    .line 17
    iget-boolean v1, v0, Lcom/netease/mpay/oversea/t/c/f;->j:Z

    iput-boolean v1, p1, Lcom/netease/mpay/oversea/t/c/f;->j:Z

    .line 20
    :cond_2
    iget v0, v0, Lcom/netease/mpay/oversea/t/c/f;->l:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$c;->b(ILcom/netease/mpay/oversea/t/c/g;)I

    move-result v0

    iput v0, p1, Lcom/netease/mpay/oversea/t/c/f;->l:I

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->h:Lcom/netease/mpay/oversea/t/c/f;

    iget v1, v0, Lcom/netease/mpay/oversea/t/c/f;->l:I

    iput v1, p1, Lcom/netease/mpay/oversea/t/c/f;->l:I

    .line 23
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v1, v2, :cond_4

    .line 24
    iget v0, v0, Lcom/netease/mpay/oversea/t/c/f;->l:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/t/c/f$c;->a(ILcom/netease/mpay/oversea/t/c/g;)I

    move-result v0

    iput v0, p1, Lcom/netease/mpay/oversea/t/c/f;->l:I

    goto :goto_0

    .line 26
    :cond_4
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_5
    iget v0, p1, Lcom/netease/mpay/oversea/t/c/f;->l:I

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$c;->a(ILcom/netease/mpay/oversea/t/c/g;)I

    move-result v0

    iput v0, p1, Lcom/netease/mpay/oversea/t/c/f;->l:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->m:I

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->n:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->i:Z

    :cond_1
    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->j:Lcom/netease/mpay/oversea/t/c/g;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/netease/mpay/oversea/t/c/f;
    .locals 15

    .line 32
    new-instance v14, Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/c/f$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t/c/f$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/t/c/f$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/t/c/f$b;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/t/c/f$b;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/t/c/f$b;->e:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v8, p0, Lcom/netease/mpay/oversea/t/c/f$b;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/mpay/oversea/t/c/f$b;->f:Ljava/util/ArrayList;

    iget v10, p0, Lcom/netease/mpay/oversea/t/c/f$b;->m:I

    iget v11, p0, Lcom/netease/mpay/oversea/t/c/f$b;->n:I

    iget v12, p0, Lcom/netease/mpay/oversea/t/c/f$b;->o:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/netease/mpay/oversea/t/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;IIILcom/netease/mpay/oversea/t/c/f$a;)V

    .line 34
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->k:Z

    iput-boolean v0, v14, Lcom/netease/mpay/oversea/t/c/f;->o:Z

    .line 35
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->q:Ljava/lang/String;

    iput-object v0, v14, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->r:Ljava/lang/String;

    iput-object v0, v14, Lcom/netease/mpay/oversea/t/c/f;->r:Ljava/lang/String;

    .line 37
    invoke-direct {p0, v14}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 38
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/t/c/f$b;->i:Z

    invoke-static {v14, v0}, Lcom/netease/mpay/oversea/t/c/f$c;->a(Lcom/netease/mpay/oversea/t/c/f;Z)V

    return-object v14
.end method

.method public b(I)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->o:I

    return-object p0
.end method

.method public b(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->h:Lcom/netease/mpay/oversea/t/c/f;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->n:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->r:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/c/f$b;->l:Ljava/lang/String;

    return-object p0
.end method
