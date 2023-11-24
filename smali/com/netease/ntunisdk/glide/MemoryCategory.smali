.class public final enum Lcom/netease/ntunisdk/glide/MemoryCategory;
.super Ljava/lang/Enum;
.source "MemoryCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/glide/MemoryCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/glide/MemoryCategory;

.field public static final enum HIGH:Lcom/netease/ntunisdk/glide/MemoryCategory;

.field public static final enum LOW:Lcom/netease/ntunisdk/glide/MemoryCategory;

.field public static final enum NORMAL:Lcom/netease/ntunisdk/glide/MemoryCategory;


# instance fields
.field private final multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/netease/ntunisdk/glide/MemoryCategory;

    const/4 v1, 0x0

    const-string v2, "LOW"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v1, v3}, Lcom/netease/ntunisdk/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/netease/ntunisdk/glide/MemoryCategory;->LOW:Lcom/netease/ntunisdk/glide/MemoryCategory;

    .line 10
    new-instance v0, Lcom/netease/ntunisdk/glide/MemoryCategory;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v2, v4}, Lcom/netease/ntunisdk/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/netease/ntunisdk/glide/MemoryCategory;->NORMAL:Lcom/netease/ntunisdk/glide/MemoryCategory;

    .line 15
    new-instance v0, Lcom/netease/ntunisdk/glide/MemoryCategory;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v0, v4, v3, v5}, Lcom/netease/ntunisdk/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/netease/ntunisdk/glide/MemoryCategory;->HIGH:Lcom/netease/ntunisdk/glide/MemoryCategory;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/ntunisdk/glide/MemoryCategory;

    .line 4
    sget-object v4, Lcom/netease/ntunisdk/glide/MemoryCategory;->LOW:Lcom/netease/ntunisdk/glide/MemoryCategory;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/glide/MemoryCategory;->NORMAL:Lcom/netease/ntunisdk/glide/MemoryCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/glide/MemoryCategory;->HIGH:Lcom/netease/ntunisdk/glide/MemoryCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/ntunisdk/glide/MemoryCategory;->$VALUES:[Lcom/netease/ntunisdk/glide/MemoryCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/netease/ntunisdk/glide/MemoryCategory;->multiplier:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/MemoryCategory;
    .locals 1

    .line 4
    const-class v0, Lcom/netease/ntunisdk/glide/MemoryCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/MemoryCategory;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/glide/MemoryCategory;
    .locals 1

    .line 4
    sget-object v0, Lcom/netease/ntunisdk/glide/MemoryCategory;->$VALUES:[Lcom/netease/ntunisdk/glide/MemoryCategory;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/glide/MemoryCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/glide/MemoryCategory;

    return-object v0
.end method


# virtual methods
.method public getMultiplier()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/netease/ntunisdk/glide/MemoryCategory;->multiplier:F

    return v0
.end method
