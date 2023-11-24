.class public final Lcom/appsflyer/internal/o$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/o$a;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/o$a;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 25
    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLvlResult"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    aget-object v0, p3, v3

    if-eqz v0, :cond_9

    .line 30
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 33
    :goto_0
    aget-object v0, p3, v4

    if-eqz v0, :cond_8

    .line 34
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/String;

    .line 37
    :goto_1
    iget-object v3, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    if-eqz v3, :cond_3

    .line 38
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 39
    iget-object v3, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    invoke-interface {v3, v1, v0}, Lcom/appsflyer/internal/o$a;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_2
    return-object v2

    .line 40
    :cond_1
    if-nez v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    const-string v1, "onLvlResult with error"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "AFLVL Invalid signature"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/appsflyer/internal/o$a;->$$b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    const-string v1, "onLvlResult with error"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "AFLVL Invalid signedData"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/appsflyer/internal/o$a;->$$b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 46
    :cond_3
    const-string v0, "onLvlResult invocation succeeded, but listener is null"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_2

    .line 48
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLvlFailure"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    iget-object v0, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    if-eqz v0, :cond_6

    .line 50
    aget-object v0, p3, v3

    if-eqz v0, :cond_5

    .line 51
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Exception;

    .line 52
    iget-object v1, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    const-string v3, "onLvlFailure with exception"

    invoke-interface {v1, v3, v0}, Lcom/appsflyer/internal/o$a;->$$b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    const-string v1, "onLvlFailure"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "unknown"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/appsflyer/internal/o$a;->$$b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 57
    :cond_6
    const-string v0, "onLvlFailure: listener is null"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_7
    iget-object v0, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/appsflyer/internal/o$1;->values:Lcom/appsflyer/internal/o$a;

    const-string v1, "lvlInvocation failed"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/appsflyer/internal/o$a;->$$b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_1

    :cond_9
    move-object v1, v2

    goto/16 :goto_0
.end method
