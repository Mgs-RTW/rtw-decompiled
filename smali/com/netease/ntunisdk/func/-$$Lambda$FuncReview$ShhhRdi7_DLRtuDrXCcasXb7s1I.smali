.class public final synthetic Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/func/FuncReview;

.field public final synthetic f$1:Lcom/google/android/play/core/review/ReviewManager;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/netease/ntunisdk/base/SdkBase;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/func/FuncReview;Lcom/google/android/play/core/review/ReviewManager;Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$0:Lcom/netease/ntunisdk/func/FuncReview;

    iput-object p2, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    iput-object p3, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$3:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p5, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$5:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$0:Lcom/netease/ntunisdk/func/FuncReview;

    iget-object v1, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v2, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$3:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v4, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/ntunisdk/func/-$$Lambda$FuncReview$ShhhRdi7_DLRtuDrXCcasXb7s1I;->f$5:Lorg/json/JSONObject;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/func/FuncReview;->lambda$appStoreComment$7$FuncReview(Lcom/google/android/play/core/review/ReviewManager;Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method
