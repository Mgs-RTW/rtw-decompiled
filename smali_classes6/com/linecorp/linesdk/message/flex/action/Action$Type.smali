.class public final enum Lcom/linecorp/linesdk/message/flex/action/Action$Type;
.super Ljava/lang/Enum;
.source "Action.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Stringable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/action/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/action/Action$Type;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum CAMERA:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum CAMERAROLL:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum DATETIMEPICKER:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum LOCATION:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum MESSAGE:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum POSTBACK:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

.field public static final enum URI:Lcom/linecorp/linesdk/message/flex/action/Action$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "POSTBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->POSTBACK:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    .line 30
    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->MESSAGE:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    .line 31
    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "URI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->URI:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    .line 32
    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "DATETIMEPICKER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->DATETIMEPICKER:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    .line 33
    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "CAMERA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->CAMERA:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    .line 34
    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "CAMERAROLL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->CAMERAROLL:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    .line 35
    new-instance v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const-string v1, "LOCATION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->LOCATION:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    const/4 v0, 0x7

    .line 28
    new-array v0, v0, [Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    sget-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->POSTBACK:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->MESSAGE:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->URI:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->DATETIMEPICKER:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->CAMERA:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->CAMERAROLL:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->LOCATION:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/action/Action$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/action/Action$Type;
    .locals 1

    .line 28
    const-class v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/action/Action$Type;
    .locals 1

    .line 28
    sget-object v0, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->$VALUES:[Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/action/Action$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    return-object v0
.end method
