.class Lcom/netease/mpay/oversea/thirdapi/i0/a$a;
.super Ljava/lang/Object;
.source "BrowserActivityProxy.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/i0/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "Lcom/netease/mpay/oversea/n/i/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/i0/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/i0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;->a:Lcom/netease/mpay/oversea/thirdapi/i0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;->a:Lcom/netease/mpay/oversea/thirdapi/i0/a;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c(Lcom/netease/mpay/oversea/thirdapi/i0/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;->a:Lcom/netease/mpay/oversea/thirdapi/i0/a;

    iget-object v1, p1, Lcom/netease/mpay/oversea/n/i/b/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a(Lcom/netease/mpay/oversea/thirdapi/i0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;->a:Lcom/netease/mpay/oversea/thirdapi/i0/a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/i/b/c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->b(Lcom/netease/mpay/oversea/thirdapi/i0/a;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;->a:Lcom/netease/mpay/oversea/thirdapi/i0/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c(Lcom/netease/mpay/oversea/thirdapi/i0/a;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;->a(Lcom/netease/mpay/oversea/n/i/b/c;)V

    return-void
.end method
