.class final Lcom/kakao/sdk/auth/CustomTabLauncherActivity$loadData$2;
.super Ljava/lang/Object;
.source "CustomTabLauncherActivity.kt"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->loadData(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/os/Message;",
        "handleMessage"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/sdk/auth/CustomTabLauncherActivity;


# direct methods
.method constructor <init>(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$loadData$2;->this$0:Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v0, "handle delay message"

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$loadData$2;->this$0:Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "cancelled."

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-static {p1, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->access$sendError(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    const/4 p1, 0x1

    return p1
.end method
