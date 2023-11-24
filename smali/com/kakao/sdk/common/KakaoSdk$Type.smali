.class public final enum Lcom/kakao/sdk/common/KakaoSdk$Type;
.super Ljava/lang/Enum;
.source "KakaoSdk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/common/KakaoSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/common/KakaoSdk$Type;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/kakao/sdk/common/KakaoSdk$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "KOTLIN",
        "RX_KOTLIN",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/common/KakaoSdk$Type;

.field public static final enum KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

.field public static final enum RX_KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/sdk/common/KakaoSdk$Type;

    new-instance v1, Lcom/kakao/sdk/common/KakaoSdk$Type;

    const/4 v2, 0x0

    const-string v3, "KOTLIN"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/KakaoSdk$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/KakaoSdk$Type;->KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/common/KakaoSdk$Type;

    const/4 v2, 0x1

    const-string v3, "RX_KOTLIN"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/common/KakaoSdk$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/common/KakaoSdk$Type;->RX_KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk$Type;->$VALUES:[Lcom/kakao/sdk/common/KakaoSdk$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/common/KakaoSdk$Type;
    .locals 1

    const-class v0, Lcom/kakao/sdk/common/KakaoSdk$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/common/KakaoSdk$Type;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/common/KakaoSdk$Type;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk$Type;->$VALUES:[Lcom/kakao/sdk/common/KakaoSdk$Type;

    invoke-virtual {v0}, [Lcom/kakao/sdk/common/KakaoSdk$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/common/KakaoSdk$Type;

    return-object v0
.end method
