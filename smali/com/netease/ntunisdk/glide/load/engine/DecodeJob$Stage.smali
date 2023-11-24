.class final enum Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;
.super Ljava/lang/Enum;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

.field public static final enum DATA_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

.field public static final enum ENCODE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

.field public static final enum FINISHED:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

.field public static final enum INITIALIZE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

.field public static final enum RESOURCE_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

.field public static final enum SOURCE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 747
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    const/4 v1, 0x0

    const-string v2, "INITIALIZE"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 749
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    const/4 v2, 0x1

    const-string v3, "RESOURCE_CACHE"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 751
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    const/4 v3, 0x2

    const-string v4, "DATA_CACHE"

    invoke-direct {v0, v4, v3}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 753
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    const/4 v4, 0x3

    const-string v5, "SOURCE"

    invoke-direct {v0, v5, v4}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 755
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    const/4 v5, 0x4

    const-string v6, "ENCODE"

    invoke-direct {v0, v6, v5}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 757
    new-instance v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    const/4 v6, 0x5

    const-string v7, "FINISHED"

    invoke-direct {v0, v7, v6}, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    .line 745
    sget-object v7, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    aput-object v7, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->$VALUES:[Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 745
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;
    .locals 1

    .line 745
    const-class v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;
    .locals 1

    .line 745
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->$VALUES:[Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/glide/load/engine/DecodeJob$Stage;

    return-object v0
.end method
