.class final Lcom/netease/ntunisdk/base/SdkBase$69;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->verifyDone(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;ZILjava/lang/String;)V
    .locals 0

    .line 8202
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->a:Z

    iput p3, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->b:I

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "UniSDK Base"

    .line 8205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verifyDone, current thread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8206
    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->a:Z

    if-eqz v0, :cond_0

    .line 8207
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->D(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnVerifyListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->b:I

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnVerifyListener;->onSuccess(ILjava/lang/String;)V

    return-void

    .line 8209
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->D(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnVerifyListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->b:I

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$69;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnVerifyListener;->onFailure(ILjava/lang/String;)V

    return-void
.end method
