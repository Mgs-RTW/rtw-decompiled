.class final Lcom/appsflyer/internal/referrer/Referrer$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/referrer/Referrer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFDateFormat:Lcom/appsflyer/internal/referrer/Referrer;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/referrer/Referrer;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/appsflyer/internal/referrer/Referrer$4;->AFDateFormat:Lcom/appsflyer/internal/referrer/Referrer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/Referrer$4;->AFDateFormat:Lcom/appsflyer/internal/referrer/Referrer;

    invoke-static {v0}, Lcom/appsflyer/internal/referrer/Referrer;->values(Lcom/appsflyer/internal/referrer/Referrer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    return-void
.end method
