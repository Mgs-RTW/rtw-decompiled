.class Lcom/netease/mpay/oversea/ui/h$e;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/h$j;

.field final synthetic b:I

.field final synthetic c:Lcom/netease/mpay/oversea/e;

.field final synthetic d:Lcom/netease/mpay/oversea/ui/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$e;->d:Lcom/netease/mpay/oversea/ui/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$e;->a:Lcom/netease/mpay/oversea/ui/h$j;

    iput p3, p0, Lcom/netease/mpay/oversea/ui/h$e;->b:I

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/h$e;->c:Lcom/netease/mpay/oversea/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$e;->d:Lcom/netease/mpay/oversea/ui/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$e;->a:Lcom/netease/mpay/oversea/ui/h$j;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$e;->d:Lcom/netease/mpay/oversea/ui/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$e;->a:Lcom/netease/mpay/oversea/ui/h$j;

    iget v2, p0, Lcom/netease/mpay/oversea/ui/h$e;->b:I

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/h$e;->c:Lcom/netease/mpay/oversea/e;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    return-void
.end method
