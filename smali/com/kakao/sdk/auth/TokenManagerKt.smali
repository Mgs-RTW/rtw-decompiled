.class public final Lcom/kakao/sdk/auth/TokenManagerKt;
.super Ljava/lang/Object;
.source "TokenManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a$\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0003H\u0082\u0008\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "parseOrNull",
        "T",
        "f",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "auth_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final synthetic access$parseOrNull(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kakao/sdk/auth/TokenManagerKt;->parseOrNull(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final parseOrNull(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 196
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0, p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
