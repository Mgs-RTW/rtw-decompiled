.class Lcom/netease/ntunisdk/SdkGoogleX$12;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->requestEmailFromGoogleAccount()V
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

    .line 672
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$12;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$12;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$2400(Lcom/netease/ntunisdk/SdkGoogleX;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
