.class Lcom/netease/mpay/oversea/n/l/h$b;
.super Lcom/netease/mpay/oversea/widget/d;
.source "PassportLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/h;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Lcom/netease/mpay/oversea/n/l/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$b;->f:Lcom/netease/mpay/oversea/n/l/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/h$b;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/n/l/h$b;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$b;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/h$b;->e:Landroid/widget/EditText;

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$b;->f:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/h;->u(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$b;->f:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/h;->v(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$b;->f:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/h;->c(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__passport_account_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/h$b;->f:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/netease/mpay/oversea/n/l/h;->a(Lcom/netease/mpay/oversea/n/l/h;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
