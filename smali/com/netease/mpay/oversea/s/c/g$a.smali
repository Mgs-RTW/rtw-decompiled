.class Lcom/netease/mpay/oversea/s/c/g$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "SecuritySetPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/s/c/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/g$a;->d:Lcom/netease/mpay/oversea/s/c/g;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/g$a;->d:Lcom/netease/mpay/oversea/s/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/g;->a(Lcom/netease/mpay/oversea/s/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    const-string v0, "security_email"

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    return-void
.end method
