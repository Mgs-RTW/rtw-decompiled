.class public Lcom/netease/mpay/oversea/h/b;
.super Ljava/lang/Exception;
.source "ApiCallException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/h/b$a;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Lcom/netease/mpay/oversea/h/c;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/b;->b:Lcom/netease/mpay/oversea/h/c;

    const/16 p1, 0x2711

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/h/b;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/h/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/b;->b:Lcom/netease/mpay/oversea/h/c;

    return-object v0
.end method
