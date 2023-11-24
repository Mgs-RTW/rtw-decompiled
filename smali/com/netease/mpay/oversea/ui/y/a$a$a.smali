.class Lcom/netease/mpay/oversea/ui/y/a$a$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "BindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/y/a$a;->a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/ui/y/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/y/a$b;

.field final synthetic e:Lcom/netease/mpay/oversea/ui/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/y/a$a;Lcom/netease/mpay/oversea/ui/y/a$b;Lcom/netease/mpay/oversea/ui/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->d:Lcom/netease/mpay/oversea/ui/y/a$b;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->e:Lcom/netease/mpay/oversea/ui/b;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->d:Lcom/netease/mpay/oversea/ui/y/a$b;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->e:Lcom/netease/mpay/oversea/ui/b;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast p1, Lcom/netease/mpay/oversea/ui/b$b;

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/ui/b$b;->c:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->I()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->d:Lcom/netease/mpay/oversea/ui/y/a$b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->e:Lcom/netease/mpay/oversea/ui/b;

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/y/a$b;->b(Lcom/netease/mpay/oversea/ui/b;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->d:Lcom/netease/mpay/oversea/ui/y/a$b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/a$a$a;->e:Lcom/netease/mpay/oversea/ui/b;

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/y/a$b;->a(Lcom/netease/mpay/oversea/ui/b;)V

    :cond_1
    :goto_0
    return-void
.end method
