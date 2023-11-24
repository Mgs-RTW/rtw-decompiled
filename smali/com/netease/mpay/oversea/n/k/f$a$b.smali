.class Lcom/netease/mpay/oversea/n/k/f$a$b;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/o$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/k/f$a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic b:Lcom/netease/mpay/oversea/n/k/f$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/k/f$a;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a$b;->b:Lcom/netease/mpay/oversea/n/k/f$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/k/f$a$b;->a:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a$b;->b:Lcom/netease/mpay/oversea/n/k/f$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->g(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a$b;->b:Lcom/netease/mpay/oversea/n/k/f$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->b(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a$b;->b:Lcom/netease/mpay/oversea/n/k/f$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v0, p1, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->e(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/f$a$b;->a:Lcom/netease/mpay/oversea/n/i/b/d;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method
