.class final Lcom/netease/ntunisdk/base/SdkBase$103$1;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase$103;->finishInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase$103;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase$103;)V
    .locals 0

    .line 4405
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$103$1;->a:Lcom/netease/ntunisdk/base/SdkBase$103;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickSplash()V
    .locals 1

    .line 4408
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$103$1;->a:Lcom/netease/ntunisdk/base/SdkBase$103;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase$103;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->onClickSplashDone()V

    return-void
.end method
