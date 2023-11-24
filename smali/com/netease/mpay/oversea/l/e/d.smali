.class public Lcom/netease/mpay/oversea/l/e/d;
.super Lcom/netease/mpay/oversea/h/k/b;
.source "GameConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/l/e/d$c;,
        Lcom/netease/mpay/oversea/l/e/d$h;,
        Lcom/netease/mpay/oversea/l/e/d$f;,
        Lcom/netease/mpay/oversea/l/e/d$d;,
        Lcom/netease/mpay/oversea/l/e/d$g;,
        Lcom/netease/mpay/oversea/l/e/d$e;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Lcom/netease/mpay/oversea/l/e/d$c;

.field public a:Lcom/netease/mpay/oversea/l/e/d$e;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Lcom/netease/mpay/oversea/l/e/d$h;

.field public j:Lcom/netease/mpay/oversea/l/e/f;

.field public k:Lcom/netease/mpay/oversea/l/e/g;

.field public l:Lcom/netease/mpay/oversea/l/e/b;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            "Lcom/netease/mpay/oversea/l/e/d$f;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:I

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/l/e/d$f;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/h/k/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->n:Z

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/netease/mpay/oversea/l/e/d;->q:I

    .line 6
    iput v1, p0, Lcom/netease/mpay/oversea/l/e/d;->r:I

    .line 7
    iput v1, p0, Lcom/netease/mpay/oversea/l/e/d;->s:I

    .line 16
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/l/e/d;->A:Z

    .line 17
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->B:Z

    .line 19
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->C:Z

    .line 24
    new-instance v8, Lcom/netease/mpay/oversea/l/e/d$e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/l/e/d$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/netease/mpay/oversea/l/e/d;->a:Lcom/netease/mpay/oversea/l/e/d$e;

    .line 25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    .line 26
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->b:Z

    .line 27
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->e:Z

    .line 28
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/l/e/d;->f:Z

    .line 29
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/l/e/d;->c:Z

    .line 30
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->d:Z

    .line 31
    new-instance v2, Lcom/netease/mpay/oversea/l/e/b;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/l/e/b;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/l/e/d;->l:Lcom/netease/mpay/oversea/l/e/b;

    .line 32
    new-instance v2, Lcom/netease/mpay/oversea/l/e/d$c;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/l/e/d$c;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/l/e/d;->D:Lcom/netease/mpay/oversea/l/e/d$c;

    .line 33
    iput v1, p0, Lcom/netease/mpay/oversea/l/e/d;->s:I

    .line 34
    iput v0, p0, Lcom/netease/mpay/oversea/l/e/d;->h:I

    .line 35
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->g:Z

    .line 36
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/l/e/d;->z:Z

    .line 37
    new-instance v2, Lcom/netease/mpay/oversea/l/e/f;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/l/e/f;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/l/e/d;->j:Lcom/netease/mpay/oversea/l/e/f;

    .line 38
    new-instance v2, Lcom/netease/mpay/oversea/l/e/g;

    invoke-direct {v2, v0, v1}, Lcom/netease/mpay/oversea/l/e/g;-><init>(II)V

    iput-object v2, p0, Lcom/netease/mpay/oversea/l/e/d;->k:Lcom/netease/mpay/oversea/l/e/g;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/l/e/d;->m:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/l/e/d;->o:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/l/e/d;->t:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/l/e/d;->u:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Lcom/netease/mpay/oversea/l/e/d$h;

    invoke-direct {v1, v0, v0}, Lcom/netease/mpay/oversea/l/e/d$h;-><init>(ZZ)V

    iput-object v1, p0, Lcom/netease/mpay/oversea/l/e/d;->i:Lcom/netease/mpay/oversea/l/e/d$h;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/l/e/d$f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    return-object p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/l/e/d;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    .line 17
    :cond_0
    :try_start_1
    new-instance p1, Lcom/netease/mpay/oversea/l/e/d$b;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/l/e/d$b;-><init>(Lcom/netease/mpay/oversea/l/e/d;)V

    invoke-static {p1}, Lcom/netease/mpay/oversea/h/d;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/l/e/d$f;)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/e/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/e/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/l/e/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/netease/mpay/oversea/l/e/d;->p:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/mpay/oversea/l/e/d;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/l/e/d$f;

    .line 10
    iget v3, p2, Lcom/netease/mpay/oversea/l/e/d$f;->i:I

    iget v2, v2, Lcom/netease/mpay/oversea/l/e/d$f;->i:I

    if-ge v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/l/e/d;->u:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/l/e/d;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/e/d;->t:Ljava/util/ArrayList;

    new-instance v1, Lcom/netease/mpay/oversea/l/e/d$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/l/e/d$a;-><init>(Lcom/netease/mpay/oversea/l/e/d;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
