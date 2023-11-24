.class Lcom/netease/mpay/oversea/u/c/b$g;
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$g;->e:Lcom/netease/mpay/oversea/u/c/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/b$g;->d:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$g;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->r(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$g;->d:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method
