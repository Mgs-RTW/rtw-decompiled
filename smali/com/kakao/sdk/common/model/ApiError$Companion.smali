.class public final Lcom/kakao/sdk/common/model/ApiError$Companion;
.super Ljava/lang/Object;
.source "KakaoSdkError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/common/model/ApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ApiError$Companion;",
        "",
        "()V",
        "fromScopes",
        "Lcom/kakao/sdk/common/model/ApiError;",
        "scopes",
        "",
        "",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/kakao/sdk/common/model/ApiError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromScopes(Ljava/util/List;)Lcom/kakao/sdk/common/model/ApiError;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/sdk/common/model/ApiError;"
        }
    .end annotation

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/kakao/sdk/common/model/ApiError;

    .line 62
    sget-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 63
    new-instance v10, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    .line 64
    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v2}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    move-object v2, v10

    move-object v6, p1

    .line 63
    invoke-direct/range {v2 .. v9}, Lcom/kakao/sdk/common/model/ApiErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 p1, 0x193

    .line 60
    invoke-direct {v0, p1, v1, v10}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    return-object v0
.end method
