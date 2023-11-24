.class Lcom/netease/mpay/oversea/ui/m$b;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m;->c()V
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-boolean v3, v0, Lcom/netease/mpay/oversea/ui/m;->f:Z

    new-instance v4, Lcom/netease/mpay/oversea/ui/m$g;

    invoke-direct {v4, v0}, Lcom/netease/mpay/oversea/ui/m$g;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method
