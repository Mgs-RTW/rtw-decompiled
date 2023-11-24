.class public final enum Lcom/linecorp/linesdk/LineApiResponseCode;
.super Ljava/lang/Enum;
.source "LineApiResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/LineApiResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

.field public static final enum SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 14
    new-instance v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v1, "CANCEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 18
    new-instance v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v1, "NETWORK_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 22
    new-instance v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v1, "SERVER_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 26
    new-instance v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v1, "AUTHENTICATION_AGENT_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    .line 30
    new-instance v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/linecorp/linesdk/LineApiResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->$VALUES:[Lcom/linecorp/linesdk/LineApiResponseCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 1

    .line 6
    const-class v0, Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 1

    .line 6
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->$VALUES:[Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/LineApiResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object v0
.end method
