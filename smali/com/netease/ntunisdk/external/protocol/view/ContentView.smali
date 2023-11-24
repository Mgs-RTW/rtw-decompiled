.class public Lcom/netease/ntunisdk/external/protocol/view/ContentView;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;


# static fields
.field public static final BOTTOM_ONE_BUTTON:I = 0x1

.field public static final BOTTOM_TWO_BUTTON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContentView"

.field private static final TEXT_PAINT_SIZE:I = 0xd


# instance fields
.field private mContentText:Landroid/text/Spanned;

.field private mContentTextLength:I

.field private mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

.field private mCurPage:I

.field private mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

.field private mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

.field private mHasNextPage:Z

.field private mInitPageFlag:Z

.field private mIsSubProtocol:Z

.field private mLeftPageBtn:Landroid/widget/ImageView;

.field private mPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPageTextView:Landroid/widget/TextView;

.field private mParent:Ljava/lang/String;

.field private mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

.field private mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

.field private mProtocolType:I

.field private mRightPageBtn:Landroid/widget/ImageView;

.field private mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

.field private mShowedFirstCharPos:I

.field private mShowedLastCharPos:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextViewHeight:I

.field private mTextViewWidth:I

.field private mTotalPage:I

.field private mUrlSpans:[Landroid/text/style/URLSpan;

.field private mView:Landroid/view/View;

.field private mViewStyle:I

.field private pageLine:I

.field private unShowWholeLayout:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 58
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    .line 82
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 83
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    .line 84
    iput p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolType:I

    .line 85
    iput-boolean p5, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mIsSubProtocol:Z

    .line 86
    iput-object p4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 87
    iput-object p7, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mUrlSpans:[Landroid/text/style/URLSpan;

    .line 88
    iput-object p6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    .line 89
    iput-object p8, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    .line 90
    iput p9, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mViewStyle:I

    .line 91
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->resetParams()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mIsSubProtocol:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->initTextPage()V

    return-void
.end method

.method private crateTextPage()Landroid/text/StaticLayout;
    .locals 11

    .line 456
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    if-nez v0, :cond_6

    .line 458
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    .line 460
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewHeight:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageLine ==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentView"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 463
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 465
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    .line 469
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 470
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    mul-int v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 475
    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    if-lt v0, v2, :cond_3

    .line 476
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    goto :goto_0

    .line 478
    :cond_3
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-direct {p0, v3, v0, v2}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    .line 480
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    goto :goto_0

    .line 482
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    goto :goto_0

    :cond_5
    const-string v2, "\n"

    const-string v3, ""

    .line 486
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    :cond_6
    :goto_0
    const/4 v0, -0x1

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    mul-int v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v0, :cond_7

    .line 501
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    if-gt v1, v0, :cond_7

    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    if-ne v0, v2, :cond_8

    .line 502
    :cond_7
    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    .line 506
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 508
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 510
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    return-object v0
.end method

.method private getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 541
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private hasNextPage()Z
    .locals 5

    .line 518
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    const/4 v2, 0x0

    const-string v3, "ContentView"

    if-lt v0, v1, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowedLastCharPos ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    return v2

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-direct {p0, v4, v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 525
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const-string v0, "unShowWholeText is empty"

    .line 526
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    return v2
.end method

.method private initTextPage()V
    .locals 5

    .line 286
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    .line 291
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    .line 293
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    const-string v2, "#23b260"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    const/high16 v1, 0x41500000    # 13.0f

    .line 295
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    iget v2, v2, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDensity:F

    mul-float v2, v2, v1

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ContentView"

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 300
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    .line 301
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewHeight:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 302
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "textSize:%f,mTextViewWidth = %d,mTextViewHeight = %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    .line 305
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->crateTextPage()Landroid/text/StaticLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->setLayout(Landroid/text/StaticLayout;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->hasNextPage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    .line 311
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->updatePageText()V

    .line 312
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 546
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private updatePageText()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewStyle()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mViewStyle:I

    return v0
.end method

.method public isSubProtocol()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mIsSubProtocol:Z

    return v0
.end method

.method public nextPage()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    .line 420
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->updatePageText()V

    const/4 v0, 0x0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 426
    :catch_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->crateTextPage()Landroid/text/StaticLayout;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 431
    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    .line 432
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->setLayout(Landroid/text/StaticLayout;)V

    .line 436
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    const/4 v1, 0x4

    if-lez v0, :cond_2

    .line 437
    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    if-ne v2, v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 442
    :cond_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->hasNextPage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    .line 443
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    if-nez v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    :cond_3
    :goto_1
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 451
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)Landroid/view/View;
    .locals 10

    .line 117
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    .line 118
    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string p3, "uni_p_view"

    const-string v0, "layout"

    invoke-direct {p0, p1, p3, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 121
    iget p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolType:I

    const-string v0, "drawable"

    const-string v1, "uni_p_logo_iv"

    const/4 v2, 0x1

    const-string v3, "id"

    if-ne v2, p3, :cond_0

    .line 123
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v1, "unisdk_protocol_logo_long"

    .line 124
    invoke-direct {p0, p1, v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v4, p3, :cond_1

    .line 127
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v1, "unisdk_protocol_logo_envoy"

    .line 128
    invoke-direct {p0, p1, v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-object p3, p3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->globalInfo:Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    const-string v0, "uni_p_reject_btn"

    const-string v1, "uni_p_accept_btn"

    const-string v4, "uni_p_confirm_btn"

    if-eqz p3, :cond_4

    .line 154
    iget-object v5, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    invoke-direct {p0, p1, v4, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 156
    iget-object v6, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_2
    iget-object v5, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 161
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 162
    iget-object v6, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_3
    iget-object v5, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    invoke-direct {p0, p1, v0, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 168
    iget-object p3, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_4
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getShowAgreeLineFlag()Ljava/lang/String;

    move-result-object p3

    const-string v5, "1"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v5, 0x0

    if-eqz p3, :cond_5

    .line 174
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getAgreeLineText()Ljava/lang/String;

    move-result-object p3

    .line 175
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "protocol_agree_tv"

    .line 176
    invoke-direct {p0, p1, v6, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 178
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_5
    iget p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mViewStyle:I

    const-string v6, "uni_p_reject_ll"

    const-string v7, "uni_p_accept_ll"

    const-string v8, "uni_p_confirm_ll"

    const/16 v9, 0x8

    if-ne p3, v2, :cond_6

    .line 187
    invoke-direct {p0, p1, v8, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-direct {p0, p1, v7, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-direct {p0, p1, v6, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-direct {p0, p1, v4, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 191
    invoke-virtual {p3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 211
    :cond_6
    invoke-direct {p0, p1, v8, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 212
    invoke-direct {p0, p1, v7, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-direct {p0, p1, v6, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 215
    invoke-direct {p0, p1, v0, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 216
    invoke-virtual {p3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/view/ContentView$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$2;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    new-instance p3, Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;

    invoke-direct {p3, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const-string p3, "uni_p_page_tv"

    .line 237
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageTextView:Landroid/widget/TextView;

    const-string p3, "uni_p_left_btn"

    .line 238
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    .line 239
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$4;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$4;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p3, "uni_p_right_btn"

    .line 245
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    .line 246
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$5;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$5;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p3, "uni_p_tv"

    .line 254
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    .line 255
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->addOnPageListener(Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;)V

    .line 257
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 258
    new-instance p3, Lcom/netease/ntunisdk/external/protocol/view/ContentView$6;

    invoke-direct {p3, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$6;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 266
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mView:Landroid/view/View;

    return-object p2
.end method

.method public openLink(I)V
    .locals 10

    .line 365
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mUrlSpans:[Landroid/text/style/URLSpan;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 368
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    add-int/2addr v0, p1

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wholeOff  = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ContentView"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 376
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mUrlSpans:[Landroid/text/style/URLSpan;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 377
    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 378
    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spanStart  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spanEnd  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v0, v6, :cond_2

    if-gt v0, v7, :cond_2

    move-object p1, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    .line 387
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->findProtocolByUrl(Ljava/lang/String;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 396
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    if-eqz v1, :cond_7

    .line 397
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 398
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->back(Ljava/lang/String;)V

    goto :goto_2

    .line 400
    :cond_5
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->next(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;I)V

    goto :goto_2

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    if-eqz v0, :cond_7

    .line 406
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->openBrowser(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public prePage()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    .line 333
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->updatePageText()V

    const/4 v0, 0x0

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 341
    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    .line 342
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->setLayout(Landroid/text/StaticLayout;)V

    .line 346
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    if-ne v0, v1, :cond_2

    .line 348
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    :cond_2
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    if-lez v0, :cond_3

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public resetParams()V
    .locals 2

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    .line 96
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 97
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    const/4 v1, 0x1

    .line 98
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    .line 99
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    .line 100
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    .line 101
    iput-boolean v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    .line 102
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    .line 108
    :cond_0
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    return-void
.end method
