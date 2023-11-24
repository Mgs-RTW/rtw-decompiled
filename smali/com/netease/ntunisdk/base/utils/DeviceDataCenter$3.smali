.class Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initDeviceInfos(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;Lcom/netease/ntunisdk/base/GamerInterface;)V
    .locals 0

    .line 2452
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [initDeviceInfos] thread start"

    .line 2456
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->detect(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "DataCenter"

    .line 2461
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [initDeviceInfos] mIsEmulator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V

    .line 2465
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2466
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2467
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v2, "DEVICE_INFO_MANUFACTURER"

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2471
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2472
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_MODEL"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v2, "DEVICE_INFO_RELEASE"

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v2, "DEVICE_INFO_SDK_INT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2479
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2480
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_TOTAL_MEMORY"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v3, v1

    if-eqz v5, :cond_3

    .line 2485
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_FREE_MEMORY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2489
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2490
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_TOTAL_INTERNAL_MEMORY"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    :cond_4
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v3, v1

    if-eqz v5, :cond_5

    .line 2495
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_AVAILABLE_INTERNAL_MEMORY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    :cond_5
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2499
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2500
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_FINGERPRINT"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    :cond_6
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2504
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2505
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_ROM_VERSION"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    :cond_7
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknow"

    .line 2509
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2510
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_ARCH_TYPE"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    :cond_8
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2514
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2515
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_CPU_TYPE"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    :cond_9
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_a

    .line 2520
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_CPU_CORES_COUNT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    :cond_a
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I

    move-result v1

    if-eq v2, v1, :cond_b

    .line 2525
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_CPU_MIN_FREQ_KHZ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    :cond_b
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$1900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I

    move-result v1

    if-eq v2, v1, :cond_c

    .line 2530
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_CPU_MAX_FREQ_KHZ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    :cond_c
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->detect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I

    move-result v1

    const/16 v3, 0x15

    if-lt v1, v3, :cond_f

    .line 2535
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknow"

    .line 2536
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2537
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_SUPPORTED_ABIS"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    :cond_d
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknow"

    .line 2541
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2542
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_SUPPORTED_32_BIT_ABIS"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    :cond_e
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknow"

    .line 2546
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2547
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_SUPPORTED_64_BIT_ABIS"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    :cond_f
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknow"

    .line 2552
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2553
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_BOARD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    :cond_10
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_RO_BOARD_PLATFORM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_HARDWARE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v5}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknow"

    .line 2565
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2566
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_SCREEN_RESOLUTION"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    :cond_11
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknow"

    .line 2570
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2571
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_SCREEN_INCH"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    :cond_12
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)I

    move-result v1

    if-ne v2, v1, :cond_13

    .line 2576
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_SCREEN_DPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    :cond_13
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$2900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2580
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2581
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_SCREEN_PIXEL"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    :cond_14
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2585
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2586
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_XDPI_YDPI"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    :cond_15
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2590
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2591
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_ROOT"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    :cond_16
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2595
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2596
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    :cond_17
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2600
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2601
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    :cond_18
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2607
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2608
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    :cond_19
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2612
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2613
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    :cond_1a
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2617
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2618
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    :cond_1b
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2622
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2623
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    :cond_1c
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2627
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2628
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    :cond_1d
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$3900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2632
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2633
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    :cond_1e
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2637
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2638
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    :cond_1f
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2642
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2643
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    :cond_20
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2647
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2648
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    :cond_21
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2652
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 2653
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    :cond_22
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2657
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 2658
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    :cond_23
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2662
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2663
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    :cond_24
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2667
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2668
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    :cond_25
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2672
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 2673
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    :cond_26
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2677
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2678
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    :cond_27
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$4900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2682
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2683
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    :cond_28
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2687
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 2688
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    :cond_29
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2692
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2693
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    :cond_2a
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2697
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2698
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    :cond_2b
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2702
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2703
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    :cond_2c
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2707
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2708
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    :cond_2d
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2712
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 2713
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    :cond_2e
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2717
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2718
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    :cond_2f
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknow"

    .line 2722
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2723
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v3, "DEVICE_INFO_GL_RENDERER"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    :cond_30
    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknow"

    .line 2727
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2728
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "DEVICE_INFO_GL_VENDOR"

    invoke-interface {v3, v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    :cond_31
    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$5900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unknow"

    .line 2732
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2733
    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v5, "DEVICE_INFO_GL_VERSION"

    invoke-interface {v4, v5, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    const-string v4, "DataCenter"

    .line 2736
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [initDeviceInfos] glRenderer="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", glVendor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", glVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v0, :cond_34

    const-string v5, "unknow"

    .line 2741
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "unknow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "unknow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_33
    const-string v1, "DataCenter"

    const-string v2, "DataCenter [initDeviceInfos] gl infol error, reset gl info"

    .line 2742
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$6000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V

    goto :goto_0

    :cond_34
    const-string v1, "DataCenter"

    const-string v2, "DataCenter [initDeviceInfos] finish"

    .line 2746
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    const-string v2, "init success"

    invoke-static {v1, v4, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->access$200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;ILjava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_35

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [initDeviceInfos] dont call getDevicePerformanceScore, call extendFuncCall device_performance_score"

    .line 2752
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "device_performance_score"

    .line 2758
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 2759
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cpu"

    const-string v2, "VM"

    .line 2760
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "score"

    const-string v2, "0"

    .line 2761
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "score_range"

    const-string v2, "0:6200"

    .line 2762
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v2, "success"

    .line 2763
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2764
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->val$sdkMgr:Lcom/netease/ntunisdk/base/GamerInterface;

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DataCenter"

    .line 2767
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getDevicePerformanceScore] Exception2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 2772
    :cond_35
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;->this$0:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDevicePerformanceScore()V

    return-void
.end method
