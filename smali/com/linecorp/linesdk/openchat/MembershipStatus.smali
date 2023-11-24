.class public final enum Lcom/linecorp/linesdk/openchat/MembershipStatus;
.super Ljava/lang/Enum;
.source "MembershipStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/openchat/MembershipStatus;

.field public static final enum JOINED:Lcom/linecorp/linesdk/openchat/MembershipStatus;

.field public static final enum NOT_JOINED:Lcom/linecorp/linesdk/openchat/MembershipStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/linecorp/linesdk/openchat/MembershipStatus;

    const-string v1, "JOINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/openchat/MembershipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/MembershipStatus;->JOINED:Lcom/linecorp/linesdk/openchat/MembershipStatus;

    .line 10
    new-instance v0, Lcom/linecorp/linesdk/openchat/MembershipStatus;

    const-string v1, "NOT_JOINED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/openchat/MembershipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/MembershipStatus;->NOT_JOINED:Lcom/linecorp/linesdk/openchat/MembershipStatus;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/linecorp/linesdk/openchat/MembershipStatus;

    sget-object v1, Lcom/linecorp/linesdk/openchat/MembershipStatus;->JOINED:Lcom/linecorp/linesdk/openchat/MembershipStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/openchat/MembershipStatus;->NOT_JOINED:Lcom/linecorp/linesdk/openchat/MembershipStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/linecorp/linesdk/openchat/MembershipStatus;->$VALUES:[Lcom/linecorp/linesdk/openchat/MembershipStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/MembershipStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/linecorp/linesdk/openchat/MembershipStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/openchat/MembershipStatus;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/openchat/MembershipStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/linecorp/linesdk/openchat/MembershipStatus;->$VALUES:[Lcom/linecorp/linesdk/openchat/MembershipStatus;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/openchat/MembershipStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/openchat/MembershipStatus;

    return-object v0
.end method
