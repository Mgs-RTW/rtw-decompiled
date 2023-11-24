.class public final Lcom/kakao/sdk/user/model/AccessTokenInfo;
.super Ljava/lang/Object;
.source "AccessTokenInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/AccessTokenInfo$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J8\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0011\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "expiresIn",
        "appId",
        "",
        "expiresInMillis",
        "(JJILjava/lang/Long;)V",
        "getAppId",
        "()I",
        "getExpiresIn",
        "()J",
        "expiresInMillis$annotations",
        "()V",
        "getExpiresInMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getId",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(JJILjava/lang/Long;)Lcom/kakao/sdk/user/model/AccessTokenInfo;",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "user_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final appId:I

.field private final expiresIn:J

.field private final expiresInMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiresInMillis"
    .end annotation
.end field

.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/user/model/AccessTokenInfo$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/user/model/AccessTokenInfo$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJILjava/lang/Long;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    iput-wide p3, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    iput p5, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    iput-object p6, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/user/model/AccessTokenInfo;JJILjava/lang/Long;ILjava/lang/Object;)Lcom/kakao/sdk/user/model/AccessTokenInfo;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget p5, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    :cond_2
    move v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p6, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/kakao/sdk/user/model/AccessTokenInfo;->copy(JJILjava/lang/Long;)Lcom/kakao/sdk/user/model/AccessTokenInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic expiresInMillis$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "\'\ucd08\' \ub2e8\uc704\ub97c \uc0ac\uc6a9\ud558\ub294 \'expiresIn\' \uc18d\uc131\uc73c\ub85c \ub300\uccb4\ub418\uc5c8\uc2b5\ub2c8\ub2e4."
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    return v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(JJILjava/lang/Long;)Lcom/kakao/sdk/user/model/AccessTokenInfo;
    .locals 8

    new-instance v7, Lcom/kakao/sdk/user/model/AccessTokenInfo;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/kakao/sdk/user/model/AccessTokenInfo;-><init>(JJILjava/lang/Long;)V

    return-object v7
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/kakao/sdk/user/model/AccessTokenInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/kakao/sdk/user/model/AccessTokenInfo;

    iget-wide v3, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    iget-wide v5, p1, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    iget-wide v5, p1, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    iget v3, p1, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    iget-object p1, p1, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getAppId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    return v0
.end method

.method public final getExpiresIn()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    return-wide v0
.end method

.method public final getExpiresInMillis()Ljava/lang/Long;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    invoke-static {v0, v1}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    invoke-static {v1, v2}, L$r8$backportedMethods$utility$Long$1$hashCode;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessTokenInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->appId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/kakao/sdk/user/model/AccessTokenInfo;->expiresInMillis:Ljava/lang/Long;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
