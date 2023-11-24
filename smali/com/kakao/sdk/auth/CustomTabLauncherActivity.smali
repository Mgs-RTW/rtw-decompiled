.class public Lcom/kakao/sdk/auth/CustomTabLauncherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CustomTabLauncherActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomTabLauncherActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTabLauncherActivity.kt\ncom/kakao/sdk/auth/CustomTabLauncherActivity\n*L\n1#1,149:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0014J\u0012\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0008\u0010\u0016\u001a\u00020\u000eH\u0014J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0008H\u0002J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0008H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/CustomTabLauncherActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "customTabsConnection",
        "Landroid/content/ServiceConnection;",
        "customTabsOpened",
        "",
        "fullUri",
        "Landroid/net/Uri;",
        "internalHandler",
        "Landroid/os/Handler;",
        "resultReceiver",
        "Landroid/os/ResultReceiver;",
        "loadData",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onNewIntent",
        "onResume",
        "openChromeCustomTab",
        "uri",
        "sendError",
        "exception",
        "Lcom/kakao/sdk/common/model/KakaoSdkError;",
        "sendOK",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private customTabsConnection:Landroid/content/ServiceConnection;

.field private customTabsOpened:Z

.field private fullUri:Landroid/net/Uri;

.field private internalHandler:Landroid/os/Handler;

.field private resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFullUri$p(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)Landroid/net/Uri;
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->fullUri:Landroid/net/Uri;

    if-nez p0, :cond_0

    const-string v0, "fullUri"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getResultReceiver$p(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)Landroid/os/ResultReceiver;
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-nez p0, :cond_0

    const-string v0, "resultReceiver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$sendError(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Lcom/kakao/sdk/common/model/KakaoSdkError;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    return-void
.end method

.method public static final synthetic access$setFullUri$p(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Landroid/net/Uri;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->fullUri:Landroid/net/Uri;

    return-void
.end method

.method public static final synthetic access$setResultReceiver$p(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method private final openChromeCustomTab(Landroid/net/Uri;)V
    .locals 3

    .line 115
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorize Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 117
    :try_start_0
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->openWithDefault(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->w(Ljava/lang/Object;)V

    .line 121
    :try_start_1
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->open(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 123
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->w(Ljava/lang/Object;)V

    .line 124
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v1, "No browser has been installed on a device."

    invoke-direct {p1, v0, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    :goto_0
    return-void
.end method

.method private final sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V
    .locals 4

    .line 131
    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    iget-object v0, v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    const-string v1, "resultReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 134
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    check-cast p1, Ljava/io/Serializable;

    const-string v3, "key.exception"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->finish()V

    return-void
.end method

.method private final sendOK(Landroid/net/Uri;)V
    .locals 4

    .line 141
    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    iget-object v0, v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    const-string v1, "resultReceiver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x1

    .line 144
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    check-cast p1, Landroid/os/Parcelable;

    const-string v3, "key.url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->finish()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public loadData(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "key.bundle"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "key.result.receiver"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    const-string v0, "key.full_authorize_uri"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->fullUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.net.Uri"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.os.ResultReceiver"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$loadData$2;

    invoke-direct {v1, p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$loadData$2;-><init>(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)V

    check-cast v1, Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 67
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/model/ClientError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    check-cast v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->loadData(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v1, "onNewIntent"

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->setIntent(Landroid/content/Intent;)V

    .line 97
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 98
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "it"

    .line 104
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendOK(Landroid/net/Uri;)V

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 73
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 75
    iget-boolean v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsOpened:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsOpened:Z

    .line 78
    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    iget-object v0, v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->fullUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->fullUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v1, "fullUri"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->openChromeCustomTab(Landroid/net/Uri;)V

    goto :goto_1

    .line 81
    :cond_1
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "url has been not initialized."

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    goto :goto_1

    .line 84
    :cond_2
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v1, "trigger delay message"

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method
