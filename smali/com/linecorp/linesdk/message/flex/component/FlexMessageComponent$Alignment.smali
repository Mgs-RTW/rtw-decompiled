.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
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
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

.field public static final enum CENTER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

.field public static final enum END:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

.field public static final enum START:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->START:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    .line 75
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    const-string v1, "END"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->END:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    .line 76
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    const-string v1, "CENTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->CENTER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    const/4 v0, 0x3

    .line 73
    new-array v0, v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->START:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->END:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->CENTER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
    .locals 1

    .line 73
    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
    .locals 1

    .line 73
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    return-object v0
.end method
