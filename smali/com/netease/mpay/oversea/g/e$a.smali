.class Lcom/netease/mpay/oversea/g/e$a;
.super Ljava/lang/Object;
.source "UploadRoleTask.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/g/e;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "Lcom/netease/mpay/oversea/g/f/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/g/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/g/e$a;->a:Lcom/netease/mpay/oversea/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/g/e$a;->a:Lcom/netease/mpay/oversea/g/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/g/e;->a(Lcom/netease/mpay/oversea/g/e;)Lcom/netease/mpay/oversea/g/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/g/e$a;->a:Lcom/netease/mpay/oversea/g/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/g/e;->a(Lcom/netease/mpay/oversea/g/e;)Lcom/netease/mpay/oversea/g/e$b;

    move-result-object v0

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/g/e$a;->a:Lcom/netease/mpay/oversea/g/e;

    invoke-static {v1}, Lcom/netease/mpay/oversea/g/e;->b(Lcom/netease/mpay/oversea/g/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netease/mpay/oversea/g/e$b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/g/f/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/g/e$a;->a:Lcom/netease/mpay/oversea/g/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/g/e;->a(Lcom/netease/mpay/oversea/g/e;)Lcom/netease/mpay/oversea/g/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/g/e$a;->a:Lcom/netease/mpay/oversea/g/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/g/e;->a(Lcom/netease/mpay/oversea/g/e;)Lcom/netease/mpay/oversea/g/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/g/e$a;->a:Lcom/netease/mpay/oversea/g/e;

    invoke-static {v1}, Lcom/netease/mpay/oversea/g/e;->b(Lcom/netease/mpay/oversea/g/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netease/mpay/oversea/g/e$b;->a(Lcom/netease/mpay/oversea/g/f/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/g/f/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/g/e$a;->a(Lcom/netease/mpay/oversea/g/f/c;)V

    return-void
.end method
