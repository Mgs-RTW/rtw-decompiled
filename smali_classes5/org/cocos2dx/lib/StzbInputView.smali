.class public Lorg/cocos2dx/lib/StzbInputView;
.super Ljava/lang/Object;
.source "StzbInputView.java"


# static fields
.field private static final KeyboardHidden:I = 0x3

.field private static final KeyboardHiding:I = 0x2

.field private static final KeyboardShowing:I = 0x1

.field private static s_gameScale:F = 1.0f

.field private static s_inputView:Lorg/cocos2dx/lib/StzbInputView;

.field private static s_keyboardState:I

.field private static s_mainActivity:Landroid/app/Activity;


# instance fields
.field private curText:Ljava/lang/String;

.field private deltaHeight:I

.field private dialog:Landroid/app/Dialog;

.field private editText:Landroid/widget/EditText;

.field private fontName:Ljava/lang/String;

.field private fontSize:F

.field private initPosY:I

.field private isMultiline:Z

.field private keyboardShowing:Z

.field private lastOrientation:I

.field private layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lorg/cocos2dx/lib/StzbInputView;->deltaHeight:I

    .line 108
    new-instance v1, Landroid/app/Dialog;

    sget-object v2, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    .line 109
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 110
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x4000000

    .line 112
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const/16 v3, 0x400

    .line 113
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const/16 v3, 0x200

    .line 114
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 115
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    .line 117
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v4, 0x33

    .line 118
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 119
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 122
    invoke-direct {p0}, Lorg/cocos2dx/lib/StzbInputView;->setDisplayCutoutModeShortEdges()V

    .line 125
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    sget-object v3, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    iget-object v3, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    new-instance v3, Landroid/widget/EditText;

    sget-object v4, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    .line 129
    iget-object v3, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 132
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 133
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 134
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 138
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    new-instance v2, Lorg/cocos2dx/lib/StzbInputView$3;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/StzbInputView$3;-><init>(Lorg/cocos2dx/lib/StzbInputView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 148
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    new-instance v2, Lorg/cocos2dx/lib/StzbInputView$4;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/StzbInputView$4;-><init>(Lorg/cocos2dx/lib/StzbInputView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 163
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    new-instance v2, Lorg/cocos2dx/lib/StzbInputView$5;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/StzbInputView$5;-><init>(Lorg/cocos2dx/lib/StzbInputView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 176
    sget-object v1, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 179
    new-instance v3, Lorg/cocos2dx/lib/StzbInputView$6;

    invoke-direct {v3, p0, v1}, Lorg/cocos2dx/lib/StzbInputView$6;-><init>(Lorg/cocos2dx/lib/StzbInputView;Landroid/view/View;)V

    iput-object v3, p0, Lorg/cocos2dx/lib/StzbInputView;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 198
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 199
    iput-boolean v0, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    .line 201
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    new-instance v1, Lorg/cocos2dx/lib/StzbInputView$7;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/StzbInputView$7;-><init>(Lorg/cocos2dx/lib/StzbInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .line 45
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()F
    .locals 1

    .line 45
    sget v0, Lorg/cocos2dx/lib/StzbInputView;->s_gameScale:F

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lorg/cocos2dx/lib/StzbInputView;->onTextChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(F)F
    .locals 0

    .line 45
    sput p0, Lorg/cocos2dx/lib/StzbInputView;->s_gameScale:F

    return p0
.end method

.method static synthetic access$200()Lorg/cocos2dx/lib/StzbInputView;
    .locals 1

    .line 45
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_inputView:Lorg/cocos2dx/lib/StzbInputView;

    return-object v0
.end method

.method static synthetic access$202(Lorg/cocos2dx/lib/StzbInputView;)Lorg/cocos2dx/lib/StzbInputView;
    .locals 0

    .line 45
    sput-object p0, Lorg/cocos2dx/lib/StzbInputView;->s_inputView:Lorg/cocos2dx/lib/StzbInputView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/StzbInputView;IIII)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/StzbInputView;->show(IIII)V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0

    .line 45
    sput p0, Lorg/cocos2dx/lib/StzbInputView;->s_keyboardState:I

    return p0
.end method

.method static synthetic access$500(Lorg/cocos2dx/lib/StzbInputView;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lorg/cocos2dx/lib/StzbInputView;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/StzbInputView;->doKeyboardShow(II)V

    return-void
.end method

.method static synthetic access$700(Lorg/cocos2dx/lib/StzbInputView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/cocos2dx/lib/StzbInputView;->doKeyboardHide()V

    return-void
.end method

.method static synthetic access$800(Lorg/cocos2dx/lib/StzbInputView;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/cocos2dx/lib/StzbInputView;->lastOrientation:I

    return p0
.end method

.method static synthetic access$900()V
    .locals 0

    .line 45
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->onTextSend()V

    return-void
.end method

.method public static close()V
    .locals 2

    const-string v0, "StzbInputView"

    const-string v1, "inputView close"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    new-instance v1, Lorg/cocos2dx/lib/StzbInputView$2;

    invoke-direct {v1}, Lorg/cocos2dx/lib/StzbInputView$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doKeyboardHide()V
    .locals 3

    const-string v0, "StzbInputView"

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doKeyboardHide  begin  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StzbInputView"

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doKeyboardHide   deltaHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/cocos2dx/lib/StzbInputView;->deltaHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/cocos2dx/lib/StzbInputView;->s_gameScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-boolean v0, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    if-eqz v0, :cond_1

    .line 426
    iget v0, p0, Lorg/cocos2dx/lib/StzbInputView;->deltaHeight:I

    if-lez v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 430
    iget v2, p0, Lorg/cocos2dx/lib/StzbInputView;->initPosY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    .line 434
    iget v0, p0, Lorg/cocos2dx/lib/StzbInputView;->deltaHeight:I

    int-to-float v0, v0

    sget v1, Lorg/cocos2dx/lib/StzbInputView;->s_gameScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lorg/cocos2dx/lib/StzbInputView;->onKeyboardHide(I)V

    :cond_1
    return-void
.end method

.method private doKeyboardShow(II)V
    .locals 5

    const-string v0, "StzbInputView"

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doKeyboardShow  begin keyboardShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-boolean v0, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    .line 405
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 408
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v3, v4

    sub-int v4, p1, p2

    if-le v3, v4, :cond_0

    .line 410
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    .line 411
    iget v3, p0, Lorg/cocos2dx/lib/StzbInputView;->initPosY:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 412
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 414
    :cond_0
    iput v2, p0, Lorg/cocos2dx/lib/StzbInputView;->deltaHeight:I

    const-string v0, "StzbInputView"

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyboardShow 1111: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lorg/cocos2dx/lib/StzbInputView;->s_gameScale:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p1, p2

    .line 416
    sget p2, Lorg/cocos2dx/lib/StzbInputView;->s_gameScale:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lorg/cocos2dx/lib/StzbInputView;->deltaHeight:I

    int-to-float p2, p2

    sget v0, Lorg/cocos2dx/lib/StzbInputView;->s_gameScale:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p1, p2}, Lorg/cocos2dx/lib/StzbInputView;->onKeyboardShow(II)V

    :cond_1
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0

    .line 62
    sput-object p0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    return-void
.end method

.method private static native onKeyboardHide(I)V
.end method

.method private static native onKeyboardShow(II)V
.end method

.method private static native onTextChange(Ljava/lang/String;)V
.end method

.method private static native onTextInsert(Ljava/lang/String;)V
.end method

.method private static native onTextSend()V
.end method

.method private static native onViewDestroy()V
.end method

.method public static open(FFLjava/lang/String;IIIILjava/lang/String;IIFZLjava/lang/String;IIIZ)V
    .locals 21

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v3, p10

    move/from16 v9, p11

    move-object/from16 v8, p12

    move/from16 v11, p13

    move/from16 v12, p14

    move/from16 v10, p15

    move/from16 v13, p16

    .line 68
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    move/from16 v18, v1

    new-instance v1, Lorg/cocos2dx/lib/StzbInputView$1;

    move-object/from16 v19, v0

    move-object v0, v1

    move-object/from16 v20, v1

    move/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lorg/cocos2dx/lib/StzbInputView$1;-><init>(FFFLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZIIIZIIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDisplayCutoutModeShortEdges()V
    .locals 6

    const-string v0, "NeoX"

    const-string v1, "setDisplayCutoutModeShortEdges"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StzbInputView"

    const-string v1, "setDisplayCutoutModeShortEdges"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Build.VERSION.SDK_INT"

    const-string v1, "%d"

    const/4 v2, 0x1

    .line 226
    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "layoutInDisplayCutoutMode"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 233
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const-string v0, "NeoX"

    const-string v1, "finish setDisplayCutoutModeShortEdges"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 237
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NeoX"

    const-string v1, "setDisplayCutoutModeShortEdges failed"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    const-string v1, "NeoX"

    const-string v2, "finish setDisplayCutoutModeShortEdges"

    .line 240
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    throw v0
.end method

.method private show(IIII)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "StzbInputView"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show  begin left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lorg/cocos2dx/lib/StzbInputView;->lastOrientation:I

    .line 251
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 252
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 256
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 258
    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 259
    iput p4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string p1, "StzbInputView"

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lp: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x0

    .line 262
    invoke-virtual {v1, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 263
    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p0, Lorg/cocos2dx/lib/StzbInputView;->initPosY:I

    .line 264
    iget-object p2, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 265
    iput-boolean p1, p0, Lorg/cocos2dx/lib/StzbInputView;->keyboardShowing:Z

    .line 266
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    iget-object p2, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 267
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 268
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 269
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 270
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public addTextChangeWatcher()V
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    new-instance v1, Lorg/cocos2dx/lib/StzbInputView$9;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/StzbInputView$9;-><init>(Lorg/cocos2dx/lib/StzbInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    .line 518
    invoke-virtual {p0}, Lorg/cocos2dx/lib/StzbInputView;->onDestroy()V

    .line 520
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 443
    invoke-direct {p0}, Lorg/cocos2dx/lib/StzbInputView;->doKeyboardHide()V

    .line 444
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 446
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 447
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 448
    iget-object v2, p0, Lorg/cocos2dx/lib/StzbInputView;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v2, p0, Lorg/cocos2dx/lib/StzbInputView;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 451
    :goto_0
    iput-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 453
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->onViewDestroy()V

    .line 454
    iput-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x2

    .line 458
    sput v0, Lorg/cocos2dx/lib/StzbInputView;->s_keyboardState:I

    .line 511
    :cond_2
    sput-object v1, Lorg/cocos2dx/lib/StzbInputView;->s_inputView:Lorg/cocos2dx/lib/StzbInputView;

    return-void
.end method

.method public setActionId(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    return-void

    .line 323
    :cond_1
    iget-object p1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    new-instance v0, Lorg/cocos2dx/lib/StzbInputView$8;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/StzbInputView$8;-><init>(Lorg/cocos2dx/lib/StzbInputView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setAlign(II)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 348
    :goto_0
    iget-boolean v2, p0, Lorg/cocos2dx/lib/StzbInputView;->isMultiline:Z

    if-eqz v2, :cond_5

    if-nez p2, :cond_3

    or-int/lit8 p1, p1, 0x30

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_4

    or-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_4
    if-ne p2, v0, :cond_6

    or-int/lit8 p1, p1, 0x50

    goto :goto_1

    :cond_5
    or-int/lit8 p1, p1, 0x10

    .line 364
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public setFontColor(II)V
    .locals 0

    shl-int/lit8 p2, p2, 0x18

    add-int/2addr p1, p2

    .line 295
    iget-object p2, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView;->fontName:Ljava/lang/String;

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    .line 286
    iput p1, p0, Lorg/cocos2dx/lib/StzbInputView;->fontSize:F

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNumberKeyboard(Z)V
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 3

    .line 307
    iput-boolean p1, p0, Lorg/cocos2dx/lib/StzbInputView;->isMultiline:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 309
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateFont()V
    .locals 3

    .line 368
    iget-object v0, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    iget v1, p0, Lorg/cocos2dx/lib/StzbInputView;->fontSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 371
    sget-object v0, Lorg/cocos2dx/lib/StzbInputView;->s_mainActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->fontName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
