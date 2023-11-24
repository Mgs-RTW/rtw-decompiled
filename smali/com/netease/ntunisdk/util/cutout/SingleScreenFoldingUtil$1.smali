.class final Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;
.super Ljava/lang/Object;
.source "SingleScreenFoldingUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->init(Landroid/app/Activity;Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$onInitFinishLister:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/app/Activity;Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$decorView:Landroid/view/View;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$onInitFinishLister:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "SingleScreenFoldingUtil"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 52
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 56
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 57
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 59
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v7, v8, :cond_0

    .line 60
    iget-object v7, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v7

    goto :goto_0

    .line 62
    :cond_0
    iget-object v7, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 64
    :goto_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 65
    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 66
    iget v7, v8, Landroid/graphics/Point;->x:I

    .line 67
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 68
    iget-object v9, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v1, :cond_1

    .line 70
    sput v5, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    sub-int/2addr v7, v6

    .line 71
    sput v7, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    .line 72
    sput v4, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_left:I

    goto :goto_1

    .line 74
    :cond_1
    div-int/lit8 v9, v7, 0x3

    if-ge v6, v9, :cond_2

    .line 76
    sput v4, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    .line 77
    sput v5, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    sub-int/2addr v8, v3

    .line 78
    sput v8, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_left:I

    goto :goto_1

    :cond_2
    sub-int/2addr v7, v6

    .line 81
    sput v7, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    sub-int/2addr v8, v3

    .line 82
    sput v8, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    .line 83
    sput v5, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_left:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init -> info -> dis_top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ;dis_right: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ;dis_left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :catch_1
    move-exception v1

    .line 92
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init -> e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 94
    :goto_3
    iget-object v0, p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;->val$onInitFinishLister:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;

    if-eqz v0, :cond_4

    .line 95
    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;->onFinish(Z)V

    :cond_4
    return-void
.end method
