.class Lcom/netease/mpay/oversea/ui/m$i$c;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$i;->a(Lcom/netease/mpay/oversea/n/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/h;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/m$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$i;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$c;->b:Lcom/netease/mpay/oversea/ui/m$i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m$i$c;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$c;->b:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$i$c;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m$i$c;->b:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 2
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    .line 3
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/k;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$c;->b:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/h;->a()V

    return-void
.end method
