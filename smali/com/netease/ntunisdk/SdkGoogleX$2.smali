.class Lcom/netease/ntunisdk/SdkGoogleX$2;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/SdkGoogleX;->resetCommonProp()V

    .line 220
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->logoutDone(I)V

    return-void
.end method
