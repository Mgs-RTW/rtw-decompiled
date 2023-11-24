.class Lcom/netease/mpay/oversea/n/j/a$a;
.super Ljava/lang/Object;
.source "ApiRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/j/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/j/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/j/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/j/a$a;->a:Lcom/netease/mpay/oversea/n/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/j/a$a;->a:Lcom/netease/mpay/oversea/n/j/a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    new-instance v2, Lcom/netease/mpay/oversea/n/j/a$a$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/n/j/a$a$a;-><init>(Lcom/netease/mpay/oversea/n/j/a$a;)V

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method
