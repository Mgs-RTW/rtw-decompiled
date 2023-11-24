.class public final enum Lcom/linecorp/linesdk/message/template/ImageAspectRatio;
.super Ljava/lang/Enum;
.source "ImageAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/template/ImageAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

.field public static final enum RECTANGLE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

.field public static final enum SQUARE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;


# instance fields
.field private serverKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    const-string v1, "RECTANGLE"

    const-string v2, "rectangle"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->RECTANGLE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    .line 9
    new-instance v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    const-string v1, "SQUARE"

    const-string v2, "square"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->SQUARE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    sget-object v1, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->RECTANGLE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->SQUARE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    aput-object v1, v0, v4

    sput-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->$VALUES:[Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    iput-object p3, p0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->serverKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/template/ImageAspectRatio;
    .locals 1

    .line 5
    const-class v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/template/ImageAspectRatio;
    .locals 1

    .line 5
    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->$VALUES:[Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    return-object v0
.end method


# virtual methods
.method public getServerKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->serverKey:Ljava/lang/String;

    return-object v0
.end method
