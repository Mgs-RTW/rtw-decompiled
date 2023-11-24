.class public abstract Lcom/netease/ntunisdk/glide/request/transition/BitmapContainerTransitionFactory;
.super Ljava/lang/Object;
.source "BitmapContainerTransitionFactory.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;
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
.field private final realFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/transition/BitmapContainerTransitionFactory;->realFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

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

    .line 28
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/transition/BitmapContainerTransitionFactory;->realFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;->build(Lcom/netease/ntunisdk/glide/load/DataSource;Z)Lcom/netease/ntunisdk/glide/request/transition/Transition;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/netease/ntunisdk/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;

    invoke-direct {p2, p0, p1}, Lcom/netease/ntunisdk/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;-><init>(Lcom/netease/ntunisdk/glide/request/transition/BitmapContainerTransitionFactory;Lcom/netease/ntunisdk/glide/request/transition/Transition;)V

    return-object p2
.end method

.method protected abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
