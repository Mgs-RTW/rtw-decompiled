.class final Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;->invoke(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "codeError",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $codeVerifier:Ljava/lang/String;

.field final synthetic this$0:Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;


# direct methods
.method constructor <init>(Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1;->this$0:Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;

    iput-object p2, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1;->$codeVerifier:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1;->invoke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 140
    iget-object p1, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1;->this$0:Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;

    iget-object p1, p1, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_0
    sget-object p2, Lcom/kakao/sdk/auth/AuthApiClient;->Companion:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {p2}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiClient;

    move-result-object p2

    if-nez p1, :cond_1

    .line 143
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1;->$codeVerifier:Ljava/lang/String;

    .line 145
    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1$1;

    invoke-direct {v1, p0}, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1$1;-><init>(Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 142
    invoke-virtual {p2, p1, v0, v1}, Lcom/kakao/sdk/auth/AuthApiClient;->issueAccessToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method
