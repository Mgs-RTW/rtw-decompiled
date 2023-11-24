.class Lcom/netease/mpay/oversea/n/j/b$a;
.super Ljava/lang/Object;
.source "TokenRefresh.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/a0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/j/b;->a(Lcom/netease/mpay/oversea/RefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/RefreshCallback;

.field final synthetic b:Lcom/netease/mpay/oversea/n/j/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/j/b;Lcom/netease/mpay/oversea/RefreshCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/j/b$a;->b:Lcom/netease/mpay/oversea/n/j/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/j/b$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/j/b$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz p1, :cond_0

    .line 14
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/j/b$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onLogout()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 12

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/n/j/b$a;->b:Lcom/netease/mpay/oversea/n/j/b;

    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p3, Lcom/netease/mpay/oversea/n/j/b;->a:Landroid/app/Activity;

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iput-object v0, p3, Lcom/netease/mpay/oversea/n/j/b;->b:Lcom/netease/mpay/oversea/t/c/f;

    .line 3
    iget-object p3, p0, Lcom/netease/mpay/oversea/n/j/b$a;->b:Lcom/netease/mpay/oversea/n/j/b;

    iget-object p3, p3, Lcom/netease/mpay/oversea/n/j/b;->b:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p3, :cond_0

    .line 4
    iget-object v0, p3, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/j/b$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz v0, :cond_2

    .line 7
    new-instance v11, Lcom/netease/mpay/oversea/User;

    iget-object v2, p2, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->c:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 8
    iget-object p3, p3, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    move-object v4, p3

    iget-object p3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 9
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/t/c/g;->b()I

    move-result v5

    iget-object v7, p2, Lcom/netease/mpay/oversea/n/i/b/d;->l:Ljava/lang/String;

    iget v8, p2, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    iget-object v9, p2, Lcom/netease/mpay/oversea/n/i/b/d;->s:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    .line 11
    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(Ljava/util/ArrayList;)[I

    move-result-object v10

    move-object v1, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)V

    .line 12
    invoke-interface {v0, v11}, Lcom/netease/mpay/oversea/RefreshCallback;->onSuccess(Lcom/netease/mpay/oversea/User;)V

    :cond_2
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/j/b$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    :cond_0
    return-void
.end method
