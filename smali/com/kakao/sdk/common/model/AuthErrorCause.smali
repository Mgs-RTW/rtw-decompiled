.class public final enum Lcom/kakao/sdk/common/model/AuthErrorCause;
.super Ljava/lang/Enum;
.source "KakaoSdkError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/AuthErrorCause;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/AuthErrorCause;",
        "",
        "(Ljava/lang/String;I)V",
        "InvalidRequest",
        "InvalidClient",
        "InvalidScope",
        "InvalidGrant",
        "Misconfigured",
        "Unauthorized",
        "AccessDenied",
        "ServerError",
        "Unknown",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/AuthErrorCause;

.field public static final enum AccessDenied:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_denied"
    .end annotation
.end field

.field public static final enum InvalidClient:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_client"
    .end annotation
.end field

.field public static final enum InvalidGrant:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_grant"
    .end annotation
.end field

.field public static final enum InvalidRequest:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_request"
    .end annotation
.end field

.field public static final enum InvalidScope:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_scope"
    .end annotation
.end field

.field public static final enum Misconfigured:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "misconfigured"
    .end annotation
.end field

.field public static final enum ServerError:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_error"
    .end annotation
.end field

.field public static final enum Unauthorized:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unauthorized"
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kakao/sdk/common/model/AuthErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x0

    const-string v3, "InvalidRequest"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidRequest:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x1

    const-string v3, "InvalidClient"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidClient:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x2

    const-string v3, "InvalidScope"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidScope:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x3

    const-string v3, "InvalidGrant"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->InvalidGrant:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x4

    const-string v3, "Misconfigured"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->Misconfigured:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x5

    const-string v3, "Unauthorized"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unauthorized:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x6

    const-string v3, "AccessDenied"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->AccessDenied:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/4 v2, 0x7

    const-string v3, "ServerError"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->ServerError:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    const/16 v2, 0x8

    const-string v3, "Unknown"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/model/AuthErrorCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AuthErrorCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/AuthErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/AuthErrorCause;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/model/AuthErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/AuthErrorCause;

    invoke-virtual {v0}, [Lcom/kakao/sdk/common/model/AuthErrorCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/AuthErrorCause;

    return-object v0
.end method
