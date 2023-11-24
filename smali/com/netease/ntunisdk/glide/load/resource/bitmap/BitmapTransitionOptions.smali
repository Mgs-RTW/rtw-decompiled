.class public final Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
.super Lcom/netease/ntunisdk/glide/TransitionOptions;
.source "BitmapTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/glide/TransitionOptions<",
        "Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->transition(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    return-object p0
.end method

.method public static withCrossFade()Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1

    .line 25
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade()Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(I)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1

    .line 35
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(I)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withCrossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1

    .line 57
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withCrossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1

    .line 46
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static withWrapped(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public crossFade()Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1

    .line 88
    new-instance v0, Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(I)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1

    .line 101
    new-instance v0, Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->crossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public crossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 0

    .line 127
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public crossFade(Lcom/netease/ntunisdk/glide/request/transition/DrawableCrossFadeFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->transitionUsing(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public transitionUsing(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/netease/ntunisdk/glide/request/transition/BitmapTransitionFactory;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/request/transition/BitmapTransitionFactory;-><init>(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;->transition(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/BitmapTransitionOptions;

    return-object p1
.end method
