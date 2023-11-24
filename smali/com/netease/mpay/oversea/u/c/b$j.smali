.class Lcom/netease/mpay/oversea/u/c/b$j;
.super Lcom/netease/mpay/oversea/widget/d;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/b;->c(Lcom/netease/mpay/oversea/ui/z/e;)Lcom/netease/mpay/oversea/ui/z/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/z/e;

.field final synthetic e:Lcom/netease/mpay/oversea/u/c/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/b;Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$j;->e:Lcom/netease/mpay/oversea/u/c/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/b$j;->d:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enter:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$j;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$j;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    const-string v0, "account_deletion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$j;->e:Lcom/netease/mpay/oversea/u/c/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/u/c/b;->a(Lcom/netease/mpay/oversea/u/c/b;Z)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$j;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->K(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$j;->d:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method
