.class Lcom/netease/ntunisdk/SdkGoogleX$14;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->signOutGoogleAccount(Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;

.field final synthetic val$callback:Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$14;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$14;->val$callback:Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SdkGoogleX"

    const-string v1, "signOut-onComplete"

    .line 727
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$14;->val$callback:Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;

    if-eqz v0, :cond_0

    .line 729
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;->onCallback(Lcom/google/android/gms/tasks/Task;)V

    :cond_0
    return-void
.end method
