.class public final Lcom/netease/ntunisdk/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/Request;
.implements Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;
.implements Lcom/netease/ntunisdk/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/request/Request;",
        "Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;",
        "Lcom/netease/ntunisdk/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final GLIDE_TAG:Ljava/lang/String; = "Glide"

.field private static final IS_VERBOSE_LOGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field private final animationFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private volatile engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private final glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

.field private height:I

.field private isCallingCallbacks:Z

.field private loadStatus:Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

.field private final model:Ljava/lang/Object;

.field private final overrideHeight:I

.field private final overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private final priority:Lcom/netease/ntunisdk/glide/Priority;

.field private final requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

.field private final requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final requestLock:Ljava/lang/Object;

.field private final requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;"
        }
    .end annotation
.end field

.field private requestOrigin:Ljava/lang/RuntimeException;

.field private resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation
.end field

.field private startTime:J

.field private final stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

.field private status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

.field private final tag:Ljava/lang/String;

.field private final target:Lcom/netease/ntunisdk/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final targetListener:Lcom/netease/ntunisdk/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;IILcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Ljava/util/List;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/load/engine/Engine;Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestCoordinator;",
            "Lcom/netease/ntunisdk/glide/load/engine/Engine;",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->tag:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->newInstance()Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    move-object v1, p3

    .line 191
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    move-object v1, p1

    .line 192
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->context:Landroid/content/Context;

    move-object v1, p2

    .line 193
    iput-object v1, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    move-object v2, p4

    .line 194
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    move-object v2, p5

    .line 195
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    move-object v2, p6

    .line 196
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move v2, p7

    .line 197
    iput v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideWidth:I

    move v2, p8

    .line 198
    iput v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideHeight:I

    move-object v2, p9

    .line 199
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->priority:Lcom/netease/ntunisdk/glide/Priority;

    move-object v2, p10

    .line 200
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    move-object v2, p11

    .line 201
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->targetListener:Lcom/netease/ntunisdk/glide/request/RequestListener;

    move-object v2, p12

    .line 202
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    move-object/from16 v2, p13

    .line 203
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    move-object/from16 v2, p14

    .line 204
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    move-object/from16 v2, p15

    .line 205
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->animationFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    move-object/from16 v2, p16

    .line 206
    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 207
    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->PENDING:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    iput-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    .line 209
    iget-object v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/GlideContext;->getExperiments()Lcom/netease/ntunisdk/glide/GlideExperiments;

    move-result-object v1

    const-class v2, Lcom/netease/ntunisdk/glide/GlideBuilder$LogRequestOrigins;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/glide/GlideExperiments;->isEnabled(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method private assertNotCallingCallbacks()V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isCallingCallbacks:Z

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canNotifyCleared()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canNotifyStatusChanged()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canSetResource()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->canSetImage(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private cancel()V
    .locals 1

    .line 278
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 279
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 280
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/target/Target;->removeCallback(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V

    .line 281
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadStatus:Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;->cancel()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadStatus:Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

    :cond_0
    return-void
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 375
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    if-lez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private isFirstReadyResource()Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->getRoot()Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    invoke-static {v1, p1, v0}, Lcom/netease/ntunisdk/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private logV(Ljava/lang/String;)V
    .locals 1

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static maybeApplySizeMultiplier(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    mul-float p1, p1, p0

    .line 487
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method private notifyLoadFailed()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->onRequestFailed(Lcom/netease/ntunisdk/glide/request/Request;)V

    :cond_0
    return-void
.end method

.method private notifyLoadSuccess()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestCoordinator:Lcom/netease/ntunisdk/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/netease/ntunisdk/glide/request/Request;)V

    :cond_0
    return-void
.end method

.method public static obtain(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;IILcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Ljava/util/List;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/load/engine/Engine;Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/SingleRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TR;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestCoordinator;",
            "Lcom/netease/ntunisdk/glide/load/engine/Engine;",
            "Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/netease/ntunisdk/glide/request/SingleRequest<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 153
    new-instance v17, Lcom/netease/ntunisdk/glide/request/SingleRequest;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/netease/ntunisdk/glide/request/SingleRequest;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;IILcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Ljava/util/List;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/load/engine/Engine;Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;I)V
    .locals 8

    .line 663
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 664
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->setOrigin(Ljava/lang/Exception;)V

    .line 666
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/GlideContext;->getLogLevel()I

    move-result v1

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 671
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 675
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadStatus:Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

    .line 676
    sget-object p2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->FAILED:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    const/4 p2, 0x1

    .line 678
    iput-boolean p2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isCallingCallbacks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 682
    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 683
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/glide/request/RequestListener;

    .line 684
    iget-object v5, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    .line 685
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lcom/netease/ntunisdk/glide/request/RequestListener;->onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 688
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->targetListener:Lcom/netease/ntunisdk/glide/request/RequestListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->targetListener:Lcom/netease/ntunisdk/glide/request/RequestListener;

    iget-object v4, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    .line 690
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/netease/ntunisdk/glide/request/RequestListener;->onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    or-int p1, v3, p2

    if-nez p1, :cond_4

    .line 693
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->setErrorPlaceholder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    :cond_4
    :try_start_2
    iput-boolean v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 699
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->notifyLoadFailed()V

    .line 700
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 696
    iput-boolean v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isCallingCallbacks:Z

    throw p1

    :catchall_1
    move-exception p1

    .line 700
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private onResourceReady(Lcom/netease/ntunisdk/glide/load/engine/Resource;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TR;>;TR;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result p4

    .line 605
    sget-object v0, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->COMPLETE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    .line 606
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    .line 608
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/GlideContext;->getLogLevel()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->startTime:J

    .line 622
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Glide"

    .line 609
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 626
    iput-boolean p1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isCallingCallbacks:Z

    const/4 v6, 0x0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestListener;

    .line 631
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    .line 632
    invoke-interface/range {v0 .. v5}, Lcom/netease/ntunisdk/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/load/DataSource;Z)Z

    move-result v0

    or-int/2addr v8, v0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->targetListener:Lcom/netease/ntunisdk/glide/request/RequestListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->targetListener:Lcom/netease/ntunisdk/glide/request/RequestListener;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    .line 637
    invoke-interface/range {v0 .. v5}, Lcom/netease/ntunisdk/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/load/DataSource;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v8

    if-nez p1, :cond_4

    .line 640
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->animationFactory:Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    invoke-interface {p1, p3, p4}, Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;->build(Lcom/netease/ntunisdk/glide/load/DataSource;Z)Lcom/netease/ntunisdk/glide/request/transition/Transition;

    move-result-object p1

    .line 641
    iget-object p3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    invoke-interface {p3, p2, p1}, Lcom/netease/ntunisdk/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/transition/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :cond_4
    iput-boolean v6, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isCallingCallbacks:Z

    .line 647
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->notifyLoadSuccess()V

    return-void

    :catchall_0
    move-exception p1

    .line 644
    iput-boolean v6, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isCallingCallbacks:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private setErrorPlaceholder()V
    .locals 2

    .line 413
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 423
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 427
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/glide/request/target/Target;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 218
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 219
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->startTime:J

    .line 220
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 221
    iget v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/glide/util/Util;->isValidDimensions(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideWidth:I

    iput v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->width:I

    .line 223
    iget v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideHeight:I

    iput v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->height:I

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 228
    :goto_0
    new-instance v2, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;I)V

    .line 229
    monitor-exit v0

    return-void

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->RUNNING:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_8

    .line 242
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->COMPLETE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_3

    .line 243
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    sget-object v2, Lcom/netease/ntunisdk/glide/load/DataSource;->MEMORY_CACHE:Lcom/netease/ntunisdk/glide/load/DataSource;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->onResourceReady(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V

    .line 245
    monitor-exit v0

    return-void

    .line 251
    :cond_3
    sget-object v1, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    iput-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    .line 252
    iget v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/glide/util/Util;->isValidDimensions(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    iget v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->onSizeReady(II)V

    goto :goto_1

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    invoke-interface {v1, p0}, Lcom/netease/ntunisdk/glide/request/target/Target;->getSize(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V

    .line 258
    :goto_1
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->RUNNING:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_6

    .line 259
    :cond_5
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 260
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :cond_6
    sget-boolean v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v1, :cond_7

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 265
    :cond_7
    monitor-exit v0

    return-void

    .line 233
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    .line 312
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 313
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->CLEARED:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    .line 314
    monitor-exit v0

    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->cancel()V

    .line 318
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    .line 320
    iput-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 322
    :goto_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->canNotifyCleared()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->target:Lcom/netease/ntunisdk/glide/request/target/Target;

    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->CLEARED:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    iput-object v2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    .line 327
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/load/engine/Engine;->release(Lcom/netease/ntunisdk/glide/load/engine/Resource;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 327
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 659
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    return-object v0
.end method

.method public isAnyResourceSet()Z
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->COMPLETE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 368
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCleared()Z
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->CLEARED:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isComplete()Z
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->COMPLETE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEquivalentTo(Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 705
    instance-of v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 716
    :cond_0
    iget-object v2, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v2

    .line 717
    :try_start_0
    iget v4, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideWidth:I

    .line 718
    iget v5, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideHeight:I

    .line 719
    iget-object v6, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 720
    iget-object v7, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 721
    iget-object v8, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 722
    iget-object v9, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->priority:Lcom/netease/ntunisdk/glide/Priority;

    .line 723
    iget-object v10, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 724
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 726
    check-cast v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;

    .line 734
    iget-object v11, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v11

    .line 735
    :try_start_1
    iget v2, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideWidth:I

    .line 736
    iget v12, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->overrideHeight:I

    .line 737
    iget-object v13, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    .line 738
    iget-object v14, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    .line 739
    iget-object v15, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 740
    iget-object v3, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->priority:Lcom/netease/ntunisdk/glide/Priority;

    .line 741
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 742
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_3

    if-ne v5, v12, :cond_3

    .line 749
    invoke-static {v6, v13}, Lcom/netease/ntunisdk/glide/util/Util;->bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 750
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 751
    invoke-virtual {v8, v15}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v9, v3, :cond_3

    if-ne v10, v0, :cond_3

    const/4 v3, 0x1

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    return v16

    :catchall_0
    move-exception v0

    .line 742
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 724
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public isRunning()Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->RUNNING:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 347
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    .line 653
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public onResourceReady(Lcom/netease/ntunisdk/glide/load/engine/Resource;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    const/4 v0, 0x0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 533
    :try_start_1
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadStatus:Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

    if-nez p1, :cond_0

    .line 535
    new-instance p1, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " inside, but instead got null."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;)V

    .line 542
    monitor-exit v1

    return-void

    .line 545
    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 546
    iget-object v3, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->canSetResource()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    .line 574
    :try_start_2
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    .line 576
    sget-object p2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->COMPLETE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    .line 577
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_2

    .line 585
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/glide/load/engine/Engine;->release(Lcom/netease/ntunisdk/glide/load/engine/Resource;)V

    :cond_2
    return-void

    .line 580
    :cond_3
    :try_start_3
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->onResourceReady(Lcom/netease/ntunisdk/glide/load/engine/Resource;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/DataSource;Z)V

    .line 582
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 548
    :cond_4
    :goto_0
    :try_start_4
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->resource:Lcom/netease/ntunisdk/glide/load/engine/Resource;

    .line 549
    new-instance p2, Lcom/netease/ntunisdk/glide/load/engine/GlideException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to receive an object of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but instead got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    .line 555
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "} inside Resource{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    const-string v0, ""

    goto :goto_2

    :cond_6
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 565
    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/netease/ntunisdk/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->onLoadFailed(Lcom/netease/ntunisdk/glide/load/engine/GlideException;)V

    .line 569
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_7

    .line 585
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/glide/load/engine/Engine;->release(Lcom/netease/ntunisdk/glide/load/engine/Resource;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 582
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    move-object v0, p1

    goto :goto_4

    :catchall_2
    move-exception p2

    goto :goto_3

    :catchall_3
    move-exception p2

    :goto_4
    if-eqz v0, :cond_8

    .line 585
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/glide/load/engine/Engine;->release(Lcom/netease/ntunisdk/glide/load/engine/Resource;)V

    :cond_8
    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public onSizeReady(II)V
    .locals 22

    move-object/from16 v15, p0

    .line 435
    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->stateVerifier:Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 436
    iget-object v14, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v14

    .line 437
    :try_start_0
    sget-boolean v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 440
    :cond_0
    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_1

    .line 441
    monitor-exit v14

    return-void

    .line 443
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->RUNNING:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    iput-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    .line 445
    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getSizeMultiplier()F

    move-result v0

    move/from16 v1, p1

    .line 446
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v1

    iput v1, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->width:I

    move/from16 v1, p2

    .line 447
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v0

    iput v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->height:I

    .line 449
    sget-boolean v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v0, :cond_2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 452
    :cond_2
    iget-object v1, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->engine:Lcom/netease/ntunisdk/glide/load/engine/Engine;

    iget-object v2, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    iget-object v3, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 456
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getSignature()Lcom/netease/ntunisdk/glide/load/Key;

    move-result-object v4

    iget v5, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->width:I

    iget v6, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->height:I

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 459
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getResourceClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    iget-object v9, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->priority:Lcom/netease/ntunisdk/glide/Priority;

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 462
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getDiskCacheStrategy()Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    move-result-object v10

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 463
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getTransformations()Ljava/util/Map;

    move-result-object v11

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 464
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->isTransformationRequired()Z

    move-result v12

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 465
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform()Z

    move-result v13

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 466
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOptions()Lcom/netease/ntunisdk/glide/load/Options;

    move-result-object v0

    move-object/from16 p1, v0

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 467
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    move-result v0

    move/from16 p2, v0

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 468
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getUseUnlimitedSourceGeneratorsPool()Z

    move-result v16

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 469
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getUseAnimationPool()Z

    move-result v17

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestOptions:Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    .line 470
    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOnlyRetrieveFromCache()Z

    move-result v18

    iget-object v0, v15, Lcom/netease/ntunisdk/glide/request/SingleRequest;->callbackExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v21, v14

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    .line 453
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lcom/netease/ntunisdk/glide/load/engine/Engine;->load(Lcom/netease/ntunisdk/glide/GlideContext;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/netease/ntunisdk/glide/load/Options;ZZZZLcom/netease/ntunisdk/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadStatus:Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

    .line 477
    iget-object v0, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->status:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;->RUNNING:Lcom/netease/ntunisdk/glide/request/SingleRequest$Status;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    .line 478
    iput-object v0, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->loadStatus:Lcom/netease/ntunisdk/glide/load/engine/Engine$LoadStatus;

    .line 480
    :cond_3
    sget-boolean v0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v0, :cond_4

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/netease/ntunisdk/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    .line 483
    :cond_4
    monitor-exit v21

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v21, v14

    move-object v1, v15

    :goto_0
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->clear()V

    .line 340
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
