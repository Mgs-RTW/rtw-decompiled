.class Lcom/netease/mpay/oversea/h/i$d$a;
.super Ljava/lang/Object;
.source "ServerApiTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/h/i$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/e;

.field final synthetic b:Lcom/netease/mpay/oversea/h/i$d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/h/i$d;Lcom/netease/mpay/oversea/h/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i$d$a;->b:Lcom/netease/mpay/oversea/h/i$d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/h/i$d$a;->a:Lcom/netease/mpay/oversea/h/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$d$a;->b:Lcom/netease/mpay/oversea/h/i$d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/h/i$d;->a:Lcom/netease/mpay/oversea/h/i;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$d$a;->b:Lcom/netease/mpay/oversea/h/i$d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/h/i$d;->a:Lcom/netease/mpay/oversea/h/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i$d$a;->a:Lcom/netease/mpay/oversea/h/e;

    iget-object v2, v0, Lcom/netease/mpay/oversea/h/i;->e:Lcom/netease/mpay/oversea/h/h;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V

    return-void
.end method
