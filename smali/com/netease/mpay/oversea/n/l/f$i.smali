.class Lcom/netease/mpay/oversea/n/l/f$i;
.super Lcom/netease/mpay/oversea/widget/d;
.source "PassportLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/f;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/f$i;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/f$i;->d:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
