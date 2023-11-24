.class Lcom/netease/mpay/oversea/m/d$c$a;
.super Ljava/lang/Object;
.source "LinkGoogleGamesApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/m/d$c;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/m/e;

.field final synthetic b:Lcom/netease/mpay/oversea/m/d$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m/d$c;Lcom/netease/mpay/oversea/m/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/m/d$c$a;->b:Lcom/netease/mpay/oversea/m/d$c;

    iput-object p2, p0, Lcom/netease/mpay/oversea/m/d$c$a;->a:Lcom/netease/mpay/oversea/m/e;

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
            "Lcom/google/android/gms/games/Player;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/d$c$a;->a:Lcom/netease/mpay/oversea/m/e;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/m/e;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/d$c$a;->a:Lcom/netease/mpay/oversea/m/e;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/m/e;->b:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/m/d$c$a;->b:Lcom/netease/mpay/oversea/m/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/m/d$c;->b:Lcom/netease/mpay/oversea/m/a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/m/d$c$a;->a:Lcom/netease/mpay/oversea/m/e;

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/m/a;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
