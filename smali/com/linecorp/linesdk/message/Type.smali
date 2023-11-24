.class public final enum Lcom/linecorp/linesdk/message/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/Type;

.field public static final enum AUDIO:Lcom/linecorp/linesdk/message/Type;

.field public static final enum FLEX:Lcom/linecorp/linesdk/message/Type;

.field public static final enum IMAGE:Lcom/linecorp/linesdk/message/Type;

.field public static final enum LOCATION:Lcom/linecorp/linesdk/message/Type;

.field public static final enum TEMPLATE:Lcom/linecorp/linesdk/message/Type;

.field public static final enum TEXT:Lcom/linecorp/linesdk/message/Type;

.field public static final enum VIDEO:Lcom/linecorp/linesdk/message/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->TEXT:Lcom/linecorp/linesdk/message/Type;

    .line 16
    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "IMAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->IMAGE:Lcom/linecorp/linesdk/message/Type;

    .line 21
    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->VIDEO:Lcom/linecorp/linesdk/message/Type;

    .line 26
    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "AUDIO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->AUDIO:Lcom/linecorp/linesdk/message/Type;

    .line 31
    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "LOCATION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->LOCATION:Lcom/linecorp/linesdk/message/Type;

    .line 36
    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "TEMPLATE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->TEMPLATE:Lcom/linecorp/linesdk/message/Type;

    .line 41
    new-instance v0, Lcom/linecorp/linesdk/message/Type;

    const-string v1, "FLEX"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/linecorp/linesdk/message/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->FLEX:Lcom/linecorp/linesdk/message/Type;

    const/4 v0, 0x7

    .line 6
    new-array v0, v0, [Lcom/linecorp/linesdk/message/Type;

    sget-object v1, Lcom/linecorp/linesdk/message/Type;->TEXT:Lcom/linecorp/linesdk/message/Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linecorp/linesdk/message/Type;->IMAGE:Lcom/linecorp/linesdk/message/Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linecorp/linesdk/message/Type;->VIDEO:Lcom/linecorp/linesdk/message/Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linecorp/linesdk/message/Type;->AUDIO:Lcom/linecorp/linesdk/message/Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linecorp/linesdk/message/Type;->LOCATION:Lcom/linecorp/linesdk/message/Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linecorp/linesdk/message/Type;->TEMPLATE:Lcom/linecorp/linesdk/message/Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/linecorp/linesdk/message/Type;->FLEX:Lcom/linecorp/linesdk/message/Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/linecorp/linesdk/message/Type;->$VALUES:[Lcom/linecorp/linesdk/message/Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/Type;
    .locals 1

    .line 6
    const-class v0, Lcom/linecorp/linesdk/message/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/Type;
    .locals 1

    .line 6
    sget-object v0, Lcom/linecorp/linesdk/message/Type;->$VALUES:[Lcom/linecorp/linesdk/message/Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method
