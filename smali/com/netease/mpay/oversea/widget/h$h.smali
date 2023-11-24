.class Lcom/netease/mpay/oversea/widget/h$h;
.super Lcom/netease/mpay/oversea/widget/d;
.source "InheritPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/h;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/widget/h$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/widget/h$l;

.field final synthetic e:Landroid/app/AlertDialog;

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/netease/mpay/oversea/widget/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/h;Lcom/netease/mpay/oversea/widget/h$l;Landroid/app/AlertDialog;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/h$h;->g:Lcom/netease/mpay/oversea/widget/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/h$h;->d:Lcom/netease/mpay/oversea/widget/h$l;

    iput-object p3, p0, Lcom/netease/mpay/oversea/widget/h$h;->e:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/netease/mpay/oversea/widget/h$h;->f:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/h$h;->d:Lcom/netease/mpay/oversea/widget/h$l;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/netease/mpay/oversea/widget/h$l;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/h$h;->e:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/h$h;->g:Lcom/netease/mpay/oversea/widget/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/h;->a(Lcom/netease/mpay/oversea/widget/h;)Lcom/netease/mpay/oversea/widget/h$j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/h$j;->b()V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/h$h;->f:Landroid/app/Activity;

    const-string v1, "guide_transfer_code"

    const-string v2, "skip"

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
