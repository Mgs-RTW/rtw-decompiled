.class Lcom/netease/mpay/oversea/ui/m$i$k;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$i;->e()V
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$k;->a:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$k;->a:Lcom/netease/mpay/oversea/ui/m$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m$i;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->c()V

    return-void
.end method
