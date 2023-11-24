.class Lcom/netease/mpay/oversea/m/d$c;
.super Ljava/lang/Object;
.source "LinkGoogleGamesApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/m/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/m/a;

.field final synthetic c:Lcom/netease/mpay/oversea/m/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m/d;Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/m/d$c;->c:Lcom/netease/mpay/oversea/m/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/m/d$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/m/d$c;->b:Lcom/netease/mpay/oversea/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/thirdapi/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/d$c;->b:Lcom/netease/mpay/oversea/m/a;

    iget-object v1, p1, Lcom/netease/mpay/oversea/thirdapi/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/g;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/m/a;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/m/e;

    iget-object p3, p0, Lcom/netease/mpay/oversea/m/d$c;->c:Lcom/netease/mpay/oversea/m/d;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/m/d;->i()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/m/d$c;->c:Lcom/netease/mpay/oversea/m/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/m/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/netease/mpay/oversea/m/e;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V

    .line 2
    iput-object p2, p1, Lcom/netease/mpay/oversea/m/e;->c:Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/m/d$c;->c:Lcom/netease/mpay/oversea/m/d;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/m/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/mpay/oversea/m/e;->d:Lcom/netease/mpay/oversea/t/c/g;

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/m/d$c;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/netease/mpay/oversea/m/d$c$a;

    invoke-direct {p3, p0, p1}, Lcom/netease/mpay/oversea/m/d$c$a;-><init>(Lcom/netease/mpay/oversea/m/d$c;Lcom/netease/mpay/oversea/m/e;)V

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
