.class Lcom/netease/mpay/oversea/n/l/f$l;
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

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Lcom/netease/mpay/oversea/n/l/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/f$l;->f:Lcom/netease/mpay/oversea/n/l/f;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/f$l;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/n/l/f$l;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/f$l;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/f$l;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/f$l;->f:Lcom/netease/mpay/oversea/n/l/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/f;->b(Lcom/netease/mpay/oversea/n/l/f;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__passport_account_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/f$l;->f:Lcom/netease/mpay/oversea/n/l/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/f;->c(Lcom/netease/mpay/oversea/n/l/f;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__passport_pwd_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/f$l;->f:Lcom/netease/mpay/oversea/n/l/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/f;->d(Lcom/netease/mpay/oversea/n/l/f;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__passport_account_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/f$l;->f:Lcom/netease/mpay/oversea/n/l/f;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/l/f;->e(Lcom/netease/mpay/oversea/n/l/f;)Lcom/netease/mpay/oversea/k/f;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/k/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v2, p1, v0, v3}, Lcom/netease/mpay/oversea/k/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V

    invoke-interface {v1, v2}, Lcom/netease/mpay/oversea/k/f;->c(Lcom/netease/mpay/oversea/k/c;)V

    return-void
.end method
