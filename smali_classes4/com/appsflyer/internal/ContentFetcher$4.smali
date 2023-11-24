.class final Lcom/appsflyer/internal/ContentFetcher$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ContentFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic $$b:Lcom/appsflyer/internal/ContentFetcher;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ContentFetcher;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/appsflyer/internal/ContentFetcher$4;->$$b:Lcom/appsflyer/internal/ContentFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/appsflyer/internal/ContentFetcher$4;->$$b:Lcom/appsflyer/internal/ContentFetcher;

    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/ContentFetcher$4;->$$b:Lcom/appsflyer/internal/ContentFetcher;

    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->query()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
