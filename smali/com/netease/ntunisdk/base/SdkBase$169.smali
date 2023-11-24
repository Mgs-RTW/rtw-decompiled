.class final Lcom/netease/ntunisdk/base/SdkBase$169;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 9114
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->a:J

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->c:Ljava/lang/String;

    iput p5, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->d:I

    iput p6, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->e:I

    iput-object p7, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "UniSDK Base"

    .line 9117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cur thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",ui thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9118
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9119
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 9120
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->c:Ljava/lang/String;

    iget v3, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->d:I

    iget v4, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->e:I

    iget-object v5, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/netease/ntunisdk/base/SdkBase;->createQRCode(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 9122
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->c:Ljava/lang/String;

    iget v2, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->d:I

    iget v3, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->e:I

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase$169;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->createQRCode(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
