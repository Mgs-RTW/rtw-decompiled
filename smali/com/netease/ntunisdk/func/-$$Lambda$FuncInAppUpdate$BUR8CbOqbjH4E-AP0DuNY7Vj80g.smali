.class public final synthetic Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$BUR8CbOqbjH4E-AP0DuNY7Vj80g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/func/FuncInAppUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/func/FuncInAppUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$BUR8CbOqbjH4E-AP0DuNY7Vj80g;->f$0:Lcom/netease/ntunisdk/func/FuncInAppUpdate;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncInAppUpdate$BUR8CbOqbjH4E-AP0DuNY7Vj80g;->f$0:Lcom/netease/ntunisdk/func/FuncInAppUpdate;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/func/FuncInAppUpdate;->lambda$onResume$6$FuncInAppUpdate(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
