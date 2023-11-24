.class public Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;
.super Ljava/lang/Object;
.source "SingleScreenFoldingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;,
        Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleScreenFoldingUtil"

.field static TARGET_MODEL:[Ljava/lang/String; = null

.field static dis_left:I = -0x80000000

.field static dis_right:I = -0x80000000

.field static dis_top:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PAL-AL00"

    aput-object v2, v0, v1

    .line 27
    sput-object v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->TARGET_MODEL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCutoutLocation(Landroid/app/Activity;[ILcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;)[I
    .locals 11

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    sget v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    sget v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 114
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 115
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 116
    aget v5, p1, v4

    const/4 v6, 0x3

    .line 117
    aget p1, p1, v6

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 120
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 125
    :goto_0
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 126
    invoke-virtual {p0, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 127
    iget p0, v8, Landroid/graphics/Point;->x:I

    .line 128
    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ne v7, v2, :cond_3

    .line 133
    sget-object v7, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->BASE_RIGHT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    if-ne p2, v7, :cond_2

    .line 134
    sget p2, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    sub-int/2addr p0, p2

    sub-int/2addr v5, v1

    sub-int p2, p0, v5

    goto :goto_2

    .line 137
    :cond_2
    sget p2, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_left:I

    sub-int/2addr v5, v1

    add-int p0, p2, v5

    goto :goto_2

    .line 143
    :cond_3
    div-int/lit8 v7, p0, 0x3

    if-ge v5, v7, :cond_5

    .line 145
    sget-object p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->BASE_RIGHT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    if-ne p2, p0, :cond_4

    .line 146
    sget p2, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    .line 147
    sget p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    sub-int/2addr v5, v1

    add-int v1, p2, v5

    sub-int/2addr p1, v3

    add-int/2addr p1, p0

    move v3, p0

    move p0, v1

    goto :goto_2

    .line 151
    :cond_4
    sget p2, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    .line 152
    sget p0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_left:I

    sub-int p0, v8, p0

    sub-int/2addr p1, v3

    sub-int v3, p0, p1

    sub-int/2addr v5, v1

    add-int p1, p2, v5

    move v10, p1

    move p1, p0

    move p0, v10

    goto :goto_2

    .line 158
    :cond_5
    sget-object v7, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;->BASE_RIGHT:Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$LocationType;

    if-ne p2, v7, :cond_6

    .line 159
    sget p2, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    sub-int/2addr p0, p2

    .line 160
    sget p2, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_right:I

    sub-int p2, v8, p2

    sub-int/2addr v5, v1

    sub-int v1, p0, v5

    sub-int/2addr p1, v3

    sub-int v3, p2, p1

    move p1, p2

    goto :goto_1

    .line 164
    :cond_6
    sget p2, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_left:I

    .line 165
    sget v7, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->dis_top:I

    sub-int/2addr p0, v7

    sub-int/2addr p1, v3

    add-int/2addr p1, p2

    sub-int/2addr v5, v1

    sub-int v1, p0, v5

    move v3, p2

    :goto_1
    move p2, v1

    :goto_2
    const/4 v1, 0x4

    new-array v1, v1, [I

    aput p2, v1, v0

    aput v3, v1, v2

    aput p0, v1, v4

    aput p1, v1, v6

    return-object v1

    :cond_7
    :goto_3
    return-object p1
.end method

.method public static init(Landroid/app/Activity;Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;)V
    .locals 7

    .line 31
    sget-object v0, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil;->TARGET_MODEL:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 32
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    .line 39
    invoke-interface {p1, v4}, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;->onFinish(Z)V

    :cond_2
    return-void

    .line 43
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$1;-><init>(Landroid/view/View;Landroid/app/Activity;Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 101
    invoke-interface {p1, v4}, Lcom/netease/ntunisdk/util/cutout/SingleScreenFoldingUtil$OnInitFinishLister;->onFinish(Z)V

    :cond_5
    :goto_2
    return-void
.end method
