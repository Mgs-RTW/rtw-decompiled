.class public final enum Lcom/netease/download/Const$Stage;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/download/Const$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/download/Const$Stage;

.field public static final enum NORMAL:Lcom/netease/download/Const$Stage;

.field public static final enum OTHER_IP_USED:Lcom/netease/download/Const$Stage;

.field public static final enum OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

.field public static final enum RE_DOWNLOAD:Lcom/netease/download/Const$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 215
    new-instance v0, Lcom/netease/download/Const$Stage;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    new-instance v0, Lcom/netease/download/Const$Stage;

    const-string v1, "OTHER_SEG_USED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/download/Const$Stage;->OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

    new-instance v0, Lcom/netease/download/Const$Stage;

    const-string v1, "OTHER_IP_USED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/download/Const$Stage;->OTHER_IP_USED:Lcom/netease/download/Const$Stage;

    new-instance v0, Lcom/netease/download/Const$Stage;

    const-string v1, "RE_DOWNLOAD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/download/Const$Stage;->RE_DOWNLOAD:Lcom/netease/download/Const$Stage;

    const/4 v0, 0x4

    .line 214
    new-array v0, v0, [Lcom/netease/download/Const$Stage;

    sget-object v1, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/download/Const$Stage;->OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/download/Const$Stage;->OTHER_IP_USED:Lcom/netease/download/Const$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/download/Const$Stage;->RE_DOWNLOAD:Lcom/netease/download/Const$Stage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netease/download/Const$Stage;->$VALUES:[Lcom/netease/download/Const$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/download/Const$Stage;
    .locals 1

    .line 214
    const-class v0, Lcom/netease/download/Const$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/download/Const$Stage;

    return-object p0
.end method

.method public static values()[Lcom/netease/download/Const$Stage;
    .locals 1

    .line 214
    sget-object v0, Lcom/netease/download/Const$Stage;->$VALUES:[Lcom/netease/download/Const$Stage;

    invoke-virtual {v0}, [Lcom/netease/download/Const$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/download/Const$Stage;

    return-object v0
.end method
