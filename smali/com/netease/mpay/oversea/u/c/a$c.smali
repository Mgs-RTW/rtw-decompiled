.class Lcom/netease/mpay/oversea/u/c/a$c;
.super Lcom/netease/mpay/oversea/widget/d;
.source "BindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/a;->a(ZZLcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/i/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/t/c/g;

.field final synthetic e:Lcom/netease/mpay/oversea/u/c/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/a;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$c;->e:Lcom/netease/mpay/oversea/u/c/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/a$c;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$c;->e:Lcom/netease/mpay/oversea/u/c/a;

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/a$c;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/u/c/a;->a(Lcom/netease/mpay/oversea/u/c/a;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/g;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$c;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->z(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "reset_password"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
