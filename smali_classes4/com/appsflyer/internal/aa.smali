.class public final Lcom/appsflyer/internal/aa;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/aa$d;,
        Lcom/appsflyer/internal/aa$e;
    }
.end annotation


# instance fields
.field private AFDateFormat:Lcom/appsflyer/internal/aa$d;


# direct methods
.method private $$a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/aa;->AFDateFormat:Lcom/appsflyer/internal/aa$d;

    invoke-interface {v1, p1}, Lcom/appsflyer/internal/aa$d;->AFDateFormat(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/appsflyer/internal/aa$3;

    invoke-direct {v0}, Lcom/appsflyer/internal/aa$3;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/aa;->AFDateFormat:Lcom/appsflyer/internal/aa$d;

    .line 19
    return-void
.end method


# virtual methods
.method public final $$b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/appsflyer/internal/aa$e;->values()[Lcom/appsflyer/internal/aa$e;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 33
    invoke-static {v3}, Lcom/appsflyer/internal/aa$e;->valueOf(Lcom/appsflyer/internal/aa$e;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/appsflyer/internal/aa;->$$a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-static {v3}, Lcom/appsflyer/internal/aa$e;->$$a(Lcom/appsflyer/internal/aa$e;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/aa$e;->$$b:Lcom/appsflyer/internal/aa$e;

    invoke-static {v0}, Lcom/appsflyer/internal/aa$e;->$$a(Lcom/appsflyer/internal/aa$e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
