.class public final Lcom/netease/ntunisdk/glide/GenericTransitionOptions;
.super Lcom/netease/ntunisdk/glide/TransitionOptions;
.source "GenericTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/ntunisdk/glide/TransitionOptions<",
        "Lcom/netease/ntunisdk/glide/GenericTransitionOptions<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(I)Lcom/netease/ntunisdk/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/netease/ntunisdk/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;->transition(I)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static with(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;)",
            "Lcom/netease/ntunisdk/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;->transition(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static with(Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/netease/ntunisdk/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;",
            ")",
            "Lcom/netease/ntunisdk/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;->transition(Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static withNoTransition()Lcom/netease/ntunisdk/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/netease/ntunisdk/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;->dontTransition()Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/GenericTransitionOptions;

    return-object v0
.end method
