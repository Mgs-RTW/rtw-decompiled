.class public Lcom/netease/mpay/oversea/r/f;
.super Ljava/lang/Object;
.source "SDKRuntime.java"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Z

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/n/i/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/netease/mpay/oversea/l/e/d;

.field private e:Lcom/netease/mpay/oversea/n/i/b/d;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/l/e/d$f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/netease/mpay/oversea/t/c/g;

.field private m:I

.field private n:I

.field private o:Lcom/netease/mpay/oversea/r/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/r/f;->b:Z

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netease/mpay/oversea/r/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "01012000"

    .line 16
    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->i:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->j:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->k:Ljava/util/ArrayList;

    .line 23
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->l:Lcom/netease/mpay/oversea/t/c/g;

    .line 25
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/r/c;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/r/c;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->o:Lcom/netease/mpay/oversea/r/c;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/t/c/g;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 41
    :cond_0
    iget-object p4, p1, Lcom/netease/mpay/oversea/l/e/d$f;->f:Lcom/netease/mpay/oversea/l/e/d$d;

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 43
    iget-boolean p1, p4, Lcom/netease/mpay/oversea/l/e/d$d;->f:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/t/f/g/f;->a()Lcom/netease/mpay/oversea/t/f/g/f;

    move-result-object p1

    iget-object p2, p4, Lcom/netease/mpay/oversea/l/e/d$d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, p5, p6}, Lcom/netease/mpay/oversea/t/f/g/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    return-object p2

    .line 47
    :cond_3
    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$f;->e:Lcom/netease/mpay/oversea/l/e/d$g;

    if-eqz p1, :cond_5

    .line 48
    iget-boolean p3, p1, Lcom/netease/mpay/oversea/l/e/d$g;->g:Z

    if-nez p3, :cond_4

    goto :goto_2

    .line 50
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/t/f/g/f;->a()Lcom/netease/mpay/oversea/t/f/g/f;

    move-result-object p2

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$g;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, p5, p6}, Lcom/netease/mpay/oversea/t/f/g/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    :goto_2
    return-object p2
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/t/c/g;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 12
    :cond_0
    iget-object p4, p1, Lcom/netease/mpay/oversea/l/e/d$f;->f:Lcom/netease/mpay/oversea/l/e/d$d;

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 14
    iget-boolean p1, p4, Lcom/netease/mpay/oversea/l/e/d$d;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/t/f/g/f;->a()Lcom/netease/mpay/oversea/t/f/g/f;

    move-result-object p1

    iget-object p2, p4, Lcom/netease/mpay/oversea/l/e/d$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p5, p6}, Lcom/netease/mpay/oversea/t/f/g/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    return-object p2

    .line 18
    :cond_3
    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$f;->e:Lcom/netease/mpay/oversea/l/e/d$g;

    if-eqz p1, :cond_5

    .line 19
    iget-boolean p3, p1, Lcom/netease/mpay/oversea/l/e/d$g;->f:Z

    if-nez p3, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/t/f/g/f;->a()Lcom/netease/mpay/oversea/t/f/g/f;

    move-result-object p2

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$g;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, p5, p6}, Lcom/netease/mpay/oversea/t/f/g/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    :goto_2
    return-object p2
.end method


# virtual methods
.method public A()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->c:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r/f;->b:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/l/e/d;->r:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/b;->a(I)Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/l/e/d;->q:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/l/e/d;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->D:Lcom/netease/mpay/oversea/l/e/d$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/l/e/d$c;->b()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->e:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->y:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public K()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/l/e/d$f;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/netease/mpay/oversea/l/e/d$f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d$f;->g:Ljava/lang/String;

    const-string v2, "games"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public L()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/l/e/d$f;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/netease/mpay/oversea/l/e/d$f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d$f;->g:Ljava/lang/String;

    const-string v2, "games_v2"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/l/e/d;->r:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/r/f;->b:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->j:Lcom/netease/mpay/oversea/l/e/f;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/f;->a:Z

    return v0
.end method

.method public Q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->k:Lcom/netease/mpay/oversea/l/e/g;

    iget v0, v0, Lcom/netease/mpay/oversea/l/e/g;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/l/e/d;->a()Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/l/e/d;->r:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/b;->c(I)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->g:Z

    return v0
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->c:Ljava/util/HashMap;

    .line 6
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->a()V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/r/f;->b()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/r/f;->b:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    return-void
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 29
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    if-nez p1, :cond_1

    return-object v1

    .line 31
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$f;->d:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/r/f;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/i/b/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/n/i/b/e;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ZLcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/l/e/d$f;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 34
    iget-object p1, p2, Lcom/netease/mpay/oversea/l/e/d$f;->f:Lcom/netease/mpay/oversea/l/e/d$d;

    if-nez p1, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$d;->d:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-eqz p2, :cond_5

    .line 37
    iget-object p1, p2, Lcom/netease/mpay/oversea/l/e/d$f;->e:Lcom/netease/mpay/oversea/l/e/d$g;

    if-nez p1, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$g;->d:Ljava/lang/String;

    return-object p1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/netease/mpay/oversea/r/f;->n:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "can_auto_login"

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 52
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/l/e/d;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/r/f;->b:Z

    return-void
