.class public Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;
.super Ljava/lang/Object;
.source "ResIdReader.java"


# static fields
.field private static final ERROR_ID:I = 0x0

.field public static final RES_TYPE_ARRAY:Ljava/lang/String; = "array"

.field public static final RES_TYPE_COLOR:Ljava/lang/String; = "color"

.field public static final RES_TYPE_DIMEN:Ljava/lang/String; = "dimen"

.field public static final RES_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final RES_TYPE_ID:Ljava/lang/String; = "id"

.field public static final RES_TYPE_LAYOUT:Ljava/lang/String; = "layout"

.field public static final RES_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final RES_TYPE_STYLE:Ljava/lang/String; = "style"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArrayId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "array"

    .line 60
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 64
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 56
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 48
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 36
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 40
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 52
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "style"

    .line 44
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
