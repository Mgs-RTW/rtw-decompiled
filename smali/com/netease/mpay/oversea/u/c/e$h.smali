.class Lcom/netease/mpay/oversea/u/c/e$h;
.super Ljava/lang/Object;
.source "SwitchView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/ui/h$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/c;

.field final synthetic b:Lcom/netease/mpay/oversea/u/c/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/e;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$h;->b:Lcom/netease/mpay/oversea/u/c/e;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/e$h;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$h;->a:Lcom/netease/mpay/oversea/h/c;

    iget v0, v0, Lcom/netease/mpay/oversea/h/c;->a:I

    const/16 v1, 0x271c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x271d

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/e$h;->b:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/e;->k(Lcom/netease/mpay/oversea/u/c/e;)V

    :cond_1
    return-void
.end method
