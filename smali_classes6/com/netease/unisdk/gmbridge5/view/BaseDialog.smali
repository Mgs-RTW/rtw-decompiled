.class public abstract Lcom/netease/unisdk/gmbridge5/view/BaseDialog;
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
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 26
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$style;->uni_gm_dialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    .line 27
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 28
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mScreenWidth:I

    .line 29
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mScreenHeight:I

    return-void
.end method

.method private setDialogWindowAttributes()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 57
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 59
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->getDialogWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->getDialogHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->dismiss()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    .line 77
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDialogHeight()I
.end method

.method protected abstract getDialogWidth()I
.end method

.method protected abstract initDialogView()Landroid/view/View;
.end method

.method protected abstract initDialogViewOfOnClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
.end method

.method public isShowing()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

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

    .line 37
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->initDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->initDialogView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 40
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->setDialogWindowAttributes()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showOfSaveImageDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->initDialogViewOfOnClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->initDialogViewOfOnClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    .line 48
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->setDialogWindowAttributes()V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
