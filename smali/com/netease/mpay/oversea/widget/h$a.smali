.class Lcom/netease/mpay/oversea/widget/h$a;
.super Ljava/lang/Object;
.source "InheritPasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/h;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/widget/h$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/widget/h$l;

.field final synthetic b:Lcom/netease/mpay/oversea/widget/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/h;Lcom/netease/mpay/oversea/widget/h$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/h$a;->b:Lcom/netease/mpay/oversea/widget/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/h$a;->a:Lcom/netease/mpay/oversea/widget/h$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/h$a;->a:Lcom/netease/mpay/oversea/widget/h$l;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/netease/mpay/oversea/widget/h$l;->onCancel()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/h$a;->b:Lcom/netease/mpay/oversea/widget/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/h;->a(Lcom/netease/mpay/oversea/widget/h;)Lcom/netease/mpay/oversea/widget/h$j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/h$j;->b()V

    return-void
.end method
