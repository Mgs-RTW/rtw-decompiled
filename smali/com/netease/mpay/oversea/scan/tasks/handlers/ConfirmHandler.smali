.class public Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;
.super Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;
.source "ConfirmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$Key;
    }
.end annotation


# instance fields
.field private mAlerters:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->onAgreeWebTokenPersistChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/content/res/Resources;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Lcom/netease/mpay/oversea/scan/widgets/Alerters;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mAlerters:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method private handleSystemUI()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->changeLanguage(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)V

    .line 148
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->hideNavigationBar(Landroid/view/Window;)V

    .line 150
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->setUseCutoutAboveP(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private initTitleBar()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v1, 0x7f07024d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;

    .line 163
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c01cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0400e9

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->populateTitle(Ljava/lang/String;I)V

    .line 165
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f060260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->populateBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    new-instance v1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$5;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$5;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f060263

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f060262

    .line 166
    invoke-virtual {v0, v1, v3, v2}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->populate(Landroid/view/View$OnClickListener;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private onAgreeWebTokenPersistChanged(Z)V
    .locals 5

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0c01e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0501c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0501b6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result v1

    iget-object v3, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0501b7

    .line 182
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v1, v3

    :goto_0
    add-int/2addr v0, v1

    .line 184
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-static {v1, p1, v2, v0}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->toastAt(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_1

    .line 186
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->cancelToast()V

    :goto_1
    return-void
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "uuid"

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "url"

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    .line 52
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "confirm_data"

    .line 53
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "name"

    .line 54
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "web_token_persist"

    .line 55
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->launchConfirmActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 68
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string p1, "uuid"

    .line 72
    invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "url"

    .line 73
    invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "data"

    .line 74
    invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p1, "name"

    .line 75
    invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "web_token_persist"

    .line 76
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 78
    iget-object v5, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    .line 79
    new-instance v5, Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    iget-object v6, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mAlerters:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    .line 80
    iget-object v5, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v6, 0x7f0900b0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->handleSystemUI()V

    .line 84
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->initTitleBar()V

    .line 85
    iget-object v5, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v6, 0x7f070249

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 86
    iget-object v6, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0c01d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v5, 0x7f070242

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 89
    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$WebTokenPersistMode;->shouldShow(I)Z

    move-result v5

    .line 90
    iget-object v6, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v7, 0x7f070241

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    if-eqz v5, :cond_1

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$WebTokenPersistMode;->shouldAgree(I)Z

    move-result v0

    .line 95
    new-instance v1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$1;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$1;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)V

    invoke-virtual {v6, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 103
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$2;

    invoke-direct {v0, p0, v6}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$2;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;Landroid/widget/ToggleButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v0, 0x7f07024f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/netease/mpay/oversea/scan/widgets/ProgressView;

    .line 112
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v0, 0x7f070248

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v9, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLandroid/widget/ToggleButton;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->mActivityInstance:Landroid/app/Activity;

    const v0, 0x7f070247

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$4;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$4;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)V

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 156
    invoke-super {p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->handleSystemUI()V

    return-void
.end method
