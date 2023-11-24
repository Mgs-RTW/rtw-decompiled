.class Lcom/netease/mpay/oversea/ui/m$c;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/h;

.field final synthetic b:Lcom/netease/mpay/oversea/h/c;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$c;->c:Lcom/netease/mpay/oversea/ui/m;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m$c;->a:Lcom/netease/mpay/oversea/n/h;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/m$c;->b:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$c;->c:Lcom/netease/mpay/oversea/ui/m;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/m;->f:Z

    if-eqz v1, :cond_0

    const-string v0, "api login failed, try to connect api service"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$c;->c:Lcom/netease/mpay/oversea/ui/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/ui/m;->f:Z

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->c()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$c;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m$c;->b:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m$c;->c:Lcom/netease/mpay/oversea/ui/m;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 8
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method
