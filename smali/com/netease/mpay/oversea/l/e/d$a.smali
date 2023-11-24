.class Lcom/netease/mpay/oversea/l/e/d$a;
.super Ljava/lang/Object;
.source "GameConfigResponse.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/l/e/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/netease/mpay/oversea/l/e/d$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l/e/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/l/e/d$f;Lcom/netease/mpay/oversea/l/e/d$f;)I
    .locals 0

    .line 1
    iget p1, p1, Lcom/netease/mpay/oversea/l/e/d$f;->h:I

    iget p2, p2, Lcom/netease/mpay/oversea/l/e/d$f;->h:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/l/e/d$f;

    check-cast p2, Lcom/netease/mpay/oversea/l/e/d$f;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/l/e/d$a;->a(Lcom/netease/mpay/oversea/l/e/d$f;Lcom/netease/mpay/oversea/l/e/d$f;)I

    move-result p1

    return p1
.end method
