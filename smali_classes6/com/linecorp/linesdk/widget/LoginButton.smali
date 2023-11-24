.class public Lcom/linecorp/linesdk/widget/LoginButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "LoginButton.java"


# instance fields
.field private authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private internalListener:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private isLineAppAuthEnabled:Z

.field private loginDelegate:Lcom/linecorp/linesdk/LoginDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 146
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    .line 117
    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    new-array p1, p1, [Lcom/linecorp/linesdk/Scope;

    sget-object v1, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 119
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    .line 125
    new-instance p1, Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/LoginHandler;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    .line 128
    new-instance p1, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$HI7EYWU-SyfhgcPX-kgDfXkt4p4;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$HI7EYWU-SyfhgcPX-kgDfXkt4p4;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    .line 147
    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 151
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    .line 117
    new-instance p2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    new-array p1, p1, [Lcom/linecorp/linesdk/Scope;

    sget-object v0, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 119
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    .line 125
    new-instance p1, Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/LoginHandler;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    .line 128
    new-instance p1, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$HI7EYWU-SyfhgcPX-kgDfXkt4p4;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$HI7EYWU-SyfhgcPX-kgDfXkt4p4;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    .line 152
    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    .line 117
    new-instance p2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    new-array p1, p1, [Lcom/linecorp/linesdk/Scope;

    sget-object p3, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 119
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    .line 125
    new-instance p1, Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/LoginHandler;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    .line 128
    new-instance p1, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$HI7EYWU-SyfhgcPX-kgDfXkt4p4;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$HI7EYWU-SyfhgcPX-kgDfXkt4p4;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    .line 157
    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->init()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 278
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 281
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 284
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find an Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setAllCaps(Z)V

    const/16 v0, 0x11

    .line 267
    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setGravity(I)V

    .line 268
    sget v0, Lcom/linecorp/linesdk/R$string;->btn_line_login:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setText(I)V

    .line 269
    invoke-virtual {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$color;->text_login_btn:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setTextColor(I)V

    .line 270
    sget v0, Lcom/linecorp/linesdk/R$drawable;->background_login_btn:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->performLoginWithFragment(Ljava/lang/String;Lcom/linecorp/linesdk/internal/FragmentWrapper;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/widget/LoginButton;->performLoginWithActivity(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Channel id should not be empty."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Channel id should be set."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$setOnClickListener$1(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->internalListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private performLoginWithActivity(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    iget-boolean v1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    iget-object v2, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/linecorp/linesdk/internal/LoginHandler;->performLogin(Landroid/app/Activity;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    return-void
.end method

.method private performLoginWithFragment(Ljava/lang/String;Lcom/linecorp/linesdk/internal/FragmentWrapper;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/internal/FragmentWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 300
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    .line 301
    invoke-direct {p0}, Lcom/linecorp/linesdk/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v3, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    iget-object v5, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-object v2, p2

    move-object v4, p1

    .line 300
    invoke-virtual/range {v0 .. v5}, Lcom/linecorp/linesdk/internal/LoginHandler;->performLogin(Landroid/app/Activity;Lcom/linecorp/linesdk/internal/FragmentWrapper;ZLjava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    return-void
.end method


# virtual methods
.method public addLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/LoginListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 219
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginDelegate:Lcom/linecorp/linesdk/LoginDelegate;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->addLoginListener(Lcom/linecorp/linesdk/LoginListener;)V

    return-void

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must set LoginDelegate through setLoginDelegate()  first"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableLineAppAuthentication(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->isLineAppAuthEnabled:Z

    return-void
.end method

.method public removeLoginListener(Lcom/linecorp/linesdk/LoginListener;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/LoginListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    iget-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/LoginHandler;->removeLoginListener(Lcom/linecorp/linesdk/LoginListener;)V

    return-void
.end method

.method public setAuthenticationParams(Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->authenticationParams:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 253
    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 182
    new-instance v0, Lcom/linecorp/linesdk/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 193
    new-instance v0, Lcom/linecorp/linesdk/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/widget/LoginButton;->fragmentWrapper:Lcom/linecorp/linesdk/internal/FragmentWrapper;

    return-void
.end method

.method public setLoginDelegate(Lcom/linecorp/linesdk/LoginDelegate;)V
    .locals 2
    .param p1    # Lcom/linecorp/linesdk/LoginDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    instance-of v0, p1, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p1

    check-cast v0, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginHandler:Lcom/linecorp/linesdk/internal/LoginHandler;

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/internal/LoginDelegateImpl;->setLoginHandler(Lcom/linecorp/linesdk/internal/LoginHandler;)V

    .line 210
    iput-object p1, p0, Lcom/linecorp/linesdk/widget/LoginButton;->loginDelegate:Lcom/linecorp/linesdk/LoginDelegate;

    return-void

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected LoginDelegate, please use the provided Factory to create the instance"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 166
    new-instance v0, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$zv27Iwx9hiNMThujVKwi1KeR4Os;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$zv27Iwx9hiNMThujVKwi1KeR4Os;-><init>(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
