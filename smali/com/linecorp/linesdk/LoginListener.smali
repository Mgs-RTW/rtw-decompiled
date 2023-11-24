.class public interface abstract Lcom/linecorp/linesdk/LoginListener;
.super Ljava/lang/Object;
.source "LoginListener.java"


# virtual methods
.method public abstract onLoginFailure(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .param p1    # Lcom/linecorp/linesdk/auth/LineLoginResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoginSuccess(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .param p1    # Lcom/linecorp/linesdk/auth/LineLoginResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
