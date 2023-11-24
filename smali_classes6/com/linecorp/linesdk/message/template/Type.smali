.class public final enum Lcom/linecorp/linesdk/message/template/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/template/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum CONFIRM:Lcom/linecorp/linesdk/message/template/Type;

.field public static final enum IMAGE_CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;


# instance fields
.field private final serverKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/linecorp/linesdk/message/template/Type;

    const-string v1, "BUTTONS"

    const-string v2, "buttons"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/Type;->BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

    .line 8
    new-instance v0, Lcom/linecorp/linesdk/message/template/Type;

    const-string v1, "CONFIRM"

    const-string v2, "confirm"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/Type;->CONFIRM:Lcom/linecorp/linesdk/message/template/Type;

    .line 9
    new-instance v0, Lcom/linecorp/linesdk/message/template/Type;

    const-string v1, "CAROUSEL"

    const-string v2, "carousel"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/Type;->CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    .line 10
    new-instance v0, Lcom/linecorp/linesdk/message/template/Type;

    const-string v1, "IMAGE_CAROUSEL"

    const-string v2, "image_carousel"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/linecorp/linesdk/message/template/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/Type;->IMAGE_CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/linecorp/linesdk/message/template/Type;

    sget-object v1, Lcom/linecorp/linesdk/message/template/Type;->BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/message/template/Type;->CONFIRM:Lcom/linecorp/linesdk/message/template/Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linecorp/linesdk/message/template/Type;->CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linecorp/linesdk/message/template/Type;->IMAGE_CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/linecorp/linesdk/message/template/Type;->$VALUES:[Lcom/linecorp/linesdk/message/template/Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/linecorp/linesdk/message/template/Type;->serverKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/template/Type;
    .locals 1

    .line 6
    const-class v0, Lcom/linecorp/linesdk/message/template/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/template/Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/template/Type;
    .locals 1

    .line 6
    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->$VALUES:[Lcom/linecorp/linesdk/message/template/Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/template/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/template/Type;

    return-object v0
.end method


# virtual methods
.method public getServerKey()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/linecorp/linesdk/message/template/Type;->serverKey:Ljava/lang/String;

    return-object v0
.end method
