.class public abstract Lcom/netease/mpay/oversea/ui/z/a;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/k/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/k/g<",
        "Lcom/netease/mpay/oversea/k/j;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/app/Activity;

.field protected c:Lcom/netease/mpay/oversea/ui/h;

.field protected d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field protected e:Lcom/netease/mpay/oversea/ui/z/c;

.field protected f:Lcom/netease/mpay/oversea/ui/z/d;

.field protected g:Lcom/netease/mpay/oversea/ui/z/e;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/netease/mpay/oversea/p/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/p/b<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected j:Lcom/netease/mpay/oversea/k/f;

.field protected k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->k:Z

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentActivity;Lcom/netease/mpay/oversea/ui/z/c;Ljava/lang/String;Lcom/netease/mpay/oversea/p/b;)Lcom/netease/mpay/oversea/ui/z/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/netease/mpay/oversea/ui/z/c;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/p/b<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/netease/mpay/oversea/ui/z/a;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/ui/z/a;

    .line 4
    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput-object p0, p2, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    .line 6
    iput-object p3, p2, Lcom/netease/mpay/oversea/ui/z/a;->i:Lcom/netease/mpay/oversea/p/b;

    .line 7
    new-instance p3, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;)V

    iput-object p3, p2, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    .line 8
    iput-object p1, p2, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    .line 10
    iget-object p1, p2, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/k/e;->c(Landroid/app/Activity;)Lcom/netease/mpay/oversea/k/e;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/k/e;->a(Lcom/netease/mpay/oversea/k/g;)Lcom/netease/mpay/oversea/k/f;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    .line 12
    invoke-static {p0}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-nez v1, :cond_1

    return-void

    .line 42
    :cond_1
    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/widget/r;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/r;->b(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public a(Lcom/netease/mpay/oversea/ui/z/e;)Lcom/netease/mpay/oversea/ui/z/a;
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/e;->a()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 20
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/e;->b()Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    .line 21
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->i:Lcom/netease/mpay/oversea/p/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget v0, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    const/16 v1, 0x2715

    if-ne v1, v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->b(Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 22
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 8

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/i/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/n/i/b/e;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    new-instance v1, Lcom/netease/mpay/oversea/widget/i;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v1, v2, p2, v0}, Lcom/netease/mpay/oversea/widget/i;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;)V

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 27
    invoke-static {v2, p2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/z/a$a;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/ui/z/a$a;-><init>(Lcom/netease/mpay/oversea/ui/z/a;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    .line 34
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/oversea/ui/z/a$b;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/z/a$b;-><init>(Lcom/netease/mpay/oversea/ui/z/a;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 35
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/widget/i;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Z)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->i:Lcom/netease/mpay/oversea/p/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 1

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive[Client]\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/k/c;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/k/j;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v0, p1

    :catchall_1
    :goto_0
    return-object v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 9
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->k:Z

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/netease/mpay/oversea/k/f;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->k:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->k:Z

    return-void
.end method
