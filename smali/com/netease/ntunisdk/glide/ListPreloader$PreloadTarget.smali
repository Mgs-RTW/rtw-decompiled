.class final Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreloadTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/request/target/Target<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field photoHeight:I

.field photoWidth:I

.field private request:Lcom/netease/ntunisdk/glide/request/Request;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/netease/ntunisdk/glide/request/Request;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;->request:Lcom/netease/ntunisdk/glide/request/Request;

    return-object v0
.end method

.method public getSize(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V
    .locals 2

    .line 281
    iget v0, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;->photoWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;->photoHeight:I

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/transition/Transition<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/netease/ntunisdk/glide/request/target/SizeReadyCallback;)V
    .locals 0

    return-void
.end method

.method public setRequest(Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/ListPreloader$PreloadTarget;->request:Lcom/netease/ntunisdk/glide/request/Request;

    return-void
.end method
