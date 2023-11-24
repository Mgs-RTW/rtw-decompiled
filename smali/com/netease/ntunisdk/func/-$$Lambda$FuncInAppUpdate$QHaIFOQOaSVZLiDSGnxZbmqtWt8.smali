.class public final synthetic Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$QHaIFOQOaSVZLiDSGnxZbmqtWt8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/func/FuncInAppUpdate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/func/FuncInAppUpdate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$QHaIFOQOaSVZLiDSGnxZbmqtWt8;->f$0:Lcom/netease/ntunisdk/func/FuncInAppUpdate;

    iput p2, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$QHaIFOQOaSVZLiDSGnxZbmqtWt8;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$QHaIFOQOaSVZLiDSGnxZbmqtWt8;->f$0:Lcom/netease/ntunisdk/func/FuncInAppUpdate;

    iget v1, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$QHaIFOQOaSVZLiDSGnxZbmqtWt8;->f$1:I

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/func/FuncInAppUpdate;->lambda$requestAppUpdate$5$FuncInAppUpdate(ILcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
