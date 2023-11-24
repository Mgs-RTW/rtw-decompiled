.class Lcom/netease/mpay/oversea/ui/m$i$g;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/m$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$g;->a:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$i$g;->a:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$g;->a:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/m$i;->a(Lcom/netease/mpay/oversea/ui/m$i;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->q:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m$i$g;->a:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/a;->h(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$g;->a:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/h;->a()V

    :goto_0
    return-void
.end method
