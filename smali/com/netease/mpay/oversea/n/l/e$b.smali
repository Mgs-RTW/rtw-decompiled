.class Lcom/netease/mpay/oversea/n/l/e$b;
.super Ljava/lang/Object;
.source "LoginMore.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/l/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$b;->a:Lcom/netease/mpay/oversea/n/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/e$b;->a:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/e;->c(Lcom/netease/mpay/oversea/n/l/e;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/e$b;->a:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/e;->d(Lcom/netease/mpay/oversea/n/l/e;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/e$b;->a:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/l/e;->e(Lcom/netease/mpay/oversea/n/l/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lcom/netease/mpay/oversea/trackers/b;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
