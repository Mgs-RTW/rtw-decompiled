.class Lcom/netease/lotr/CutOutInfo;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field public mIsCutOut:Z

.field public mSafeAreaBottom:I

.field public mSafeAreaLeft:I

.field public mSafeAreaRight:I

.field public mSafeAreaTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I

    .line 79
    iput v0, p0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaRight:I

    .line 80
    iput v0, p0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaTop:I

    .line 81
    iput v0, p0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaBottom:I

    return-void
.end method
