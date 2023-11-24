.class public abstract Lcom/netease/unisdk/gmbridge/view/BaseDialog;
.super Ljava/lang/Object;
.source "BaseDialog.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/Dialog;

.field protected mDialogView:Landroid/view/View;

.field protected mScreenHeight:I

.field protected mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 27
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_dialog"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    .line 28
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 29
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mScreenWidth:I

    .line 30
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mScreenHeight:I

    return-void
.end method

.method private setDialogWindowAttributes()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 49
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->getDialogWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->getDialogHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->dismiss()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    .line 69
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialogView:Landroid/view/View;

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDialogHeight()I
.end method

.method protected abstract getDialogWidth()I
.end method

.method protected abstract initDialogView()Landroid/view/View;
.end method

.method public isShowing()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialogView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->initDialogView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialogView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->setDialogWindowAttributes()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
