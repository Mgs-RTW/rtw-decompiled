.class final Lcom/netease/ntunisdk/base/SdkBase$11;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->onKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lcom/netease/ntunisdk/base/PadEvent;

.field final synthetic d:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;IFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 6613
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->d:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->a:I

    iput p3, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->b:F

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->c:Lcom/netease/ntunisdk/base/PadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "UniSDK Base"

    .line 6616
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyPressure, current thread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6617
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->d:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->A(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnControllerListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->a:I

    iget v2, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->b:F

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$11;->c:Lcom/netease/ntunisdk/base/PadEvent;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/OnControllerListener;->onKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method
