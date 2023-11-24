.class Lcom/netease/mpay/oversea/ui/m$a;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/j$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m;->m()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$a;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$a;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/a0/b;->a()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$a;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$a;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 4
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method public onCancel()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$a;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/h/c;

    const/16 v4, 0x2713

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$a;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