.end method

.method public declared-synchronized a(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    monitor-enter p0

    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/r/f;->e:Lcom/netease/mpay/oversea/n/i/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/e;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/f;->c:Ljava/util/HashMap;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/r/f;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/l/e/d$f;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 21
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->d:Z

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/r/e;->c:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 17
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 25
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/l/e/d;->q:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 26
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->d(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/t/c/g;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->n:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/oversea/r/f;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/t/c/g;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    .line 55
    :cond_1
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/i/b/e;
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance p1, Lcom/netease/mpay/oversea/n/i/b/e;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/n/i/b/e;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(ZLcom/netease/mpay/oversea/t/c/g;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/l/e/d$f;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 37
    iget-object p1, p2, Lcom/netease/mpay/oversea/l/e/d$f;->f:Lcom/netease/mpay/oversea/l/e/d$d;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$d;->c:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    iget-object p1, p2, Lcom/netease/mpay/oversea/l/e/d$f;->f:Lcom/netease/mpay/oversea/l/e/d$d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$d;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-eqz p2, :cond_5

    .line 47
    iget-object p1, p2, Lcom/netease/mpay/oversea/l/e/d$f;->e:Lcom/netease/mpay/oversea/l/e/d$g;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$g;->c:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 50
    :cond_4
    :try_start_1
    iget-object p1, p2, Lcom/netease/mpay/oversea/l/e/d$f;->e:Lcom/netease/mpay/oversea/l/e/d$g;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$g;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_5
    :goto_1
    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const-string v1, ""

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object v2, v2, Lcom/netease/mpay/oversea/l/e/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 6
    iget-object v4, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object v4, v4, Lcom/netease/mpay/oversea/l/e/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/oversea/l/e/d$f;

    .line 7
    iget-object v5, v4, Lcom/netease/mpay/oversea/l/e/d$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->k:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->F:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->l:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v5, v6, :cond_2

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->s(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    sget-object v5, Lcom/netease/mpay/oversea/t/c/g;->A:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v6, v4, Lcom/netease/mpay/oversea/l/e/d$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v5, v6, :cond_3

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->p(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    iget-object v5, v4, Lcom/netease/mpay/oversea/l/e/d$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->w:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v5, v6, :cond_4

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->r(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-boolean v5, v4, Lcom/netease/mpay/oversea/l/e/d$f;->b:Z

    if-eqz v5, :cond_5

    .line 18
    iget-object v4, v4, Lcom/netease/mpay/oversea/l/e/d$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_7
    :goto_2
    return-object v1
.end method

.method public b(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v1, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$f;->e:Lcom/netease/mpay/oversea/l/e/d$g;

    if-nez p1, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$g;->e:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/r/f;->m:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "can_auto_login"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 28
    :cond_0
    iget v2, v0, Lcom/netease/mpay/oversea/l/e/d;->q:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->D:Lcom/netease/mpay/oversea/l/e/d$c;

    .line 29
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/l/e/d$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->d(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c()Lcom/netease/mpay/oversea/l/e/d$e;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->a:Lcom/netease/mpay/oversea/l/e/d$e;

    return-object v0
.end method

.method public c(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/l/e/d$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/l/e/d;->a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/l/e/d$f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/r/f;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->R()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 7
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->D:Lcom/netease/mpay/oversea/l/e/d$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/l/e/d$c;->a()I

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/t/c/g;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d;->n:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/oversea/r/f;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/t/c/g;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    .line 11
    :cond_1
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public d(Lcom/netease/mpay/oversea/t/c/g;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/e/d$f;->c:Ljava/util/ArrayList;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/r/f;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e(Lcom/netease/mpay/oversea/t/c/g;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/l/e/d$f;->b:Z

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized f()Lcom/netease/mpay/oversea/n/i/b/d;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->e:Lcom/netease/mpay/oversea/n/i/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/r/f;->l:Lcom/netease/mpay/oversea/t/c/g;

    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->l:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->p:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/netease/mpay/oversea/l/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/oversea/l/e/b;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l/e/b;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->l:Lcom/netease/mpay/oversea/l/e/b;

    return-object v0
.end method

.method public declared-synchronized k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->j:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/l/e/d$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public o()Lcom/netease/mpay/oversea/r/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->o:Lcom/netease/mpay/oversea/r/c;

    return-object v0
.end method

.method public p()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/l/e/d$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/r/f;->n:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/r/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user_center/passport_manage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->o:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/r/f;->m:I

    return v0
.end method

.method public x()Lcom/netease/mpay/oversea/l/e/d$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/oversea/l/e/d$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/netease/mpay/oversea/l/e/d$h;-><init>(ZZ)V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d;->i:Lcom/netease/mpay/oversea/l/e/d$h;

    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/f;->d:Lcom/netease/mpay/oversea/l/e/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/l/e/d;->h:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->r:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
