.class Lcom/netease/mpay/oversea/u/c/g$a$a;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/g$a;->a(ILcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/g$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$a$a;->a:Lcom/netease/mpay/oversea/u/c/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/g$a$a;->a:Lcom/netease/mpay/oversea/u/c/g$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/g;->l(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/g$a$a;->a:Lcom/netease/mpay/oversea/u/c/g$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/g;->k(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/g$a$a;->a:Lcom/netease/mpay/oversea/u/c/g$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    .line 2
    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/g;->j(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/z/c;->b()Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/ui/z/e;

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method
