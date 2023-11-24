.class public Lcom/netease/ntunisdk/base/utils/LoadingDialog;
.super Ljava/lang/Object;
.source "LoadingDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingDialog"

.field private static instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dialog:Landroid/app/Dialog;

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/base/utils/LoadingDialog;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/netease/ntunisdk/base/utils/LoadingDialog;
    .locals 1

    .line 24
    sget-object v0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->resetContext(Landroid/app/Activity;)V

    .line 29
    :goto_0
    sget-object p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->instance:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    return-object p0
.end method

.method private resetContext(Landroid/app/Activity;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;-><init>(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/LoadingDialog$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog$1;-><init>(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
