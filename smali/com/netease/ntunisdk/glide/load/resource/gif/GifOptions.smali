.class public final Lcom/netease/ntunisdk/glide/load/resource/gif/GifOptions;
.super Ljava/lang/Object;
.source "GifOptions.java"


# static fields
.field public static final DECODE_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Lcom/netease/ntunisdk/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_ANIMATION:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Lcom/netease/ntunisdk/glide/load/DecodeFormat;->DEFAULT:Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 17
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifOptions;->DECODE_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifOptions;->DISABLE_ANIMATION:Lcom/netease/ntunisdk/glide/load/Option;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
