.class Lcom/netease/mpay/oversea/j/d/a/d$h;
.super Lcom/netease/mpay/oversea/widget/d;
.source "EmailVerifyCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/a/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Lcom/netease/mpay/oversea/j/d/a/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/d;Landroid/widget/EditText;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->h:Lcom/netease/mpay/oversea/j/d/a/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->f:Z

    iput-boolean p5, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->g:Z

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->h:Lcom/netease/mpay/oversea/j/d/a/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->f:Z

    iget-boolean v3, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->g:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/netease/mpay/oversea/j/d/a/d;->a(Lcom/netease/mpay/oversea/j/d/a/d;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$h;->h:Lcom/netease/mpay/oversea/j/d/a/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/d;->s(Lcom/netease/mpay/oversea/j/d/a/d;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_code_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
