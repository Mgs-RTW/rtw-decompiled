.class Lcom/netease/mpay/oversea/o/g/c$a;
.super Lcom/netease/mpay/oversea/widget/r$b;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/o/g/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection"

    const-string v1, "child_protection_age"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/netease/mpay/oversea/o/g/f;

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->p(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/c;->w(Lcom/netease/mpay/oversea/o/g/c;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/netease/mpay/oversea/o/g/c$a$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/o/g/c$a$a;-><init>(Lcom/netease/mpay/oversea/o/g/c$a;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/o/g/f;-><init>(Landroid/app/Activity;ZLcom/netease/mpay/oversea/o/g/a;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    .line 23
    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/o/g/f;->a(Lcom/netease/mpay/oversea/o/g/b;Lcom/netease/mpay/oversea/o/g/b;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/o/g/f;->show()V

    return-void
.end method
