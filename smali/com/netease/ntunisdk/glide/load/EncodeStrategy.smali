.class public final enum Lcom/netease/ntunisdk/glide/load/EncodeStrategy;
.super Ljava/lang/Enum;
.source "EncodeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/glide/load/EncodeStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

.field public static final enum NONE:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

.field public static final enum SOURCE:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

.field public static final enum TRANSFORMED:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    const/4 v1, 0x0

    const-string v2, "SOURCE"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->SOURCE:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    .line 14
    new-instance v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    const/4 v2, 0x1

    const-string v3, "TRANSFORMED"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    .line 17
    new-instance v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    .line 6
    sget-object v4, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->SOURCE:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->$VALUES:[Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/load/EncodeStrategy;
    .locals 1

    .line 6
    const-class v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/glide/load/EncodeStrategy;
    .locals 1

    .line 6
    sget-object v0, Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->$VALUES:[Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/glide/load/EncodeStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/glide/load/EncodeStrategy;

    return-object v0
.end method
