.class public final enum Lcom/kakao/sdk/common/model/ClientErrorCause;
.super Ljava/lang/Enum;
.source "KakaoSdkError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/ClientErrorCause;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ClientErrorCause;",
        "",
        "(Ljava/lang/String;I)V",
        "Unknown",
        "Cancelled",
        "TokenNotFound",
        "NotSupported",
        "BadParameter",
        "IllegalState",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/ClientErrorCause;

.field public static final enum BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

.field public static final enum Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

.field public static final enum IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

.field public static final enum NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

.field public static final enum TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kakao/sdk/common/model/ClientErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/ClientErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x1

    const-string v3, "Cancelled"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/ClientErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x2

    const-string v3, "TokenNotFound"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/ClientErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x3

    const-string v3, "NotSupported"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/ClientErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x4

    const-string v3, "BadParameter"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/ClientErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x5

    const-string v3, "IllegalState"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/ClientErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/ClientErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/model/ClientErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-virtual {v0}, [Lcom/kakao/sdk/common/model/ClientErrorCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-object v0
.end method
