.class public Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;
.super Lcom/netease/unisdk/gmbridge5/view/BaseDialog;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDialogHeight()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;->mScreenHeight:I

    return v0
.end method

.method protected getDialogWidth()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;->mScreenWidth:I

    return v0
.end method

.method protected initDialogView()Landroid/view/View;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$layout;->uni_gm_loading_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initDialogViewOfOnClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
