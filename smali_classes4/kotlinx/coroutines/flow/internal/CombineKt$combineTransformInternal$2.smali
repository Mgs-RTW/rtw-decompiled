.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineTransformInternal(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n+ 3 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n1#1,143:1\n174#2,4:144\n178#2,5:162\n86#3,7:148\n86#3,7:155\n*E\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2\n*L\n28#1,4:144\n28#1,5:162\n28#1,7:148\n28#1,7:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004*\u00020\u0005H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T1",
        "T2",
        "R",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x90
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "firstChannel",
        "secondChannel",
        "firstValue",
        "secondValue",
        "firstIsClosed",
        "secondIsClosed"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6"
    }
.end annotation


# instance fields
.field final synthetic $first:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $second:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $this_combineTransformInternal:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $transform:Lkotlin/jvm/functions/Function4;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$this_combineTransformInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$first:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$second:Lkotlinx/coroutines/flow/Flow;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$transform:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$this_combineTransformInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$first:Lkotlinx/coroutines/flow/Flow;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$second:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$transform:Lkotlin/jvm/functions/Function4;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->label:I

    packed-switch v2, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :pswitch_0
    iget-object v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$7:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;

    iget-object v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v0

    move-object v9, v2

    move-object v2, v1

    move-object/from16 v26, v6

    move-object v6, v3

    move-object v3, v7

    move-object v7, v4

    move-object/from16 v4, v26

    goto :goto_0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    iget-object v3, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$first:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/internal/CombineKt;->access$asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v3

    .line 22
    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$second:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v2, v4}, Lkotlinx/coroutines/flow/internal/CombineKt;->access$asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v4

    .line 23
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v6, 0x0

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 25
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v8, 0x0

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 26
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v8, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v15, v0

    move-object v8, v2

    move-object v2, v1

    .line 27
    :goto_0
    iget-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 144
    :cond_1
    :goto_1
    iput-object v8, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$4:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$6:Ljava/lang/Object;

    iput-object v2, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$7:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v2, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->label:I

    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/Continuation;

    .line 145
    new-instance v13, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v13, v14}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 147
    :try_start_0
    move-object v0, v13

    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilder;

    .line 29
    iget-boolean v12, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v19, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$1;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    move-object/from16 v10, v19

    move/from16 v20, v12

    move-object v12, v2

    move-object/from16 v21, v13

    move-object v13, v6

    move-object/from16 v22, v14

    move-object v14, v3

    move-object/from16 v23, v15

    move-object v15, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    :try_start_1
    invoke-direct/range {v10 .. v18}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    move-object/from16 v11, v19

    check-cast v11, Lkotlin/jvm/functions/Function2;

    if-eqz v20, :cond_2

    goto :goto_2

    .line 149
    :cond_2
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v15

    new-instance v20, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2;

    const/4 v12, 0x0

    move-object/from16 v10, v20

    move-object v13, v2

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v4

    invoke-direct/range {v10 .. v19}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    move-object/from16 v10, v20

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, v24

    invoke-interface {v0, v11, v10}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 36
    :goto_2
    iget-boolean v15, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v19, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3;

    const/4 v11, 0x0

    move-object/from16 v10, v19

    move-object v12, v2

    move-object v13, v6

    move-object v14, v3

    move/from16 v20, v15

    move-object v15, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    move-object/from16 v11, v19

    check-cast v11, Lkotlin/jvm/functions/Function2;

    if-eqz v20, :cond_3

    goto :goto_3

    .line 156
    :cond_3
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v15

    new-instance v20, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$4;

    const/4 v12, 0x0

    move-object/from16 v10, v20

    move-object v13, v2

    move-object v14, v6

    move-object/from16 v25, v15

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v4

    invoke-direct/range {v10 .. v19}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    move-object/from16 v10, v20

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, v25

    invoke-interface {v0, v11, v10}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object/from16 v10, v21

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v10, v21

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v10, v13

    .line 163
    :goto_4
    invoke-virtual {v10, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 165
    :goto_5
    invoke-virtual {v10}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    if-ne v0, v10, :cond_4

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    move-object/from16 v10, v23

    if-ne v0, v10, :cond_5

    return-object v10

    :cond_5
    move-object v15, v10

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
