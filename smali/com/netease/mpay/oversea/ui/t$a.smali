.class Lcom/netease/mpay/oversea/ui/t$a;
.super Ljava/lang/Object;
.source "WebVerifyHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/t;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/t;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/t$a;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t$a;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/t;->a(Lcom/netease/mpay/oversea/ui/t;)Lcom/netease/mpay/oversea/ui/u;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t$a;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/t;->a(Lcom/netease/mpay/oversea/ui/t;)Lcom/netease/mpay/oversea/ui/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/u;->j()V

    :cond_0
    return-void
.end method
