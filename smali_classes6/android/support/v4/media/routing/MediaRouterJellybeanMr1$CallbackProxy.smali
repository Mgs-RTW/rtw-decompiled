.class Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;
.super Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;",
        ">",
        "Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Landroid/support/v4/media/routing/MediaRouterJellybean$CallbackProxy;-><init>(Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;)V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 173
    iget-object p1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$CallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$Callback;

    check-cast p1, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;

    invoke-interface {p1, p2}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;->onRoutePresentationDisplayChanged(Ljava/lang/Object;)V

    return-void
.end method
