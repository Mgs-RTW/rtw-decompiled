.class final Lcom/appsflyer/deeplink/DdlEvent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DdlEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$a:Lcom/appsflyer/internal/referrer/Referrer;

.field private synthetic valueOf:Lcom/appsflyer/deeplink/DdlEvent;


# direct methods
.method constructor <init>(Lcom/appsflyer/deeplink/DdlEvent;Lcom/appsflyer/internal/referrer/Referrer;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/appsflyer/deeplink/DdlEvent$1;->valueOf:Lcom/appsflyer/deeplink/DdlEvent;

    iput-object p2, p0, Lcom/appsflyer/deeplink/DdlEvent$1;->$$a:Lcom/appsflyer/internal/referrer/Referrer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DDL] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/deeplink/DdlEvent$1;->$$a:Lcom/appsflyer/internal/referrer/Referrer;

    iget-object v1, v1, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v2, "source"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " referrer collected via observer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/appsflyer/deeplink/DdlEvent$1;->valueOf:Lcom/appsflyer/deeplink/DdlEvent;

    check-cast p1, Lcom/appsflyer/internal/referrer/Referrer;

    invoke-static {v0, p1}, Lcom/appsflyer/deeplink/DdlEvent;->$$a(Lcom/appsflyer/deeplink/DdlEvent;Lcom/appsflyer/internal/referrer/Referrer;)V

    .line 276
    return-void
.end method
