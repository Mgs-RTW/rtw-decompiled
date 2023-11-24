.class Lcom/netease/mpay/oversea/u/c/b$e;
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

.field final synthetic e:Lcom/netease/mpay/oversea/t/f/f;

.field final synthetic f:Lcom/netease/mpay/oversea/u/c/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/b;Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/t/f/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$e;->f:Lcom/netease/mpay/oversea/u/c/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/b$e;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iput-object p3, p0, Lcom/netease/mpay/oversea/u/c/b$e;->e:Lcom/netease/mpay/oversea/t/f/f;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$e;->f:Lcom/netease/mpay/oversea/u/c/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/b$e;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/b$e;->e:Lcom/netease/mpay/oversea/t/f/f;

    invoke-static {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/u/c/b;->a(Lcom/netease/mpay/oversea/u/c/b;Landroid/view/View;Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/t/f/f;)V

    return-void
.end method
