.class public Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;
.super Lcom/netease/unisdk/gmbridge/view/BaseDialog;
.source "ConfirmDialog.java"


# static fields
.field private static final RES_ID_CANCEL:Ljava/lang/String; = "cancel"

.field private static final RES_ID_SURE:Ljava/lang/String; = "sure"


# instance fields
.field private mPressTextColor:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;-><init>(Landroid/content/Context;)V

    const-string p1, "#ffffff"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mTextColor:I

    const-string p1, "#80ffffff"

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mPressTextColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mPressTextColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mTextColor:I

    return p0
.end method

.method private setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_tv"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 51
    new-instance p2, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;

    invoke-direct {p2, p0, p1, p3}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;-><init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method protected getDialogHeight()I
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_f_confirm_dialog_height"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getDialogWidth()I
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_f_confirm_dialog_width"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected initDialogView()Landroid/view/View;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_confirm_dialog"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "cancel"

    .line 31
    new-instance v2, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$1;-><init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v1, "sure"

    .line 38
    new-instance v2, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$2;-><init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
