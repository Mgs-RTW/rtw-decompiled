.class final Lcom/netease/ntunisdk/base/SdkBase$151;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->sendLocalNotificationFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 5823
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$151;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$151;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "UniSDK Base"

    .line 5826
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSendLocalNotificationFinished, current thread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5827
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$151;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->w(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnPushListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$151;->a:I

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/OnPushListener;->onSendLocalNotificationFinished(I)V

    return-void
.end method
