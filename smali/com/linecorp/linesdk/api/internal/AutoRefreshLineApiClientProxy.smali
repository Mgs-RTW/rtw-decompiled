.class public Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy;
.super Ljava/lang/Object;
.source "AutoRefreshLineApiClientProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newProxy(Lcom/linecorp/linesdk/api/LineApiClient;)Lcom/linecorp/linesdk/api/LineApiClient;
    .locals 4
    .param p0    # Lcom/linecorp/linesdk/api/LineApiClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/linecorp/linesdk/api/LineApiClient;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$TokenAutoRefreshInvocationHandler;-><init>(Lcom/linecorp/linesdk/api/LineApiClient;Lcom/linecorp/linesdk/api/internal/AutoRefreshLineApiClientProxy$1;)V

    .line 31
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/api/LineApiClient;

    return-object p0
.end method
