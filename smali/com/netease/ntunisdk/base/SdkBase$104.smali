.class final Lcom/netease/ntunisdk/base/SdkBase$104;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->a(ILcom/netease/ntunisdk/base/OnFinishInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:Lcom/netease/ntunisdk/base/OnFinishInitListener;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 0

    .line 4421
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->c:Lcom/netease/ntunisdk/base/OnFinishInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishInit(I)V
    .locals 3

    .line 4425
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->c(Lcom/netease/ntunisdk/base/SdkBase;J)J

    const-string v0, "UniSDK Base"

    .line 4426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ntInit code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4430
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v1, 0x7

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 4428
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const/16 v1, 0x25

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getDetectData(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/lang/String;)V

    .line 4432
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/base/SdkBase;->hasInit:Z

    .line 4433
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$104;->c:Lcom/netease/ntunisdk/base/OnFinishInitListener;

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OnFinishInitListener;I)V

    return-void
.end method
