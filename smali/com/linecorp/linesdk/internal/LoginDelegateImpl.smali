.class public Lcom/linecorp/linesdk/internal/LoginDelegateImpl;
.super Ljava/lang/Object;
.source "LoginDelegateImpl.java"

# interfaces
.implements Lcom/linecorp/linesdk/LoginDelegate;


# instance fields
.field private loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/linecorp/linesdk/internal/LoginHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setLoginHandler(Lcom/linecorp/linesdk/internal/LoginHandler;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/internal/LoginHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    return-void
.end method
