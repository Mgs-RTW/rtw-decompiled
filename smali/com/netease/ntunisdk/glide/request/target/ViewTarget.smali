.class public abstract Lcom/netease/ntunisdk/glide/request/target/ViewTarget;
.super Lcom/netease/ntunisdk/glide/request/target/BaseTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/ntunisdk/glide/request/target/BaseTarget<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTarget"

.field private static isTagUsedAtLeastOnce:Z

.field private static tagId:I


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private final sizeDeterminer:Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget v0, Lcom/netease/glide/R$id;->glide_custom_view_target_tag:I

    sput v0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->tagId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/target/BaseTarget;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/netease/ntunisdk/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->waitForLayout()Lcom/netease/ntunisdk/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget v1, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->tagId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private maybeAddAttachStateListener()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeRemoveAttachStateListener()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isAttachStateListenerAdded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setTag(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 283
    sput-boolean v0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 284
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget v1, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->tagId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setTagId(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    sget-boolean v0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    if-nez v0, :cond_0

    .line 317
    sput p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->tagId:I

    return-void

    .line 313
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearOnDetach()Lcom/netease/ntunisdk/glide/request/target/ViewTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/request/target/ViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    return-object p0

    .line 113
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$1;-><init>(Lcom/netease/ntunisdk/glide/request/target/ViewTarget;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 125
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    return-object p0
.end method

.method public getRequest()Lcom/netease/ntunisdk/glide/request/Request;
    .locals 2

    .line 264
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    instance-of v1, v0, Lcom/netease/ntunisdk/glide/request/Request;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Lcom/netease/ntunisdk/glide/request/Request;

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSize(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;->getSize(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->view:Landroid/view/View;

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/glide/request/target/BaseTarget;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    .line 235
    iget-boolean p1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isClearedByUs:Z

    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->maybeRemoveAttachStateListener()V

    :cond_0
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/glide/request/target/BaseTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->maybeAddAttachStateListener()V

    return-void
.end method

.method pauseMyRequest()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->getRequest()Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isClearedByUs:Z

    .line 146
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->isClearedByUs:Z

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;->removeCallback(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method resumeMyRequest()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->getRequest()Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/request/Request;->isCleared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/request/Request;->begin()V

    :cond_0
    return-void
.end method

.method public setRequest(Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final waitForLayout()Lcom/netease/ntunisdk/glide/request/target/ViewTarget;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/request/target/ViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/glide/request/target/ViewTarget$SizeDeterminer;->waitForLayout:Z

    return-object p0
.end method
