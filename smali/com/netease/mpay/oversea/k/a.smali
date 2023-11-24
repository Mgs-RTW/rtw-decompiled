.class public Lcom/netease/mpay/oversea/k/a;
.super Lcom/netease/mpay/oversea/k/c;
.source "ApiResultEvent.java"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/netease/mpay/oversea/t/c/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/k/c;-><init>()V

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/k/c;->a:I

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/k/a;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/k/a;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/k/a;->d:Lcom/netease/mpay/oversea/t/c/g;

    return-void
.end method
