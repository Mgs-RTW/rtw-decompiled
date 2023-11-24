.class Lcom/netease/ntunisdk/SdkGoogleX$8$2;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX$8;->onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/games/AnnotatedData<",
        "Lcom/google/android/gms/games/PlayerBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX$8;Ljava/util/List;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$2;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/PlayerBuffer;

    .line 446
    invoke-virtual {p1}, Lcom/google/android/gms/games/PlayerBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkGoogleX"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v1, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    .line 449
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    .line 450
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 451
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$2;->val$list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$2;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget-object p1, p1, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$2;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$2;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget v1, v1, Lcom/netease/ntunisdk/SdkGoogleX$8;->val$type:I

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1500(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 442
    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$8$2;->onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V

    return-void
.end method
