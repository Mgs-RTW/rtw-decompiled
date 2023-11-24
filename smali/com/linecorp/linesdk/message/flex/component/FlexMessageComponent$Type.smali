.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
.super Ljava/lang/Enum;
.source "FlexMessageComponent.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Stringable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum BOX:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum BUTTON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum FILLER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum ICON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum IMAGE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum SEPARATOR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum SPACER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

.field public static final enum TEXT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "BOX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BOX:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    .line 30
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "BUTTON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BUTTON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    .line 31
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "FILLER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->FILLER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    .line 32
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "ICON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->ICON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    .line 33
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "IMAGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->IMAGE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    .line 34
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "SEPARATOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SEPARATOR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    .line 35
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "SPACER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SPACER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    .line 36
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const-string v1, "TEXT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->TEXT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    const/16 v0, 0x8

    .line 28
    new-array v0, v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BOX:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BUTTON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->FILLER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->ICON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->IMAGE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SEPARATOR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SPACER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->TEXT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    aput-object v1, v0, v9

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
    .locals 1

    .line 28
    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
    .locals 1

    .line 28
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    return-object v0
.end method
