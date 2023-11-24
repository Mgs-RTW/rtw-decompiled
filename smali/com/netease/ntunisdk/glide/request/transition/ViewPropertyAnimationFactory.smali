.class public Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "ViewPropertyAnimationFactory.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;


# annotations
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
.field private animation:Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final animator:Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;->animator:Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;

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

    .line 26
    sget-object v0, Lcom/netease/ntunisdk/glide/load/DataSource;->MEMORY_CACHE:Lcom/netease/ntunisdk/glide/load/DataSource;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition;

    if-nez p1, :cond_1

    .line 30
    new-instance p1, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition;

    iget-object p2, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;->animator:Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition;-><init>(Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition$Animator;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition;

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/netease/ntunisdk/glide/request/transition/ViewPropertyTransition;

    return-object p1

    .line 27
    :cond_2
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/glide/request/transition/NoTransition;->get()Lcom/netease/ntunisdk/glide/request/transition/Transition;

    move-result-object p1

    return-object p1
.end method
