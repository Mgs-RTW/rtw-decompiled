.class Lcom/netease/mpay/oversea/j/d/b/a$h;
.super Lcom/netease/mpay/oversea/widget/d;
.source "EmailLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/b/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/j/d/b/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/a$h;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/a$h;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/a;->e(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/a$h;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/a;->s(Lcom/netease/mpay/oversea/j/d/b/a;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/a$h;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/a;->c(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/j/d/b/a$h;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-static {v2}, Lcom/netease/mpay/oversea/j/d/b/a;->d(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/j/a;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/j/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method
