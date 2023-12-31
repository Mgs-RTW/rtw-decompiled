.class Lcom/soundcloud/android/crop/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/HighlightView$HandleMode;,
        Lcom/soundcloud/android/crop/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_HIGHLIGHT_COLOR:I = -0xcc4a1b

.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field private static final HANDLE_RADIUS_DP:F = 12.0f

.field public static final MOVE:I = 0x20

.field private static final OUTLINE_DP:F = 2.0f


# instance fields
.field cropRect:Landroid/graphics/RectF;

.field drawRect:Landroid/graphics/Rect;

.field private handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

.field private final handlePaint:Landroid/graphics/Paint;

.field private handleRadius:F

.field private highlightColor:I

.field private imageRect:Landroid/graphics/RectF;

.field private initialAspectRatio:F

.field private isFocused:Z

.field private maintainAspectRatio:Z

.field matrix:Landroid/graphics/Matrix;

.field private modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private outlineWidth:F

.field private final outsidePaint:Landroid/graphics/Paint;

.field private showThirds:Z

.field private viewContext:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    .line 71
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .line 72
    sget-object v0, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    .line 80
    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->initStyles(Landroid/content/Context;)V

    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 5

    .line 365
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 367
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 368
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 369
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private dpToPx(F)F
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private drawHandles(Landroid/graphics/Canvas;)V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 189
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 191
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v0, v0

    .line 192
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawOutsideFallback(Landroid/graphics/Canvas;)V
    .locals 7

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawThirds(Landroid/graphics/Canvas;)V
    .locals 10

    .line 198
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    .line 200
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    .line 202
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v4, v2, v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v6, v2, v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    add-float v5, v2, v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v7, v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v8, v0, v1

    iget-object v9, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v1, v1, v3

    add-float v6, v0, v1

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v8, v0, v1

    iget-object v9, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initStyles(Landroid/content/Context;)V
    .locals 4

    .line 85
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/soundcloud/android/crop/R$attr;->cropImageStyle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 87
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    sget-object v1, Lcom/soundcloud/android/crop/R$styleable;->CropImageView:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    :try_start_0
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showThirds:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->showThirds:Z

    .line 90
    sget v0, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_highlightColor:I

    const v2, -0xcc4a1b

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    .line 92
    invoke-static {}, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->values()[Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    move-result-object v0

    sget v2, Lcom/soundcloud/android/crop/R$styleable;->CropImageView_showHandles:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private isClipPathSupported(Landroid/graphics/Canvas;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlineWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/HighlightView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 133
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 134
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 136
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 137
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->isClipPathSupported(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 141
    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawOutsideFallback(Landroid/graphics/Canvas;)V

    .line 146
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->showThirds:Z

    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawThirds(Landroid/graphics/Canvas;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    sget-object v1, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Always:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->handleMode:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    sget-object v1, Lcom/soundcloud/android/crop/HighlightView$HandleMode;->Changing:Lcom/soundcloud/android/crop/HighlightView$HandleMode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    sget-object v1, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->Grow:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_4

    .line 155
    :cond_3
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->drawHandles(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getHit(FF)I
    .locals 7

    .line 221
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 227
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 229
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    const/4 v3, 0x1

    .line 233
    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    if-eqz v1, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    .line 236
    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v2

    if-gez v6, :cond_3

    if-eqz v1, :cond_3

    or-int/lit8 v5, v5, 0x4

    .line 239
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    if-eqz v3, :cond_4

    or-int/lit8 v5, v5, 0x8

    .line 242
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    if-eqz v3, :cond_5

    or-int/lit8 v5, v5, 0x10

    :cond_5
    if-ne v5, v4, :cond_6

    float-to-int p1, p1

    float-to-int p2, p2

    .line 247
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v5, 0x20

    :cond_6
    return v5
.end method

.method public getScaledCropRect(F)Landroid/graphics/Rect;
    .locals 5

    .line 359
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float v1, v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    mul-float v3, v3, p1

    float-to-int v3, v3

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v4, p1

    float-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method growBy(FF)V
    .locals 5

    .line 301
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 303
    iget p2, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float p2, p1, p2

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 305
    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    mul-float p1, p1, p2

    .line 312
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_2

    .line 313
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v4, p1, v2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 314
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr p1, v3

    div-float/2addr p1, v2

    .line 315
    iget-boolean v3, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v3, :cond_2

    .line 316
    iget p2, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float p2, p1, p2

    :cond_2
    cmpl-float v3, p2, v1

    if-lez v3, :cond_3

    .line 319
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v4, p2, v2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 320
    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr p2, v3

    div-float/2addr p2, v2

    .line 321
    iget-boolean v3, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz v3, :cond_3

    .line 322
    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    mul-float p1, p1, p2

    :cond_3
    neg-float p1, p1

    neg-float p2, p2

    .line 326
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 330
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x41c80000    # 25.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 331
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float p1, p2, p1

    neg-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 333
    :cond_4
    iget-boolean p1, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    div-float/2addr p2, p1

    .line 336
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    .line 337
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 341
    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    .line 342
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 343
    :cond_7
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    .line 344
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 346
    :cond_8
    :goto_1
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 347
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 348
    :cond_9
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_a

    .line 349
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    neg-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 352
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 353
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 354
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method handleMotion(IFF)V
    .locals 3

    .line 256
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p2, p2, p1

    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    .line 260
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p3, p3, p1

    .line 259
    invoke-virtual {p0, p2, p3}, Lcom/soundcloud/android/crop/HighlightView;->moveBy(FF)V

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p1, 0x6

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 v1, p1, 0x18

    if-nez v1, :cond_2

    const/4 p3, 0x0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float p2, p2, v1

    .line 272
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float p3, p3, v1

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float v0, v0, p2

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_4

    const/4 v1, -0x1

    :cond_4
    int-to-float p1, v1

    mul-float p1, p1, p3

    .line 273
    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/HighlightView;->growBy(FF)V

    :goto_1
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/HighlightView;->isFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    return-void
.end method

.method moveBy(FF)V
    .locals 4

    .line 280
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 282
    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 285
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    .line 286
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 287
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 285
    invoke-virtual {p1, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 289
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v2

    .line 290
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v2, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    .line 291
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 289
    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 293
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 294
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 295
    iget p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    float-to-int p1, p1

    neg-int p1, p1

    iget p2, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    float-to-int p2, p2

    neg-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 296
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    .line 381
    iput-boolean p1, p0, Lcom/soundcloud/android/crop/HighlightView;->isFocused:Z

    return-void
.end method

.method public setMode(Lcom/soundcloud/android/crop/HighlightView$ModifyMode;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 214
    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    .line 215
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->viewContext:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V
    .locals 1

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/HighlightView;->matrix:Landroid/graphics/Matrix;

    .line 101
    iput-object p3, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->imageRect:Landroid/graphics/RectF;

    .line 103
    iput-boolean p4, p0, Lcom/soundcloud/android/crop/HighlightView;->maintainAspectRatio:Z

    .line 105
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/soundcloud/android/crop/HighlightView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/soundcloud/android/crop/HighlightView;->initialAspectRatio:F

    .line 106
    invoke-direct {p0}, Lcom/soundcloud/android/crop/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->drawRect:Landroid/graphics/Rect;

    .line 108
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outsidePaint:Landroid/graphics/Paint;

    const/16 p2, 0x32

    const/16 p3, 0x7d

    invoke-virtual {p1, p3, p2, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 109
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 111
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/soundcloud/android/crop/HighlightView;->outlineWidth:F

    .line 113
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/soundcloud/android/crop/HighlightView;->highlightColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 116
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/HighlightView;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/soundcloud/android/crop/HighlightView;->handleRadius:F

    .line 118
    sget-object p1, Lcom/soundcloud/android/crop/HighlightView$ModifyMode;->None:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    iput-object p1, p0, Lcom/soundcloud/android/crop/HighlightView;->modifyMode:Lcom/soundcloud/android/crop/HighlightView$ModifyMode;

    return-void
.end method
