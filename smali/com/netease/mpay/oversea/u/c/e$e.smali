.class Lcom/netease/mpay/oversea/u/c/e$e;
.super Ljava/lang/Object;
.source "SwitchView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/t/d/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    iget v1, p2, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/u/c/e;->b(Lcom/netease/mpay/oversea/u/c/e;I)I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    iget-object v1, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/u/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/u/c/e;I)I

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/u/c/e;Lcom/netease/mpay/oversea/t/d/b;)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/t/d/b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    iget v1, p2, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/u/c/e;->b(Lcom/netease/mpay/oversea/u/c/e;I)I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    iget-object v1, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/u/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/u/c/e;I)I

    .line 4
    iget-object p1, p2, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/e;->b(Lcom/netease/mpay/oversea/u/c/e;)Lcom/netease/mpay/oversea/k/f;

    move-result-object p1

    new-instance v2, Lcom/netease/mpay/oversea/k/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {v3}, Lcom/netease/mpay/oversea/u/c/e;->r(Lcom/netease/mpay/oversea/u/c/e;)I

    move-result v3

    invoke-static {v3}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/n/h;->u:Lcom/netease/mpay/oversea/n/h;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-direct {v4, v5, p2, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/netease/mpay/oversea/k/h;-><init>(ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    .line 7
    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/e;->r(Lcom/netease/mpay/oversea/u/c/e;)I

    move-result p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/netease/mpay/oversea/k/h;->a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/k/h;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/k/f;->c(Lcom/netease/mpay/oversea/k/c;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/e;->c(Lcom/netease/mpay/oversea/u/c/e;)Lcom/netease/mpay/oversea/k/f;

    move-result-object p1

    new-instance v2, Lcom/netease/mpay/oversea/k/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/u/c/e$e;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {v3}, Lcom/netease/mpay/oversea/u/c/e;->r(Lcom/netease/mpay/oversea/u/c/e;)I

    move-result v3

    invoke-static {v3}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/n/h;->s:Lcom/netease/mpay/oversea/n/h;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-direct {v4, v5, p2, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/netease/mpay/oversea/k/h;-><init>(ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-interface {p1, v2}, Lcom/netease/mpay/oversea/k/f;->c(Lcom/netease/mpay/oversea/k/c;)V

    :goto_0
    return-void
.end method
