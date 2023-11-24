.class public Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;
.super Landroid/app/Dialog;
.source "ContentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "D"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentText:Landroid/text/Spanned;

.field private mContentViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/external/protocol/view/ContentView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

.field private mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

.field private mIsSubProtocol:Z

.field private mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

.field private mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field private mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

.field private mURLSpans:[Landroid/text/style/URLSpan;

.field private mViewStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "unisdk_protocol_dialog"

    const-string v1, "style"

    .line 47
    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    .line 53
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 54
    new-instance p2, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    .line 55
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->access$000(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->showSubProtocol(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Ljava/util/HashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    return p0
.end method

.method static synthetic access$502(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    return p1
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->rejectProtocolConfirm(Landroid/content/Context;)V

    return-void
.end method

.method private getContentView(Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)Lcom/netease/ntunisdk/external/protocol/view/ContentView;
    .locals 12

    .line 61
    new-instance v10, Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-object v11, p0

    iget-object v0, v11, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    move-object v0, v10

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;-><init>(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)V

    return-object v10
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    new-instance v3, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->onCreateView(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private onViewCreate()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setCancelable(Z)V

    .line 115
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setDialogOnKeyListener()V

    .line 123
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getView()Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private rejectProtocolConfirm(Landroid/content/Context;)V
    .locals 7

    .line 279
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;->getProtocolLocale(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 285
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 286
    iput-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 287
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    const-string v2, "string"

    const-string v3, "unisdk_protocol_reject_confirm_msg"

    .line 289
    invoke-static {p1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unisdk_protocol_reject_confirm_ok"

    .line 290
    invoke-static {p1, v4, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "unisdk_protocol_reject_confirm_back"

    .line 291
    invoke-static {p1, v5, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    new-instance p1, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    new-instance v6, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$5;

    invoke-direct {v6, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$5;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    const-string v1, "  "

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setDialogOnKeyListener()V
    .locals 1

    .line 129
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private showSubProtocol(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;)V
    .locals 11

    const-string v10, "D"

    .line 230
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$6;->$SwitchMap$com$netease$ntunisdk$external$protocol$Scene:[I

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/Scene;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_1
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_2
    iget v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->acceptStatus:I

    if-ne v1, v2, :cond_3

    .line 235
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    .line 236
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_3
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    .line 253
    :cond_4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "empty  ProtocolText"

    .line 254
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 259
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    const/4 v1, 0x0

    .line 261
    invoke-interface {v6}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {v6, v1, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##fromHtml time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    .line 265
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProtocolType()I

    move-result v3

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 266
    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getKey()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 265
    invoke-direct/range {v1 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getContentView(Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    .line 267
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 268
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preDialog Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;)V
    .locals 10

    move-object v9, p0

    move v0, p3

    .line 86
    iput v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    move-object v0, p1

    .line 87
    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mActivity:Landroid/app/Activity;

    move v0, p5

    .line 88
    iput-boolean v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mIsSubProtocol:Z

    move-object/from16 v0, p6

    .line 89
    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentText:Landroid/text/Spanned;

    move-object/from16 v0, p7

    .line 90
    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mURLSpans:[Landroid/text/style/URLSpan;

    move-object v0, p4

    .line 91
    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-object v0, p2

    .line 92
    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 93
    iget-object v1, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    iget-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProtocolType()I

    move-result v2

    iget-object v3, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-boolean v4, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mIsSubProtocol:Z

    iget-object v5, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentText:Landroid/text/Spanned;

    iget-object v6, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mURLSpans:[Landroid/text/style/URLSpan;

    iget v8, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getContentView(Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 95
    iget-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    iget-object v1, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;)V
    .locals 10

    .line 106
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->access$000(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/app/Activity;)V

    .line 107
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProtocolType()I

    move-result v3

    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-boolean v5, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mIsSubProtocol:Z

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentText:Landroid/text/Spanned;

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mURLSpans:[Landroid/text/style/URLSpan;

    iget v9, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getContentView(Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 109
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->onViewCreate()V

    .line 110
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/view/Window;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->onViewCreate()V

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/view/Window;)V

    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
