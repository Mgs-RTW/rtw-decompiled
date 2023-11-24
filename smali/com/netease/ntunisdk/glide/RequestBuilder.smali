.class public Lcom/netease/ntunisdk/glide/RequestBuilder;
.super Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/netease/ntunisdk/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
        "Lcom/netease/ntunisdk/glide/RequestBuilder<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Lcom/netease/ntunisdk/glide/ModelTypes<",
        "Lcom/netease/ntunisdk/glide/RequestBuilder<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_ONLY_OPTIONS:Lcom/netease/ntunisdk/glide/request/RequestOptions;


# instance fields
.field private final context:Landroid/content/Context;

.field private errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final glide:Lcom/netease/ntunisdk/glide/Glide;

.field private final glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;

.field private requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    .line 67
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->diskCacheStrategy(Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    sget-object v1, Lcom/netease/ntunisdk/glide/Priority;->LOW:Lcom/netease/ntunisdk/glide/Priority;

    .line 68
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->priority(Lcom/netease/ntunisdk/glide/Priority;)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    sput-object v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    return-void
.end method

.method protected constructor <init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/Glide;",
            "Lcom/netease/ntunisdk/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 100
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->glide:Lcom/netease/ntunisdk/glide/Glide;

    .line 101
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    .line 102
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 103
    iput-object p4, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {p2, p3}, Lcom/netease/ntunisdk/glide/RequestManager;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;

    .line 105
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getGlideContext()Lcom/netease/ntunisdk/glide/GlideContext;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    .line 107
    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/RequestManager;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->initRequestListeners(Ljava/util/List;)V

    .line 108
    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/RequestManager;->getDefaultRequestOptions()Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p2, Lcom/netease/ntunisdk/glide/RequestBuilder;->glide:Lcom/netease/ntunisdk/glide/Glide;

    iget-object v1, p2, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    iget-object v2, p2, Lcom/netease/ntunisdk/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/netease/ntunisdk/glide/RequestBuilder;-><init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 115
    iget-object p1, p2, Lcom/netease/ntunisdk/glide/RequestBuilder;->model:Ljava/lang/Object;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 116
    iget-boolean p1, p2, Lcom/netease/ntunisdk/glide/RequestBuilder;->isModelSet:Z

    iput-boolean p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->isModelSet:Z

    .line 119
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-void
.end method

.method private buildRequest(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/netease/ntunisdk/glide/request/Request;"
        }
    .end annotation

    .line 958
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;

    .line 964
    invoke-virtual {p3}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getPriority()Lcom/netease/ntunisdk/glide/Priority;

    move-result-object v6

    .line 965
    invoke-virtual {p3}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v7

    .line 966
    invoke-virtual {p3}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    .line 958
    invoke-direct/range {v0 .. v10}, Lcom/netease/ntunisdk/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private buildRequestRecursive(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestCoordinator;",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "II",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/netease/ntunisdk/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 985
    iget-object v0, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    if-eqz v0, :cond_0

    .line 986
    new-instance v0, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;)V

    move-object v4, v0

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v15, v0

    move-object v4, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 991
    invoke-direct/range {v0 .. v10}, Lcom/netease/ntunisdk/glide/RequestBuilder;->buildThumbnailRequestRecursive(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 1007
    :cond_1
    iget-object v1, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getOverrideWidth()I

    move-result v1

    .line 1008
    iget-object v2, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getOverrideHeight()I

    move-result v2

    .line 1009
    invoke-static/range {p7 .. p8}, Lcom/netease/ntunisdk/glide/util/Util;->isValidDimensions(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isValidOverride()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1010
    invoke-virtual/range {p9 .. p9}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v1

    .line 1011
    invoke-virtual/range {p9 .. p9}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v2

    :cond_2
    move/from16 v19, v1

    move/from16 v20, v2

    .line 1014
    iget-object v12, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    iget-object v1, v12, Lcom/netease/ntunisdk/glide/RequestBuilder;->transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;

    .line 1021
    invoke-virtual {v12}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getPriority()Lcom/netease/ntunisdk/glide/Priority;

    move-result-object v18

    iget-object v2, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v3, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p10

    .line 1015
    invoke-direct/range {v12 .. v22}, Lcom/netease/ntunisdk/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v1

    .line 1026
    invoke-virtual {v3, v0, v1}, Lcom/netease/ntunisdk/glide/request/ErrorRequestCoordinator;->setRequests(Lcom/netease/ntunisdk/glide/request/Request;Lcom/netease/ntunisdk/glide/request/Request;)V

    return-object v3
.end method

.method private buildThumbnailRequestRecursive(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestCoordinator;",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "II",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/netease/ntunisdk/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p4

    move-object/from16 v13, p6

    .line 1041
    iget-object v0, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    if-eqz v0, :cond_4

    .line 1043
    iget-boolean v1, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->isThumbnailBuilt:Z

    if-nez v1, :cond_3

    .line 1049
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;

    .line 1054
    iget-boolean v0, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    if-eqz v0, :cond_0

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    move-object v14, v1

    .line 1059
    :goto_0
    iget-object v0, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getPriority()Lcom/netease/ntunisdk/glide/Priority;

    move-result-object v0

    goto :goto_1

    .line 1061
    :cond_1
    invoke-direct {v11, v13}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getThumbnailPriority(Lcom/netease/ntunisdk/glide/Priority;)Lcom/netease/ntunisdk/glide/Priority;

    move-result-object v0

    :goto_1
    move-object v15, v0

    .line 1063
    iget-object v0, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getOverrideWidth()I

    move-result v0

    .line 1064
    iget-object v1, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getOverrideHeight()I

    move-result v1

    .line 1065
    invoke-static/range {p7 .. p8}, Lcom/netease/ntunisdk/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 1066
    invoke-virtual {v2}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    invoke-virtual/range {p9 .. p9}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v0

    .line 1068
    invoke-virtual/range {p9 .. p9}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    .line 1071
    new-instance v10, Lcom/netease/ntunisdk/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v10, v12, v5}, Lcom/netease/ntunisdk/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    .line 1074
    invoke-direct/range {v0 .. v10}, Lcom/netease/ntunisdk/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v10

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 1087
    iget-object v9, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v10

    move-object/from16 v10, p10

    .line 1088
    invoke-direct/range {v0 .. v10}, Lcom/netease/ntunisdk/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v0

    const/4 v1, 0x0

    .line 1099
    iput-boolean v1, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 1100
    invoke-virtual {v13, v12, v0}, Lcom/netease/ntunisdk/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/netease/ntunisdk/glide/request/Request;Lcom/netease/ntunisdk/glide/request/Request;)V

    return-object v13

    .line 1044
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_4
    iget-object v0, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1104
    new-instance v14, Lcom/netease/ntunisdk/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v14, v12, v5}, Lcom/netease/ntunisdk/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1107
    invoke-direct/range {v0 .. v10}, Lcom/netease/ntunisdk/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v15

    .line 1119
    invoke-virtual/range {p9 .. p9}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    iget-object v1, v11, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v4

    .line 1129
    invoke-direct {v11, v13}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getThumbnailPriority(Lcom/netease/ntunisdk/glide/Priority;)Lcom/netease/ntunisdk/glide/Priority;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1122
    invoke-direct/range {v0 .. v10}, Lcom/netease/ntunisdk/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v0

    .line 1134
    invoke-virtual {v14, v15, v0}, Lcom/netease/ntunisdk/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/netease/ntunisdk/glide/request/Request;Lcom/netease/ntunisdk/glide/request/Request;)V

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1138
    invoke-direct/range {v0 .. v10}, Lcom/netease/ntunisdk/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private cloneWithNullErrorAndThumbnail()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 277
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->error(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailPriority(Lcom/netease/ntunisdk/glide/Priority;)Lcom/netease/ntunisdk/glide/Priority;
    .locals 2

    .line 940
    sget-object v0, Lcom/netease/ntunisdk/glide/RequestBuilder$1;->$SwitchMap$com$netease$ntunisdk$glide$Priority:[I

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Priority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getPriority()Lcom/netease/ntunisdk/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 947
    :cond_1
    :goto_0
    sget-object p1, Lcom/netease/ntunisdk/glide/Priority;->IMMEDIATE:Lcom/netease/ntunisdk/glide/Priority;

    return-object p1

    .line 944
    :cond_2
    sget-object p1, Lcom/netease/ntunisdk/glide/Priority;->HIGH:Lcom/netease/ntunisdk/glide/Priority;

    return-object p1

    .line 942
    :cond_3
    sget-object p1, Lcom/netease/ntunisdk/glide/Priority;->NORMAL:Lcom/netease/ntunisdk/glide/Priority;

    return-object p1
.end method

.method private initRequestListeners(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestListener;

    .line 128
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->addListener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private into(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 724
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_2

    .line 729
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/RequestBuilder;->buildRequest(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object p2

    .line 731
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/target/Target;->getRequest()Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object p4

    .line 732
    invoke-interface {p2, p4}, Lcom/netease/ntunisdk/glide/request/Request;->isEquivalentTo(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-direct {p0, p3, p4}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isSkipMemoryCacheWithCompletePreviousRequest(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 738
    invoke-static {p4}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/glide/request/Request;

    invoke-interface {p2}, Lcom/netease/ntunisdk/glide/request/Request;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 742
    invoke-interface {p4}, Lcom/netease/ntunisdk/glide/request/Request;->begin()V

    :cond_0
    return-object p1

    .line 747
    :cond_1
    iget-object p3, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-virtual {p3, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    .line 748
    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/glide/request/target/Target;->setRequest(Lcom/netease/ntunisdk/glide/request/Request;)V

    .line 749
    iget-object p3, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-virtual {p3, p1, p2}, Lcom/netease/ntunisdk/glide/RequestManager;->track(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/Request;)V

    return-object p1

    .line 726
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isSkipMemoryCacheWithCompletePreviousRequest(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Lcom/netease/ntunisdk/glide/request/Request;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/request/Request;",
            ")Z"
        }
    .end annotation

    .line 761
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/netease/ntunisdk/glide/request/Request;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 470
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 471
    iput-boolean p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->isModelSet:Z

    .line 472
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->selfOrThrowIfLocked()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-object p1
.end method

.method private obtainRequest(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/TransitionOptions;Lcom/netease/ntunisdk/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/Request;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/request/RequestCoordinator;",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/netease/ntunisdk/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/netease/ntunisdk/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1163
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    iget-object v4, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v5, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iget-object v12, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 1177
    invoke-virtual {v2}, Lcom/netease/ntunisdk/glide/GlideContext;->getEngine()Lcom/netease/ntunisdk/glide/load/engine/Engine;

    move-result-object v14

    .line 1178
    invoke-virtual/range {p6 .. p6}, Lcom/netease/ntunisdk/glide/TransitionOptions;->getTransitionFactory()Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;

    move-result-object v15

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    .line 1163
    invoke-static/range {v1 .. v16}, Lcom/netease/ntunisdk/glide/request/SingleRequest;->obtain(Landroid/content/Context;Lcom/netease/ntunisdk/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;IILcom/netease/ntunisdk/glide/Priority;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Ljava/util/List;Lcom/netease/ntunisdk/glide/request/RequestCoordinator;Lcom/netease/ntunisdk/glide/load/engine/Engine;Lcom/netease/ntunisdk/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->addListener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->selfOrThrowIfLocked()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-object p1
.end method

.method public apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 684
    invoke-super {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 685
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/TransitionOptions;->clone()Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;

    .line 686
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 687
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 689
    :cond_0
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 692
    :cond_1
    iget-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    if-eqz v1, :cond_2

    .line 693
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(II)Lcom/netease/ntunisdk/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/netease/ntunisdk/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 929
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/glide/RequestBuilder;->submit(II)Lcom/netease/ntunisdk/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly(Lcom/netease/ntunisdk/glide/request/target/Target;)Lcom/netease/ntunisdk/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->into(Lcom/netease/ntunisdk/glide/request/target/Target;)Lcom/netease/ntunisdk/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public error(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->error(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 245
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->errorBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->selfOrThrowIfLocked()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-object p1
.end method

.method public error(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 270
    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->error(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->cloneWithNullErrorAndThumbnail()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->error(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected getDownloadOnlyRequest()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 935
    new-instance v0, Lcom/netease/ntunisdk/glide/RequestBuilder;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/netease/ntunisdk/glide/RequestBuilder;)V

    sget-object v1, Lcom/netease/ntunisdk/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public into(II)Lcom/netease/ntunisdk/glide/request/FutureTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/netease/ntunisdk/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 829
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/glide/RequestBuilder;->submit(II)Lcom/netease/ntunisdk/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public into(Lcom/netease/ntunisdk/glide/request/target/Target;)Lcom/netease/ntunisdk/glide/request/target/Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 707
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->into(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method into(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/target/Target;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 716
    invoke-direct {p0, p1, p2, p0, p3}, Lcom/netease/ntunisdk/glide/RequestBuilder;->into(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;)Lcom/netease/ntunisdk/glide/request/target/ViewTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/netease/ntunisdk/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 776
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 777
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    sget-object v0, Lcom/netease/ntunisdk/glide/RequestBuilder$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 799
    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    .line 796
    :pswitch_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    .line 791
    :pswitch_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    .line 788
    :pswitch_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 808
    :goto_1
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->glideContext:Lcom/netease/ntunisdk/glide/GlideContext;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 809
    invoke-virtual {v1, p1, v2}, Lcom/netease/ntunisdk/glide/GlideContext;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/request/target/ViewTarget;

    move-result-object p1

    const/4 v1, 0x0

    .line 812
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 808
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/netease/ntunisdk/glide/RequestBuilder;->into(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public listener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->listener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 192
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->addListener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 496
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 522
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/signature/AndroidResourceSignature;->obtain(Landroid/content/Context;)Lcom/netease/ntunisdk/glide/load/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->signatureOf(Lcom/netease/ntunisdk/glide/load/Key;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 462
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 545
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 645
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 660
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isDiskCacheStrategySet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    .line 664
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isSkipMemoryCacheSet()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 665
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load([B)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public preload()Lcom/netease/ntunisdk/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 898
    invoke-virtual {p0, v0, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->preload(II)Lcom/netease/ntunisdk/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lcom/netease/ntunisdk/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->requestManager:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/glide/request/target/PreloadTarget;->obtain(Lcom/netease/ntunisdk/glide/RequestManager;II)Lcom/netease/ntunisdk/glide/request/target/PreloadTarget;

    move-result-object p1

    .line 884
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->into(Lcom/netease/ntunisdk/glide/request/target/Target;)Lcom/netease/ntunisdk/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public submit()Lcom/netease/ntunisdk/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 846
    invoke-virtual {p0, v0, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->submit(II)Lcom/netease/ntunisdk/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public submit(II)Lcom/netease/ntunisdk/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/netease/ntunisdk/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 861
    new-instance v0, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/request/RequestFutureTarget;-><init>(II)V

    .line 862
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Executors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->into(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/netease/ntunisdk/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/request/FutureTarget;

    return-object p1
.end method

.method public thumbnail(F)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(F)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 446
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 448
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->selfOrThrowIfLocked()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-object p1

    .line 444
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnail(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 306
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnailBuilder:Lcom/netease/ntunisdk/glide/RequestBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->selfOrThrowIfLocked()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-object p1
.end method

.method public thumbnail(Ljava/util/List;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 380
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 390
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 391
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/glide/RequestBuilder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 402
    :cond_2
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 381
    :cond_4
    :goto_2
    check-cast v0, Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs thumbnail([Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 342
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(Ljava/util/List;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 343
    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->thumbnail(Lcom/netease/ntunisdk/glide/RequestBuilder;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transition(Lcom/netease/ntunisdk/glide/TransitionOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->clone()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->transition(Lcom/netease/ntunisdk/glide/TransitionOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/TransitionOptions;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->transitionOptions:Lcom/netease/ntunisdk/glide/TransitionOptions;

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/netease/ntunisdk/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 169
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestBuilder;->selfOrThrowIfLocked()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/RequestBuilder;

    return-object p1
.end method
