.class Lcom/netease/lotr/ScreenShotObserver$1;
.super Ljava/lang/Object;
.source "ScreenShotObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/ScreenShotObserver;->onScreenShot(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/ScreenShotObserver;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/netease/lotr/ScreenShotObserver;II)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/netease/lotr/ScreenShotObserver$1;->this$0:Lcom/netease/lotr/ScreenShotObserver;

    iput p2, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$width:I

    iput p3, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 269
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "screenShot"

    const-string v2, "1"

    .line 270
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "width"

    .line 271
    iget v2, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 272
    iget v2, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "STZB_NEOX"

    const-string v1, ">>>>>>>>>>>>>>>>>>>>> Screen shot detected, width: %d, height: %d"

    const/4 v2, 0x2

    .line 273
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/netease/lotr/ScreenShotObserver$1;->this$0:Lcom/netease/lotr/ScreenShotObserver;

    invoke-static {v0}, Lcom/netease/lotr/ScreenShotObserver;->access$000(Lcom/netease/lotr/ScreenShotObserver;)Lcom/netease/lotr/IScreenShotListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$width:I

    iget v2, p0, Lcom/netease/lotr/ScreenShotObserver$1;->val$height:I

    invoke-interface {v0, v1, v2}, Lcom/netease/lotr/IScreenShotListener;->onScreenShot(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
