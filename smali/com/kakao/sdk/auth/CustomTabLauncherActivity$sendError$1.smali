.class final synthetic Lcom/kakao/sdk/auth/CustomTabLauncherActivity$sendError$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "CustomTabLauncherActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$sendError$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    .line 131
    invoke-static {v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->access$getResultReceiver$p(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "resultReceiver"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getResultReceiver()Landroid/os/ResultReceiver;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$sendError$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;

    .line 131
    check-cast p1, Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->access$setResultReceiver$p(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Landroid/os/ResultReceiver;)V

    return-void
.end method
