.class Lcom/netease/mpay/oversea/u/c/a$a$a;
.super Ljava/lang/Object;
.source "BindView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/a$a;->b(ILcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/a$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a$a;->a:Lcom/netease/mpay/oversea/u/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a$a;->a:Lcom/netease/mpay/oversea/u/c/a$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->k(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$i;

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/f;->V()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/ui/h$i;-><init>(Z)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/a$a$a;->a:Lcom/netease/mpay/oversea/u/c/a$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    .line 3
    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/a;->j(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
