.class Lcom/netease/ntunisdk/SdkGoogleX$7;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->updateEvent(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$incrementAmount:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;I)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->val$eventId:Ljava/lang/String;

    iput p3, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->val$incrementAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1000(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getEventsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/EventsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->val$eventId:Ljava/lang/String;

    iget v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$7;->val$incrementAmount:I

    .line 405
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/EventsClient;->increment(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
