.class Lcom/netease/mpay/oversea/s/c/g$h;
.super Ljava/lang/Object;
.source "SecuritySetPassword.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/a0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/s/c/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 17
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    invoke-static {p3}, Lcom/netease/mpay/oversea/s/c/g;->h(Lcom/netease/mpay/oversea/s/c/g;)Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/g;->i(Lcom/netease/mpay/oversea/s/c/g;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s/c/g;->j(Lcom/netease/mpay/oversea/s/c/g;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/s/c/g$h$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/mpay/oversea/s/c/g$h$a;-><init>(Lcom/netease/mpay/oversea/s/c/g$h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 4
    invoke-static {p3, v0, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
