.class Lcom/netease/mpay/oversea/u/c/g$c;
.super Lcom/netease/mpay/oversea/ui/h;
.source "WebContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/u/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field d:Lcom/netease/mpay/oversea/n/h;

.field final synthetic e:Lcom/netease/mpay/oversea/u/c/g;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/u/c/g;Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$c;->e:Lcom/netease/mpay/oversea/u/c/g;

    .line 2
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;)V

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/u/c/g$c;->d:Lcom/netease/mpay/oversea/n/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/g$c;->d:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$c;->e:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/g;->e(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/g$c;->e:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/g;->d(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/g$c;->e:Lcom/netease/mpay/oversea/u/c/g;

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/g;->c(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->b()Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/ui/z/e;

    .line 4
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method
