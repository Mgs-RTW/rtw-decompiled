.class Lcom/netease/mpay/oversea/ui/m$h$i;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$h;->a(ILcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/c;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/m$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->b:Lcom/netease/mpay/oversea/ui/m$h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->b:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->p:Lcom/netease/mpay/oversea/k/j;

    new-instance v1, Lcom/netease/mpay/oversea/k/i;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/k/i;-><init>(Lcom/netease/mpay/oversea/h/c;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/k/j;->a(Lcom/netease/mpay/oversea/k/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->b:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->b:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->b:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->b:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v2, v0, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h$i;->b:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method
