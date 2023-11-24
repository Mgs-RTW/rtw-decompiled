.class public Lcom/netease/mpay/oversea/n/i/b/e$b;
.super Ljava/lang/Object;
.source "UserInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/n/i/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/netease/mpay/oversea/n/i/b/e$b;->b:I

    .line 7
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/i/b/e$b;->a:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/netease/mpay/oversea/n/i/b/e$b;->b:I

    return-void
.end method
