.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;
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
    name = "AspectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

.field public static final enum COVER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

.field public static final enum FIT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 179
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    const-string v1, "COVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;->COVER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    .line 180
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    const-string v1, "FIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;->FIT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    const/4 v0, 0x2

    .line 178
    new-array v0, v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;->COVER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;->FIT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;
    .locals 1

    .line 178
    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;
    .locals 1

    .line 178
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    return-object v0
.end method
