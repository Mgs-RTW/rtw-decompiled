.class Lcom/netease/mpay/oversea/n/k/g$a;
.super Ljava/lang/Object;
.source "ServerApiWithLoginCallback.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/k/g;->a(ILcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/k/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/k/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/k/g$a;->a:Lcom/netease/mpay/oversea/n/k/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/g$a;->a:Lcom/netease/mpay/oversea/n/k/g;

    iget-object v1, v1, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/g$a;->a:Lcom/netease/mpay/oversea/n/k/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/g;->a(Lcom/netease/mpay/oversea/n/k/g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/g$a;->a:Lcom/netease/mpay/oversea/n/k/g;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/n/k/g$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/k/g$a$a;-><init>(Lcom/netease/mpay/oversea/n/k/g$a;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    :goto_0
    return-void
.end method
