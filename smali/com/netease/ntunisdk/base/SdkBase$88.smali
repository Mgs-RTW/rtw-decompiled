.class final Lcom/netease/ntunisdk/base/SdkBase$88;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->continueDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 2968
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2971
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$88;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->m(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnContinueListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnContinueListener;->continueGame()V

    return-void
.end method
