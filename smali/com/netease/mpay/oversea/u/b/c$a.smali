.class Lcom/netease/mpay/oversea/u/b/c$a;
.super Ljava/lang/Object;
.source "UnBindTask.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/o$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/b/c;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/b/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/b/c$a;->a:Lcom/netease/mpay/oversea/u/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/b/c$a;->a:Lcom/netease/mpay/oversea/u/b/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/b/c;->b(Lcom/netease/mpay/oversea/u/b/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/b/c$a;->a:Lcom/netease/mpay/oversea/u/b/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/u/b/c;->c(Lcom/netease/mpay/oversea/u/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/b/c$a;->a:Lcom/netease/mpay/oversea/u/b/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/b/c;->a(Lcom/netease/mpay/oversea/u/b/c;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    return-void
.end method
