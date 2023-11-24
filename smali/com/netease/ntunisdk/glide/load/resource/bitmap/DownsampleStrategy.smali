.class public abstract Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;
.super Ljava/lang/Object;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$None;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$AtMost;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterOutside;,
        Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final AT_MOST:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final CENTER_INSIDE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final CENTER_OUTSIDE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final DEFAULT:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final FIT_CENTER:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

.field static final IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

.field public static final NONE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

.field public static final OPTION:Lcom/netease/ntunisdk/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Option<",
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$AtLeast;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->AT_LEAST:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 49
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$AtMost;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$AtMost;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->AT_MOST:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 66
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 69
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterInside;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 83
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterOutside;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$CenterOutside;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 86
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$None;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$None;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 89
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->DEFAULT:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 98
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->DEFAULT:Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 99
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/netease/ntunisdk/glide/load/Option;

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->IS_BITMAP_FACTORY_SCALING_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSampleSizeRounding(IIII)Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
.end method

.method public abstract getScaleFactor(IIII)F
.end method
