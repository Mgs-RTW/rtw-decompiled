.class public final enum Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;
.super Ljava/lang/Enum;
.source "SingleScreenFoldingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

.field public static final enum BASE_LEFT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

.field public static final enum BASE_RIGHT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 175
    new-instance v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    const/4 v1, 0x0

    const-string v2, "BASE_LEFT"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->BASE_LEFT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    .line 176
    new-instance v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    const/4 v2, 0x1

    const-string v3, "BASE_RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->BASE_RIGHT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    .line 174
    sget-object v3, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->BASE_LEFT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->BASE_RIGHT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->$VALUES:[Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;
    .locals 1

    .line 174
    const-class v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;
    .locals 1

    .line 174
    sget-object v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->$VALUES:[Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    return-object v0
.end method
