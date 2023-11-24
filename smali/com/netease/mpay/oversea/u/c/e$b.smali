.class Lcom/netease/mpay/oversea/u/c/e$b;
.super Lcom/netease/mpay/oversea/widget/d;
.source "SwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/z/e;

.field final synthetic e:Lcom/netease/mpay/oversea/u/c/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/e;Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$b;->e:Lcom/netease/mpay/oversea/u/c/e;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/e$b;->d:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$b;->e:Lcom/netease/mpay/oversea/u/c/e;

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$b;->d:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/u/c/e;Lcom/netease/mpay/oversea/ui/z/e;)V

    return-void
.end method
