.class Lcom/netease/mpay/oversea/u/c/g$b;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/g;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$b;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$b;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/g;->m(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/w;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$b;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/g;->m(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/w;->q()V

    :cond_0
    return-void
.end method
