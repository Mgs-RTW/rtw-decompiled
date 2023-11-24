.class public Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;
.super Lcom/netease/unisdk/gmbridge5/view/BaseDialog;
.source "SaveImageConfirmDialog.java"


# static fields
.field private static final RES_ID_CANCEL:Ljava/lang/String; = "cancel"

.field private static final RES_ID_SURE:Ljava/lang/String; = "sure"


# instance fields
.field private mPressTextColor:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const-string p1, "#ffffff"

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mTextColor:I

    const-string p1, "#80ffffff"

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mPressTextColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mPressTextColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mTextColor:I

    return p0
.end method

.method private setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_tv"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 65
    new-instance p2, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;-><init>(Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected getDialogHeight()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_f_confirm_dialog_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getDialogWidth()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_f_confirm_dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected initDialogView()Landroid/view/View;
    .locals 2

    const-string v0, "SaveImageConfirmDialog: "

    const-string v1, "initDialogView"

    .line 33
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initDialogViewOfOnClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 7

    const-string v0, "SaveImageConfirmDialog: "

    const-string v1, "initDialogViewOfOnClickListener"

    .line 39
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$layout;->uni_gm_confirm_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v1

    .line 42
    sget v2, Lcom/netease/unisdk/gmbridgelib/R$id;->confirm1_tv:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    sget v3, Lcom/netease/unisdk/gmbridgelib/R$id;->confirm2_tv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->cancel_tv:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    sget v5, Lcom/netease/unisdk/gmbridgelib/R$id;->sure_tv:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    .line 46
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    .line 48
    iget-object v2, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSaveImageTittle:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSaveImageCancel:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mSaveImageOk:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_save_image_tittle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_save_image_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$string;->uni_gm_save_image_sure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v1, "cancel"

    .line 56
    invoke-direct {p0, v0, v1, p2}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string p2, "sure"

    .line 58
    invoke-direct {p0, v0, p2, p1}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
