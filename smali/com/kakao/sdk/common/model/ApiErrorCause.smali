.class public final enum Lcom/kakao/sdk/common/model/ApiErrorCause;
.super Ljava/lang/Enum;
.source "KakaoSdkError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008#\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ApiErrorCause;",
        "",
        "errorCode",
        "",
        "(Ljava/lang/String;II)V",
        "getErrorCode",
        "()I",
        "InternalError",
        "IllegalParams",
        "UnsupportedApi",
        "BlockedAction",
        "PermissionDenied",
        "DeprecatedApi",
        "ApiLimitExceeded",
        "NotRegisteredUser",
        "AlreadyRegisteredUser",
        "AccountDoesNotExist",
        "PropertyKeyDoesNotExist",
        "AppDoesNotExist",
        "InvalidToken",
        "InsufficientScope",
        "RequiredAgeVerification",
        "UnderAgeLimit",
        "NotTalkUser",
        "NotFriend",
        "UserDeviceUnsupported",
        "TalkMessageDisabled",
        "TalkSendMessageMonthlyLimitExceed",
        "TalkSendMessageDailyLimitExceed",
        "NotStoryUser",
        "StoryImageUploadSizeExceeded",
        "TimeOut",
        "StoryInvalidScrapUrl",
        "StoryInvalidPostId",
        "StoryMaxUploadCountExceed",
        "DeveloperDoesNotExist",
        "UnderMaintenance",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

.field public static final enum AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-103"
    .end annotation
.end field

.field public static final enum AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-102"
    .end annotation
.end field

.field public static final enum ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-10"
    .end annotation
.end field

.field public static final enum AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-301"
    .end annotation
.end field

.field public static final enum BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-4"
    .end annotation
.end field

.field public static final enum DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-9"
    .end annotation
.end field

.field public static final enum DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-903"
    .end annotation
.end field

.field public static final enum IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-2"
    .end annotation
.end field

.field public static final enum InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-402"
    .end annotation
.end field

.field public static final enum InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-1"
    .end annotation
.end field

.field public static final enum InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-401"
    .end annotation
.end field

.field public static final enum NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-502"
    .end annotation
.end field

.field public static final enum NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-101"
    .end annotation
.end field

.field public static final enum NotStoryUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-601"
    .end annotation
.end field

.field public static final enum NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-501"
    .end annotation
.end field

.field public static final enum PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-5"
    .end annotation
.end field

.field public static final enum PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-201"
    .end annotation
.end field

.field public static final enum RequiredAgeVerification:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-405"
    .end annotation
.end field

.field public static final enum StoryImageUploadSizeExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-602"
    .end annotation
.end field

.field public static final enum StoryInvalidPostId:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-605"
    .end annotation
.end field

.field public static final enum StoryInvalidScrapUrl:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-604"
    .end annotation
.end field

.field public static final enum StoryMaxUploadCountExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-606"
    .end annotation
.end field

.field public static final enum TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-530"
    .end annotation
.end field

.field public static final enum TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-532"
    .end annotation
.end field

.field public static final enum TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-531"
    .end annotation
.end field

.field public static final enum TimeOut:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-603"
    .end annotation
.end field

.field public static final enum UnderAgeLimit:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-406"
    .end annotation
.end field

.field public static final enum UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-9798"
    .end annotation
.end field

.field public static final enum Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field

.field public static final enum UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-3"
    .end annotation
.end field

.field public static final enum UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "-504"
    .end annotation
