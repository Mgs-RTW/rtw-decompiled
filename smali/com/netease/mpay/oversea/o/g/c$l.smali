.class Lcom/netease/mpay/oversea/o/g/c$l;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "Lcom/netease/mpay/oversea/o/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/o/g/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$l;->b:Lcom/netease/mpay/oversea/o/g/c;

    iput-object p2, p0, Lcom/netease/mpay/oversea/o/g/c$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$l;->b:Lcom/netease/mpay/oversea/o/g/c;

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/o/e/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$l;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->n(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/o/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c$l;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/c;->b(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c$l;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/c;->b(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/a;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/o/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/o/e/d;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$l;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->o(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/o/e/d;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/o/g/c$l;->a(Lcom/netease/mpay/oversea/o/e/d;)V

    return-void
.end method
