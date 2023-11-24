.class public abstract Lcom/netease/ntunisdk/glide/TransitionOptions;
.super Ljava/lang/Object;
.source "TransitionOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/netease/ntunisdk/glide/TransitionOptions<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private transitionFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/netease/ntunisdk/glide/request/transition/NoTransition;->getFactory()Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/TransitionOptions;->transitionFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    return-void
.end method

.method private self()Lcom/netease/ntunisdk/glide/TransitionOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final clone()Lcom/netease/ntunisdk/glide/TransitionOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/TransitionOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/TransitionOptions;->clone()Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransition()Lcom/netease/ntunisdk/glide/TransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/netease/ntunisdk/glide/request/transition/NoTransition;->getFactory()Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/TransitionOptions;->transition(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method final getTransitionFactory()Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/TransitionOptions;->transitionFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    return-object v0
.end method

.method public final transition(I)Lcom/netease/ntunisdk/glide/TransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/TransitionOptions;->transition(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transition(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/TransitionOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/TransitionOptions;->transitionFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    .line 73
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/TransitionOptions;->self()Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transition(Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/netease/ntunisdk/glide/TransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;-><init>(Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/TransitionOptions;->transition(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method
