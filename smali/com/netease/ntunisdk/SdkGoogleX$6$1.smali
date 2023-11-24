.class Lcom/netease/ntunisdk/SdkGoogleX$6$1;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX$6;->onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkGoogleX$6;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX$6;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$6$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$6$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$6;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkGoogleX$6;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$800(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/netease/ntunisdk/SdkGoogleX;->access$700()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 374
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$6$1;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
