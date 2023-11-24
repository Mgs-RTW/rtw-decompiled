.class final Lcom/netease/ntunisdk/base/SdkBase$39;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntSetUsePushNotification(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V
    .locals 0

    .line 7417
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 7420
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/base/SdkBase$39;->b:Z

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setUsePushNotification(Z)V

    return-void
.end method
