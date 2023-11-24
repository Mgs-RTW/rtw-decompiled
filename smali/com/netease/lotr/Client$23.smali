.class Lcom/netease/lotr/Client$23;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Client;->setBrightness(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Client;

.field final synthetic val$b:F


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;F)V
    .locals 0

    .line 2498
    iput-object p1, p0, Lcom/netease/lotr/Client$23;->this$0:Lcom/netease/lotr/Client;

    iput p2, p0, Lcom/netease/lotr/Client$23;->val$b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "setBrightness"

    const-string v1, "%f"

    const/4 v2, 0x1

    .line 2502
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/netease/lotr/Client$23;->val$b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    iget v0, p0, Lcom/netease/lotr/Client$23;->val$b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/netease/lotr/Client$23;->this$0:Lcom/netease/lotr/Client;

    invoke-virtual {v0}, Lcom/netease/lotr/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2509
    iget-object v0, p0, Lcom/netease/lotr/Client$23;->this$0:Lcom/netease/lotr/Client;

    invoke-virtual {v0}, Lcom/netease/lotr/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/netease/lotr/Client$23;->val$b:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Client$23;->this$0:Lcom/netease/lotr/Client;

    invoke-virtual {v0}, Lcom/netease/lotr/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
