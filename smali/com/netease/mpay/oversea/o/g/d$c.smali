.class Lcom/netease/mpay/oversea/o/g/d$c;
.super Lcom/netease/mpay/oversea/widget/d;
.source "RegionPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/o/g/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/d;->f(Lcom/netease/mpay/oversea/o/g/d;)Lcom/netease/mpay/oversea/o/g/d$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/d;->f(Lcom/netease/mpay/oversea/o/g/d;)Lcom/netease/mpay/oversea/o/g/d$d;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/d;->c(Lcom/netease/mpay/oversea/o/g/d;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/d;->a(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/o/a;

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/o/g/d$d;->a(ILcom/netease/mpay/oversea/o/a;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/d$c;->d:Lcom/netease/mpay/oversea/o/g/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "change_region"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
