.class Lcom/netease/mpay/oversea/u/c/f$c$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/f$c;->a(Lcom/netease/mpay/oversea/u/c/f$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/z/e;

.field final synthetic e:I

.field final synthetic f:Lcom/netease/mpay/oversea/u/c/f$d;

.field final synthetic g:Lcom/netease/mpay/oversea/u/c/f$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/f$c;Lcom/netease/mpay/oversea/ui/z/e;ILcom/netease/mpay/oversea/u/c/f$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->g:Lcom/netease/mpay/oversea/u/c/f$c;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iput p3, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->e:I

    iput-object p4, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->f:Lcom/netease/mpay/oversea/u/c/f$d;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget v0, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->e:I

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/e;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->d:Lcom/netease/mpay/oversea/ui/z/e;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/ui/z/e;->i:Z

    .line 3
    iget p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->e:I

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->g:Lcom/netease/mpay/oversea/u/c/f$c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/f$c;->a(Lcom/netease/mpay/oversea/u/c/f$c;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->g:Lcom/netease/mpay/oversea/u/c/f$c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/f$c;->b(Lcom/netease/mpay/oversea/u/c/f$c;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->g:Lcom/netease/mpay/oversea/u/c/f$c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/f$c;->a(Lcom/netease/mpay/oversea/u/c/f$c;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/z/e;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Lcom/netease/mpay/oversea/ui/z/e;->i:Z

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->g:Lcom/netease/mpay/oversea/u/c/f$c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/f$c;->a(Lcom/netease/mpay/oversea/u/c/f$c;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/e;->a(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->g:Lcom/netease/mpay/oversea/u/c/f$c;

    iget v0, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->e:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/u/c/f$c;->a(Lcom/netease/mpay/oversea/u/c/f$c;I)I

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "new_game"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "create_new_guest"

    goto :goto_0

    :cond_2
    const-string p1, "switch_account"

    .line 22
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/f$c$a;->f:Lcom/netease/mpay/oversea/u/c/f$d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u/c/f$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
