.class public abstract Lcom/netease/push/utils/ApplicationLifeListener;
.super Ljava/lang/Object;
.source "ApplicationLifeListener.java"


# instance fields
.field private callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mActiveNums:I

.field private mFrontNums:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mFrontNums:I

    .line 9
    iput v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mActiveNums:I

    .line 10
    new-instance v0, Lcom/netease/push/utils/ApplicationLifeListener$1;

    invoke-direct {v0, p0}, Lcom/netease/push/utils/ApplicationLifeListener$1;-><init>(Lcom/netease/push/utils/ApplicationLifeListener;)V

    iput-object v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/push/utils/ApplicationLifeListener;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mActiveNums:I

    return p0
.end method

.method static synthetic access$008(Lcom/netease/push/utils/ApplicationLifeListener;)I
    .locals 2

    .line 7
    iget v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mActiveNums:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mActiveNums:I

    return v0
.end method

.method static synthetic access$010(Lcom/netease/push/utils/ApplicationLifeListener;)I
    .locals 2

    .line 7
    iget v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mActiveNums:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mActiveNums:I

    return v0
.end method

.method static synthetic access$100(Lcom/netease/push/utils/ApplicationLifeListener;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mFrontNums:I

    return p0
.end method

.method static synthetic access$108(Lcom/netease/push/utils/ApplicationLifeListener;)I
    .locals 2

    .line 7
    iget v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mFrontNums:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mFrontNums:I

    return v0
.end method

.method static synthetic access$110(Lcom/netease/push/utils/ApplicationLifeListener;)I
    .locals 2

    .line 7
    iget v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mFrontNums:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netease/push/utils/ApplicationLifeListener;->mFrontNums:I

    return v0
.end method


# virtual methods
.method public abstract onEnterBackground()V
.end method

.method public abstract onEnterFront()V
.end method

.method public abstract onExit()V
.end method

.method public registerLifecycleCallback(Landroid/app/Application;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unRegisterLifecycleCallback(Landroid/app/Application;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/netease/push/utils/ApplicationLifeListener;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
