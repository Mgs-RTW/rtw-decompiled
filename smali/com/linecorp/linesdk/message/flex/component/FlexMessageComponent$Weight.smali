.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;
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
    name = "Weight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

.field public static final enum BOLD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

.field public static final enum REGULAR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 184
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    const-string v1, "BOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;->BOLD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    .line 185
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    const-string v1, "REGULAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;->REGULAR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    const/4 v0, 0x2

    .line 183
    new-array v0, v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;->BOLD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;->REGULAR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    aput-object v1, v0, v3

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;
    .locals 1

    .line 183
    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;
    .locals 1

    .line 183
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    return-object v0
.end method
