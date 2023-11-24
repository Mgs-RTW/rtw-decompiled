.class public final synthetic Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$8F5RdqOwvI1SdFdaRVUzfc9Ez_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/func/FuncAssetPack;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/func/FuncAssetPack;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$8F5RdqOwvI1SdFdaRVUzfc9Ez_k;->f$0:Lcom/netease/ntunisdk/func/FuncAssetPack;

    iput-object p2, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$8F5RdqOwvI1SdFdaRVUzfc9Ez_k;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$8F5RdqOwvI1SdFdaRVUzfc9Ez_k;->f$0:Lcom/netease/ntunisdk/func/FuncAssetPack;

    iget-object v1, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncAssetPack$8F5RdqOwvI1SdFdaRVUzfc9Ez_k;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/func/FuncAssetPack;->lambda$getPackStates$1$FuncAssetPack(Lorg/json/JSONObject;Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method
