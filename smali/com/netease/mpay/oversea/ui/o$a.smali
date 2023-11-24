.class Lcom/netease/mpay/oversea/ui/o$a;
.super Ljava/lang/Object;
.source "PermissionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, p2, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/ui/o;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->e()Lcom/netease/mpay/oversea/t/f/f;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/f;->c()Lcom/netease/mpay/oversea/t/c/h;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v0

    iput-boolean v0, p2, Lcom/netease/mpay/oversea/t/c/h;->a:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p2, Lcom/netease/mpay/oversea/t/c/h;->b:Z

    .line 5
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/t/f/f;->a(Lcom/netease/mpay/oversea/t/c/h;)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object p1

    iget-boolean p2, p2, Lcom/netease/mpay/oversea/t/c/h;->b:Z

    iput-boolean p2, p1, Lcom/netease/mpay/oversea/r/e;->c:Z

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/o;->b(Lcom/netease/mpay/oversea/ui/o;)V

    return-void
.end method
