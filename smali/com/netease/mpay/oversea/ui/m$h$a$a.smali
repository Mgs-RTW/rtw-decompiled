.class Lcom/netease/mpay/oversea/ui/m$h$a$a;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$h$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/m$h$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h$a$a;->a:Lcom/netease/mpay/oversea/ui/m$h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h$a$a;->a:Lcom/netease/mpay/oversea/ui/m$h$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h$a;->a:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m$h$a$a;->a:Lcom/netease/mpay/oversea/ui/m$h$a;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m$h$a;->a:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/k;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$h$a$a;->a:Lcom/netease/mpay/oversea/ui/m$h$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h$a;->a:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/h;->a()V

    return-void
.end method
