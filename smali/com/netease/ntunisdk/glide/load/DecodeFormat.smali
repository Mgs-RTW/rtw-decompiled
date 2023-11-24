.class public final enum Lcom/netease/ntunisdk/glide/load/DecodeFormat;
.super Ljava/lang/Enum;
.source "DecodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/glide/load/DecodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/glide/load/DecodeFormat;

.field public static final DEFAULT:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

.field public static final enum PREFER_ARGB_8888:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

.field public static final enum PREFER_RGB_565:Lcom/netease/ntunisdk/glide/load/DecodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    const/4 v1, 0x0

    const-string v2, "PREFER_ARGB_8888"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/glide/load/DecodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    .line 43
    new-instance v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    const/4 v2, 0x1

    const-string v3, "PREFER_RGB_565"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/glide/load/DecodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    .line 15
    sget-object v3, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->$VALUES:[Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    .line 46
    sput-object v3, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->DEFAULT:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/load/DecodeFormat;
    .locals 1

    .line 15
    const-class v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/glide/load/DecodeFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->$VALUES:[Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/glide/load/DecodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    return-object v0
.end method
