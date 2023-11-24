.class Lcom/netease/mpay/oversea/u/c/b$l$a;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/b$l;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/z/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/z/e;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/b$l;Lcom/netease/mpay/oversea/ui/z/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/b$l$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

    iput-object p3, p0, Lcom/netease/mpay/oversea/u/c/b$l$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$l$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$l$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    const-string v0, "quick_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$l$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/b$l$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
