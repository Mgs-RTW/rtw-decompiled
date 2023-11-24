.class Lcom/netease/mpay/oversea/j/d/a/d$g;
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
.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/netease/mpay/oversea/j/d/a/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/d;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$g;->f:Lcom/netease/mpay/oversea/j/d/a/d;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/j/d/a/d$g;->d:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/j/d/a/d$g;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$g;->f:Lcom/netease/mpay/oversea/j/d/a/d;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/j/d/a/d$g;->d:Z

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/a/d$g;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/j/d/a/d;->a(Lcom/netease/mpay/oversea/j/d/a/d;ZLjava/lang/String;)V

    return-void
.end method
