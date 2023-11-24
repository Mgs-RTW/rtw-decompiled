.class Lcom/netease/mpay/oversea/m/d$a;
.super Ljava/lang/Object;
.source "LinkGoogleGamesApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/m/d;->a(Lcom/google/android/gms/games/GamesSignInClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/games/GamesSignInClient;

.field final synthetic b:Lcom/netease/mpay/oversea/m/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m/d;Lcom/google/android/gms/games/GamesSignInClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/m/d$a;->b:Lcom/netease/mpay/oversea/m/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/m/d$a;->a:Lcom/google/android/gms/games/GamesSignInClient;

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
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/m/d$a;->a:Lcom/google/android/gms/games/GamesSignInClient;

    iget-object v0, p0, Lcom/netease/mpay/oversea/m/d$a;->b:Lcom/netease/mpay/oversea/m/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/m/d;->f(Lcom/netease/mpay/oversea/m/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/f;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/GamesSignInClient;->requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/m/d$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/m/d$a$a;-><init>(Lcom/netease/mpay/oversea/m/d$a;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/m/d$a;->b:Lcom/netease/mpay/oversea/m/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/m/d;->g(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object p1

    const/16 v0, 0x2716

    const-string v1, "login failed!"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
