.class Lcom/netease/mpay/oversea/widget/g$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "InheritCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/g;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/netease/mpay/oversea/widget/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/g;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/g$a;->g:Lcom/netease/mpay/oversea/widget/g;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/g$a;->d:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/widget/g$a;->e:Ljava/lang/String;

    iput p4, p0, Lcom/netease/mpay/oversea/widget/g$a;->f:I

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/g$a;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/g$a;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/h/m/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/g$a;->d:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_copy_success:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/g$a;->d:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_copy_failed:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/g$a;->g:Lcom/netease/mpay/oversea/widget/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/g$a;->d:Landroid/app/Activity;

    iget v2, p0, Lcom/netease/mpay/oversea/widget/g$a;->f:I

    invoke-static {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/widget/g;->a(Lcom/netease/mpay/oversea/widget/g;Ljava/lang/String;Landroid/app/Activity;I)V

    return-void
.end method
