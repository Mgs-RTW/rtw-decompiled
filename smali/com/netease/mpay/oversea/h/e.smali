.class public final Lcom/netease/mpay/oversea/h/e;
.super Ljava/lang/Object;
.source "DataStructure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lcom/netease/mpay/oversea/h/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)Lcom/netease/mpay/oversea/h/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/mpay/oversea/h/c;",
            ")",
            "Lcom/netease/mpay/oversea/h/e<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h/e;->a:Z

    .line 4
    iput p1, p0, Lcom/netease/mpay/oversea/h/e;->c:I

    .line 5
    iput-object p2, p0, Lcom/netease/mpay/oversea/h/e;->d:Lcom/netease/mpay/oversea/h/c;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/netease/mpay/oversea/h/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/netease/mpay/oversea/h/e<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h/e;->a:Z

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/e;->b:Ljava/lang/Object;

    return-object p0
.end method
