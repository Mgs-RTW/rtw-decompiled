.class Lcom/netease/mpay/oversea/l/d$a$a;
.super Ljava/lang/Object;
.source "InitImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/o$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/l/d$a;->a(Lcom/netease/mpay/oversea/l/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/l/d$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/l/d$a$a;->a:Lcom/netease/mpay/oversea/l/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/r/e;->b(Z)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/l/d$a$a;->a:Lcom/netease/mpay/oversea/l/d$a;

    iget-object v0, p1, Lcom/netease/mpay/oversea/l/d$a;->d:Lcom/netease/mpay/oversea/l/d;

    iget-object v1, p1, Lcom/netease/mpay/oversea/l/d$a;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/netease/mpay/oversea/l/d$a;->b:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/d$a;->c:Lcom/netease/mpay/oversea/r/d$a;

    invoke-static {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/l/d;->a(Lcom/netease/mpay/oversea/l/d;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V

    return-void
.end method
