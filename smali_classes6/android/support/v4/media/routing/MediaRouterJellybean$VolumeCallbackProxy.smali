.class Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;",
        ">",
        "Landroid/media/MediaRouter$VolumeCallback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 427
    iput-object p1, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;

    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;->onVolumeSetRequest(Ljava/lang/Object;I)V

    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .line 439
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/routing/MediaRouterJellybean$VolumeCallback;->onVolumeUpdateRequest(Ljava/lang/Object;I)V

    return-void
.end method
