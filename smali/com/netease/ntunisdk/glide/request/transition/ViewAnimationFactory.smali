.class public Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;,
        Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private transition:Lcom/netease/ntunisdk/glide/request/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final viewTransitionAnimationFactory:Lcom/netease/ntunisdk/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/netease/ntunisdk/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/netease/ntunisdk/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/netease/ntunisdk/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    return-void
.end method


# virtual methods
.method public build(Lcom/netease/ntunisdk/glide/load/DataSource;Z)Lcom/netease/ntunisdk/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)",
            "Lcom/netease/ntunisdk/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/netease/ntunisdk/glide/load/DataSource;->MEMORY_CACHE:Lcom/netease/ntunisdk/glide/load/DataSource;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;->transition:Lcom/netease/ntunisdk/glide/request/transition/Transition;

    if-nez p1, :cond_1

    .line 47
    new-instance p1, Lcom/netease/ntunisdk/glide/request/transition/ViewTransition;

    iget-object p2, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/netease/ntunisdk/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/glide/request/transition/ViewTransition;-><init>(Lcom/netease/ntunisdk/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;->transition:Lcom/netease/ntunisdk/glide/request/transition/Transition;

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewAnimationFactory;->transition:Lcom/netease/ntunisdk/glide/request/transition/Transition;

    return-object p1

    .line 43
    :cond_2
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/glide/request/transition/NoTransition;->get()Lcom/netease/ntunisdk/glide/request/transition/Transition;

    move-result-object p1

    return-object p1
.end method
