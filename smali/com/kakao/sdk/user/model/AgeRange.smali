.class public final enum Lcom/kakao/sdk/user/model/AgeRange;
.super Ljava/lang/Enum;
.source "User.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/user/model/AgeRange;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/AgeRange;",
        "",
        "(Ljava/lang/String;I)V",
        "AGE_0_9",
        "AGE_10_14",
        "AGE_15_19",
        "AGE_20_29",
        "AGE_30_39",
        "AGE_40_49",
        "AGE_50_59",
        "AGE_60_69",
        "AGE_70_79",
        "AGE_80_89",
        "AGE_90_ABOVE",
        "UNKNOWN",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

.field public static final enum AGE_0_9:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "0~9"
    .end annotation
.end field

.field public static final enum AGE_10_14:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "10~14"
    .end annotation
.end field

.field public static final enum AGE_15_19:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "15~19"
    .end annotation
.end field

.field public static final enum AGE_20_29:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "20~29"
    .end annotation
.end field

.field public static final enum AGE_30_39:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "30~39"
    .end annotation
.end field

.field public static final enum AGE_40_49:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "40~49"
    .end annotation
.end field

.field public static final enum AGE_50_59:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "50~59"
    .end annotation
.end field

.field public static final enum AGE_60_69:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "60~69"
    .end annotation
.end field

.field public static final enum AGE_70_79:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "70~79"
    .end annotation
.end field

.field public static final enum AGE_80_89:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "80~89"
    .end annotation
.end field

.field public static final enum AGE_90_ABOVE:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "90~"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/kakao/sdk/user/model/AgeRange;
    .annotation runtime Lcom/kakao/sdk/common/json/UnknownValue;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/kakao/sdk/user/model/AgeRange;

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x0

    const-string v3, "AGE_0_9"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_0_9:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x1

    const-string v3, "AGE_10_14"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_10_14:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x2

    const-string v3, "AGE_15_19"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_15_19:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x3

    const-string v3, "AGE_20_29"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_20_29:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x4

    const-string v3, "AGE_30_39"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_30_39:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x5

    const-string v3, "AGE_40_49"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_40_49:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x6

    const-string v3, "AGE_50_59"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_50_59:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/4 v2, 0x7

    const-string v3, "AGE_60_69"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_60_69:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/16 v2, 0x8

    const-string v3, "AGE_70_79"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_70_79:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/16 v2, 0x9

    const-string v3, "AGE_80_89"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_80_89:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/16 v2, 0xa

    const-string v3, "AGE_90_ABOVE"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->AGE_90_ABOVE:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/kakao/sdk/user/model/AgeRange;

    const/16 v2, 0xb

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/kakao/sdk/user/model/AgeRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/user/model/AgeRange;->UNKNOWN:Lcom/kakao/sdk/user/model/AgeRange;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    const-class v0, Lcom/kakao/sdk/user/model/AgeRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/user/model/AgeRange;

    return-object p0
.end method

.method public static values()[Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/model/AgeRange;->$VALUES:[Lcom/kakao/sdk/user/model/AgeRange;

    invoke-virtual {v0}, [Lcom/kakao/sdk/user/model/AgeRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/user/model/AgeRange;

    return-object v0
.end method