.end field


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/kakao/sdk/common/model/ApiErrorCause;

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x0

    const-string v3, "InternalError"

    const/4 v4, -0x1

    .line 141
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->InternalError:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x1

    const-string v3, "IllegalParams"

    const/4 v4, -0x2

    .line 145
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->IllegalParams:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x2

    const-string v3, "UnsupportedApi"

    const/4 v4, -0x3

    .line 149
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnsupportedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x3

    const-string v3, "BlockedAction"

    const/4 v4, -0x4

    .line 153
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->BlockedAction:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x4

    const-string v3, "PermissionDenied"

    const/4 v4, -0x5

    .line 157
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->PermissionDenied:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x5

    const-string v3, "DeprecatedApi"

    const/16 v4, -0x9

    .line 161
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeprecatedApi:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x6

    const-string v3, "ApiLimitExceeded"

    const/16 v4, -0xa

    .line 165
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->ApiLimitExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/4 v2, 0x7

    const-string v3, "NotRegisteredUser"

    const/16 v4, -0x65

    .line 169
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x8

    const-string v3, "AlreadyRegisteredUser"

    const/16 v4, -0x66

    .line 173
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->AlreadyRegisteredUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x9

    const-string v3, "AccountDoesNotExist"

    const/16 v4, -0x67

    .line 177
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->AccountDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0xa

    const-string v3, "PropertyKeyDoesNotExist"

    const/16 v4, -0xc9

    .line 181
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->PropertyKeyDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0xb

    const-string v3, "AppDoesNotExist"

    const/16 v4, -0x12d

    .line 185
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->AppDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0xc

    const-string v3, "InvalidToken"

    const/16 v4, -0x191

    .line 189
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0xd

    const-string v3, "InsufficientScope"

    const/16 v4, -0x192

    .line 193
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0xe

    const-string v3, "RequiredAgeVerification"

    const/16 v4, -0x195

    .line 197
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->RequiredAgeVerification:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0xf

    const-string v3, "UnderAgeLimit"

    const/16 v4, -0x196

    .line 201
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderAgeLimit:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x10

    const-string v3, "NotTalkUser"

    const/16 v4, -0x1f5

    .line 205
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotTalkUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x11

    const-string v3, "NotFriend"

    const/16 v4, -0x1f6

    .line 209
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotFriend:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x12

    const-string v3, "UserDeviceUnsupported"

    const/16 v4, -0x1f8

    .line 213
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->UserDeviceUnsupported:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x13

    const-string v3, "TalkMessageDisabled"

    const/16 v4, -0x212

    .line 217
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkMessageDisabled:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x14

    const-string v3, "TalkSendMessageMonthlyLimitExceed"

    const/16 v4, -0x213

    .line 221
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageMonthlyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x15

    const-string v3, "TalkSendMessageDailyLimitExceed"

    const/16 v4, -0x214

    .line 225
    invoke-direct {v1, v3, v2, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->TalkSendMessageDailyLimitExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "NotStoryUser"

    const/16 v3, 0x16

    const/16 v4, -0x259

    .line 229
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->NotStoryUser:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "StoryImageUploadSizeExceeded"

    const/16 v3, 0x17

    const/16 v4, -0x25a

    .line 233
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->StoryImageUploadSizeExceeded:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "TimeOut"

    const/16 v3, 0x18

    const/16 v4, -0x25b

    .line 237
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->TimeOut:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "StoryInvalidScrapUrl"

    const/16 v3, 0x19

    const/16 v4, -0x25c

    .line 241
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->StoryInvalidScrapUrl:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "StoryInvalidPostId"

    const/16 v3, 0x1a

    const/16 v4, -0x25d

    .line 245
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->StoryInvalidPostId:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "StoryMaxUploadCountExceed"

    const/16 v3, 0x1b

    const/16 v4, -0x25e

    .line 249
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->StoryMaxUploadCountExceed:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "DeveloperDoesNotExist"

    const/16 v3, 0x1c

    const/16 v4, -0x387

    .line 253
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->DeveloperDoesNotExist:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "UnderMaintenance"

    const/16 v3, 0x1d

    const/16 v4, -0x2646

    .line 257
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->UnderMaintenance:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    const-string v2, "Unknown"

    const/16 v3, 0x1e

    const v4, 0x7fffffff

    .line 261
    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/common/model/ApiErrorCause;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakao/sdk/common/model/ApiErrorCause;->errorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/model/ApiErrorCause;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/model/ApiErrorCause;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->$VALUES:[Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, [Lcom/kakao/sdk/common/model/ApiErrorCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/model/ApiErrorCause;

    return-object v0
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/kakao/sdk/common/model/ApiErrorCause;->errorCode:I

    return v0
.end method
