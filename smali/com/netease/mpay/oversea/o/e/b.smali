.class public Lcom/netease/mpay/oversea/o/e/b;
.super Lcom/netease/mpay/oversea/h/k/b;
.source "LVUConfigResponse.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/h/k/b;-><init>()V

    const-string v0, "01012000"

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/o/e/b;->c:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/e/b;->a:Ljava/util/ArrayList;

    .line 6
    iput-object p2, p0, Lcom/netease/mpay/oversea/o/e/b;->b:Ljava/lang/String;

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iput-object p3, p0, Lcom/netease/mpay/oversea/o/e/b;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method
