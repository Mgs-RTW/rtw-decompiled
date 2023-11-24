.class public Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;
.super Ljava/lang/Object;
.source "DeviceDataCenter.java"


# static fields
.field private static final CACHE_FILE_NAME:Ljava/lang/String; = "unisdk_devices_infos_file"

.field private static final CPU_ARCHITECTURE_KEY_64:Ljava/lang/String; = "ro.product.cpu.abilist64"

.field private static final CPU_ARCHITECTURE_TYPE_32:Ljava/lang/String; = "32"

.field private static final CPU_ARCHITECTURE_TYPE_64:Ljava/lang/String; = "64"

.field private static final EI_CLASS:I = 0x4

.field private static final ELFCLASS32:I = 0x1

.field private static final ELFCLASS64:I = 0x2

.field private static final PROC_CPU_INFO_PATH:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final PROC_MEM_INFO_PATH:Ljava/lang/String; = "/proc/meminfo"

.field private static final SYM_DEVICES_SYSTEM_CPU:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final SYSTEM_BIN_SU:Ljava/lang/String; = "/system/bin/su"

.field private static final SYSTEM_LIB_C_PATH:Ljava/lang/String; = "/system/lib/libc.so"

.field private static final SYSTEM_LIB_C_PATH_64:Ljava/lang/String; = "/system/lib64/libc.so"

.field private static final TAG:Ljava/lang/String; = "DataCenter"

.field private static sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;


# instance fields
.field private CPU_FILTER:Ljava/io/FileFilter;

.field private final UNKNOW:Ljava/lang/String;

.field private mGlView:Landroid/opengl/GLSurfaceView;

.field private mHasInit:Z

.field private mHasPostData:Ljava/lang/String;

.field private mInitSuccess:Z

.field private mPostDataInInit:Z

.field private mSensorsInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroup:Landroid/view/ViewGroup;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasInit:Z

    .line 92
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mInitSuccess:Z

    const-string v1, "0"

    .line 94
    iput-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    .line 98
    iput-boolean v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    const-string v0, "unknow"

    .line 100
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->UNKNOW:Ljava/lang/String;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mViewGroup:Landroid/view/ViewGroup;

    .line 104
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mGlView:Landroid/opengl/GLSurfaceView;

    .line 666
    new-instance v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$1;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mGlView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mGlView:Landroid/opengl/GLSurfaceView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)J
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getFreeMem(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getTotalInternalMemorySize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)D
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getAvailableInternalMemorySize()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getFingerprint()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getArchType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getCPUType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getNumberOfCPUCores()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getCPUMinFreqKHz()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getCPUMaxFreqKHz()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;ILjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSupportedAbis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSupported32Abis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSupported64Abis()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getBoard()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRoBoardPlatform()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getHardware()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenInch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenDpi(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenPixel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Landroid/view/ViewGroup;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getXdpi_Ydpi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mViewGroup:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isRooted()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportAccelerometer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportMagneticField()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportOrientation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGyroscope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportLight()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportPressure()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportProximity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGravity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method static synthetic access$4000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportLinearAcceleration()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportRotationVector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportRelativeHumidity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportAmbientTemperature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportMagneticFieldUncalibrated()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGameRotationVector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGyroscopeUncalibrated()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportSignificantMotion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportStepDetector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportStepCounter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportGeomagneticRotationVector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportHeartRate()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportTiltDetector()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportWakeGesture()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportPickUpGesture()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportNFC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isSupportHCE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getGlRenderer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getGlVendor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getGlVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getModel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6000(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initGPUInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->postDeviceData()V

    return-void
.end method

.method static synthetic access$6202(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getAndroidRelease()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)I
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getTotalMemory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatDouble(DI)D
    .locals 1

    .line 1315
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p1, 0x4

    .line 1316
    invoke-virtual {v0, p3, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DataCenter"

    .line 1319
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "DataCenter [formatDouble] Exception="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide p1
.end method

.method private getAndroidRelease()Ljava/lang/String;
    .locals 1

    .line 171
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getArchType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_ARCH_TYPE"

    .line 272
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    :cond_0
    const-string p1, "ro.product.cpu.abilist64"

    const-string v0, ""

    .line 280
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "DataCenter"

    const-string v0, "DataCenter [getArchType] CPU arch is 64bit"

    .line 281
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "64"

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isCPUInfo64()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DataCenter"

    const-string v0, "DataCenter [getArchType] CPU arch isCPUInfo64"

    .line 285
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "64"

    goto :goto_0

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->isLibc64()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "DataCenter"

    const-string v0, "DataCenter [getArchType] CPU arch isLibc64"

    .line 289
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "64"

    goto :goto_0

    :cond_3
    const-string p1, "DataCenter"

    const-string v0, "DataCenter [getArchType] return cpu DEFAULT 32bit!"

    .line 293
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "32"

    goto :goto_0

    .line 297
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "DEVICE_INFO_ARCH_TYPE"

    .line 298
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v0, "unknow"

    :cond_5
    return-object v0
.end method

.method private getAvailableInternalMemorySize()D
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 606
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 608
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 609
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 611
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v0, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 615
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method private getBoard()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_BOARD"

    .line 962
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "DEVICE_INFO_BOARD"

    .line 966
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private getBooleanCacheInfo(Ljava/lang/String;)Z
    .locals 2

    .line 2343
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private getCPUMaxFreqKHz()I
    .locals 10

    const-string v0, "DEVICE_INFO_CPU_MAX_FREQ_KHZ"

    .line 773
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_5

    .line 778
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getNumberOfCPUCores()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 783
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/sys/devices/system/cpu/cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 784
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x80

    .line 787
    new-array v5, v5, [B

    .line 788
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 791
    :try_start_1
    invoke-virtual {v7, v5}, Ljava/io/FileInputStream;->read([B)I

    const/4 v6, 0x0

    .line 794
    :goto_1
    aget-byte v8, v5, v6

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    aget-byte v8, v5, v6

    const/16 v9, 0x39

    if-gt v8, v9, :cond_0

    array-length v8, v5

    if-ge v6, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 798
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 799
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 801
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 802
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 813
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "DataCenter"

    .line 810
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMaxFreqKHz] Exception="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v6, "DataCenter"

    .line 806
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMaxFreqKHz] NumberFormatException="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 813
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    move v0, v4

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v2, "DataCenter"

    .line 824
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getCPUMaxFreqKHz] Exception2="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v2, "DataCenter"

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getCPUMaxFreqKHz] IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    const/4 v0, -0x1

    :cond_4
    :goto_6
    if-eq v1, v0, :cond_5

    const-string v1, "DEVICE_INFO_CPU_MAX_FREQ_KHZ"

    .line 830
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_5
    return v0
.end method

.method private getCPUMinFreqKHz()I
    .locals 10

    const-string v0, "DEVICE_INFO_CPU_MIN_FREQ_KHZ"

    .line 698
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_5

    .line 703
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getNumberOfCPUCores()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 708
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/sys/devices/system/cpu/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 709
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x80

    .line 713
    new-array v5, v5, [B

    .line 714
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 717
    :try_start_1
    invoke-virtual {v7, v5}, Ljava/io/FileInputStream;->read([B)I

    const/4 v6, 0x0

    .line 720
    :goto_1
    aget-byte v8, v5, v6

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    aget-byte v8, v5, v6

    const/16 v9, 0x39

    if-gt v8, v9, :cond_0

    array-length v8, v5

    if-ge v6, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 724
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 725
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 727
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 728
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 740
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "DataCenter"

    .line 736
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMinFreqKHz] Exception1="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v6, "DataCenter"

    .line 732
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DataCenter [getCPUMinFreqKHz] NumberFormatException="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 741
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    move v0, v4

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v2, "DataCenter"

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getCPUMinFreqKHz] Exception2="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v2, "DataCenter"

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getCPUMinFreqKHz] IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    const/4 v0, -0x1

    :cond_4
    :goto_6
    if-eq v1, v0, :cond_5

    const-string v1, "DEVICE_INFO_CPU_MIN_FREQ_KHZ"

    .line 760
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_5
    return v0
.end method

.method private getCPUType()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_CPU_TYPE"

    .line 315
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "ro.product.cpu.abi"

    const-string v1, "arm"

    .line 319
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x86"

    goto :goto_0

    :cond_0
    const-string v0, "arm"

    :goto_0
    const-string v1, "DEVICE_INFO_CPU_TYPE"

    .line 326
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private getDeviceData()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDeviceData] start"

    .line 3181
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "scope"

    const-string v2, "release"

    .line 3187
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_MANUFACTURER"

    .line 3188
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_MANUFACTURER"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_MODEL"

    .line 3189
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_MODEL"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_RELEASE"

    .line 3190
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_RELEASE"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SDK_INT"

    .line 3191
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SDK_INT"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_TOTAL_MEMORY"

    .line 3192
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_TOTAL_MEMORY"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_TOTAL_INTERNAL_MEMORY"

    .line 3195
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_TOTAL_INTERNAL_MEMORY"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_FINGERPRINT"

    .line 3197
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_FINGERPRINT"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_ROM_VERSION"

    .line 3198
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_ROM_VERSION"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_ARCH_TYPE"

    .line 3199
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_ARCH_TYPE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_CPU_TYPE"

    .line 3201
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_CPU_TYPE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_CPU_CORES_COUNT"

    .line 3202
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_CPU_CORES_COUNT"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_CPU_MIN_FREQ_KHZ"

    .line 3203
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_CPU_MIN_FREQ_KHZ"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_CPU_MAX_FREQ_KHZ"

    .line 3204
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_CPU_MAX_FREQ_KHZ"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3206
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v1, "DEVICE_INFO_SUPPORTED_ABIS"

    .line 3207
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SUPPORTED_ABIS"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SUPPORTED_32_BIT_ABIS"

    .line 3208
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SUPPORTED_32_BIT_ABIS"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SUPPORTED_64_BIT_ABIS"

    .line 3209
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SUPPORTED_64_BIT_ABIS"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "DEVICE_INFO_BOARD"

    .line 3213
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_BOARD"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_RO_BOARD_PLATFORM"

    .line 3214
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_RO_BOARD_PLATFORM"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_HARDWARE"

    .line 3216
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_HARDWARE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_GL_RENDERER"

    .line 3218
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_GL_RENDERER"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_GL_VENDOR"

    .line 3219
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_GL_VENDOR"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_GL_VERSION"

    .line 3220
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_GL_VERSION"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SCREEN_RESOLUTION"

    .line 3221
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SCREEN_RESOLUTION"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SCREEN_INCH"

    .line 3222
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SCREEN_INCH"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SCREEN_DPI"

    .line 3224
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SCREEN_DPI"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_SCREEN_PIXEL"

    .line 3225
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_SCREEN_PIXEL"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_XDPI_YDPI"

    .line 3226
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_XDPI_YDPI"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_ROOT"

    .line 3227
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_ROOT"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_WEBVIEW_INFO"

    .line 3228
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_WEBVIEW_INFO"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    .line 3230
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    .line 3231
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    .line 3232
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    .line 3233
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    .line 3234
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    .line 3236
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    .line 3237
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    .line 3238
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    .line 3239
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    .line 3240
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    .line 3242
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    .line 3243
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    .line 3244
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    .line 3245
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    .line 3246
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    .line 3248
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    .line 3249
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    .line 3250
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    .line 3251
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    .line 3252
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    .line 3254
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    .line 3255
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    .line 3256
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    .line 3257
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    .line 3258
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    const-string v4, "unknow"

    invoke-interface {v2, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataCenter"

    .line 3265
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getDeviceData] Exception ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "DataCenter"

    .line 3261
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getDeviceData] JSONException ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v1, "DataCenter"

    .line 3269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getDeviceData] data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFingerprint()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_FINGERPRINT"

    .line 189
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DEVICE_INFO_FINGERPRINT"

    .line 195
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private getFreeMem(Landroid/content/Context;)J
    .locals 7

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "activity"

    .line 540
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    .line 543
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 544
    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 546
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 548
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method private getGlRenderer()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_GL_RENDERER"

    .line 1069
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknow"

    :cond_0
    return-object v0
.end method

.method private getGlVendor()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_GL_VENDOR"

    .line 1084
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknow"

    :cond_0
    return-object v0
.end method

.method private getGlVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_GL_VERSION"

    .line 1099
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknow"

    :cond_0
    return-object v0
.end method

.method private getHardware()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_HARDWARE"

    .line 212
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DEVICE_INFO_HARDWARE"

    .line 218
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;
    .locals 2

    .line 112
    sget-object v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    if-nez v0, :cond_0

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [DeviceDataCenter] start"

    .line 113
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    .line 117
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sDataCenter:Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;

    return-object v0
.end method

.method private getIntCacheInfo(Ljava/lang/String;)I
    .locals 2

    .line 2328
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private getLongCacheInfo(Ljava/lang/String;)J
    .locals 3

    .line 2371
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method private getManufacturer()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_MANUFACTURER"

    .line 125
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DEVICE_INFO_MANUFACTURER"

    .line 131
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private getModel()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_MODEL"

    .line 148
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DEVICE_INFO_MODEL"

    .line 154
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private getNumberOfCPUCores()I
    .locals 6

    const-string v0, "DEVICE_INFO_CPU_CORES_COUNT"

    .line 628
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 632
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DataCenter"

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getNumberOfCPUCores] Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "DataCenter"

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getNumberOfCPUCores] NullPointerException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "DataCenter"

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getNumberOfCPUCores] SecurityException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    if-eq v1, v0, :cond_1

    const-string v1, "DEVICE_INFO_CPU_CORES_COUNT"

    .line 659
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_1
    return v0
.end method

.method private getRoBoardPlatform()Ljava/lang/String;
    .locals 7

    const-string v0, "DEVICE_INFO_RO_BOARD_PLATFORM"

    .line 982
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 986
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.board.platform"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 989
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataCenter"

    .line 993
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getPlatform] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 997
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unknow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DEVICE_INFO_RO_BOARD_PLATFORM"

    .line 998
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "DEVICE_INFO_ROM_VERSION"

    .line 236
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "unknow"

    return-object p1

    :cond_0
    const-string v1, "/"

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 246
    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    const/4 v1, 0x4

    .line 247
    aget-object p1, p1, v1

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const-string v1, ":"

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 254
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "DEVICE_INFO_ROM_VERSION"

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, "unknow"

    :cond_3
    return-object v0
.end method

.method private getScreenDpi(Landroid/content/Context;)I
    .locals 2

    const-string v0, "DEVICE_INFO_SCREEN_DPI"

    .line 1333
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getIntCacheInfo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    if-nez p1, :cond_0

    return v0

    .line 1341
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1342
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1343
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string p1, "DEVICE_INFO_SCREEN_DPI"

    .line 1345
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setIntCacheInfo(Ljava/lang/String;I)V

    :cond_1
    return v0
.end method

.method private getScreenInch(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "DEVICE_INFO_SCREEN_INCH"

    .line 1249
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    :cond_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 1261
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1264
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1265
    invoke-virtual {p1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1267
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_1

    .line 1268
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1269
    invoke-virtual {p1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1270
    iget p1, v4, Landroid/graphics/Point;->x:I

    .line 1271
    iget v4, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1273
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2

    .line 1274
    const-class v4, Landroid/view/Display;

    const-string v5, "getRawHeight"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1275
    const-class v5, Landroid/view/Display;

    const-string v7, "getRawWidth"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1276
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1277
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move p1, v5

    goto :goto_0

    .line 1280
    :cond_2
    iget p1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1281
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    if-lez p1, :cond_3

    .line 1284
    iget v5, v3, Landroid/util/DisplayMetrics;->xdpi:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    if-lez v4, :cond_3

    iget v5, v3, Landroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    int-to-float p1, p1

    .line 1285
    iget v5, v3, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v5, p1, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p1, v6

    mul-float v5, v5, p1

    int-to-float p1, v4

    iget v4, v3, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v4, p1, v4

    iget v3, v3, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p1, v3

    mul-float v4, v4, p1

    add-float/2addr v5, v4

    float-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const/4 p1, 0x1

    invoke-direct {p0, v3, v4, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->formatDouble(DI)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v3, "DataCenter"

    .line 1290
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getScreenInch] Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-wide v3, v1

    :goto_1
    cmpl-double p1, v1, v3

    if-eqz p1, :cond_4

    .line 1295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "DEVICE_INFO_SCREEN_INCH"

    .line 1296
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v0, "unknow"

    :cond_5
    return-object v0
.end method

.method private getScreenPixel(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, "DEVICE_INFO_SCREEN_PIXEL"

    .line 1358
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    .line 1368
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1369
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1370
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1372
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getScreenInch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-nez v3, :cond_1

    .line 1378
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1380
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-wide v6, v4

    :goto_0
    if-lez v2, :cond_2

    if-lez v1, :cond_2

    const-wide/16 v8, 0x0

    cmpl-double p1, v6, v8

    if-lez p1, :cond_2

    mul-int v2, v2, v2

    mul-int v1, v1, v1

    add-int/2addr v2, v1

    int-to-double v1, v2

    .line 1386
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v1, v6

    goto :goto_1

    :cond_2
    move-wide v1, v4

    :goto_1
    cmpl-double p1, v4, v1

    if-eqz p1, :cond_3

    .line 1390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "DEVICE_INFO_SCREEN_PIXEL"

    .line 1391
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "unknow"

    :cond_4
    return-object v0
.end method

.method private getScreenResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_SCREEN_RESOLUTION"

    .line 1213
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    .line 1221
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1224
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1225
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "DEVICE_INFO_SCREEN_RESOLUTION"

    .line 1231
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, "unknow"

    :cond_3
    return-object v0
.end method

.method private getSdkInt()I
    .locals 1

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2295
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method private getSupported32Abis()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "DEVICE_INFO_SUPPORTED_32_BIT_ABIS"

    .line 885
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 892
    :try_start_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 894
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 896
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataCenter"

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getSupported32Abis] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 907
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DEVICE_INFO_SUPPORTED_32_BIT_ABIS"

    .line 908
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private getSupported64Abis()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "DEVICE_INFO_SUPPORTED_64_BIT_ABIS"

    .line 926
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    :try_start_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 933
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 934
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataCenter"

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getSupported64Abis] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 944
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DEVICE_INFO_SUPPORTED_64_BIT_ABIS"

    .line 945
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private getSupportedAbis()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "DEVICE_INFO_SUPPORTED_ABIS"

    .line 844
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 851
    :try_start_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 853
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 855
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataCenter"

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getSupportedAbis] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 866
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DEVICE_INFO_SUPPORTED_ABIS"

    .line 867
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 2258
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 2262
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2263
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DataCenter"

    .line 2266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getSystemProperty] Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "DataCenter"

    .line 2270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getSystemProperty] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private getTotalInternalMemorySize()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const-string v0, "DEVICE_INFO_TOTAL_INTERNAL_MEMORY"

    .line 564
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getSdkInt()I

    move-result v1

    const/16 v2, 0x12

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-lt v1, v2, :cond_0

    .line 572
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 573
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 575
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    mul-long v1, v1, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    long-to-double v1, v1

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 579
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    div-double/2addr v1, v5

    div-double/2addr v1, v5

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    cmpl-double v5, v3, v1

    if-eqz v5, :cond_1

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_TOTAL_INTERNAL_MEMORY"

    .line 585
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private getTotalMemory()Ljava/lang/String;
    .locals 10

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getTotalMemory] start"

    .line 468
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEVICE_INFO_TOTAL_MEMORY"

    .line 470
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "/proc/meminfo"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 480
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 481
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\\s+"

    .line 485
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 487
    array-length v5, v2

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 488
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 501
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    const-string v2, "DataCenter"

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DataCenter [getTotalMemory] Exception2="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :catch_3
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_1
    :try_start_3
    const-string v5, "DataCenter"

    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DataCenter [getTotalMemory] Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 504
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    const-string v2, "DataCenter"

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [getTotalMemory] Exception2="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_2
    :try_start_5
    const-string v5, "DataCenter"

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DataCenter [getTotalMemory] IOException="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 504
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v1

    const-string v2, "DataCenter"

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DataCenter [getTotalMemory] Exception2="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    move-wide v5, v3

    :goto_5
    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_TOTAL_MEMORY"

    .line 515
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v1, :cond_2

    .line 504
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getTotalMemory] Exception2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    :cond_2
    :goto_7
    throw v0

    .line 519
    :cond_3
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "unknow"

    :cond_4
    return-object v0
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_2

    .line 2385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2386
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "SDK_UNI_UPDATE_URL"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2388
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "EB"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://unisdk.update.easebar.com/ngdevice/"

    goto :goto_1

    :cond_1
    const-string v0, "https://unisdk.update.netease.com/ngdevice/"

    goto :goto_1

    .line 2392
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    const-string v0, "/"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ngdevice/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2395
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 2399
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method private getWebviewInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_WEBVIEW_INFO"

    .line 1538
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    .line 1546
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1547
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 1548
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "DEVICE_INFO_WEBVIEW_INFO"

    .line 1550
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private getXdpi_Ydpi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_XDPI_YDPI"

    .line 1409
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    .line 1417
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1418
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "DEVICE_INFO_XDPI_YDPI"

    .line 1422
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private initGPUInfo(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1119
    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->detect(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "DataCenter"

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getGPUInfo] mIsEmulator="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    return-void

    .line 1128
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$2;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "DataCenter"

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getGPUInfo] Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private initSensorsInfo(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private initSuccessCallBack(ILjava/lang/String;)V
    .locals 4

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [initCallBack]"

    .line 2782
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "DataCenter"

    const-string p2, "DataCenter [initCallBack] param error"

    .line 2787
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "DataCenter"

    .line 2791
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [initCallBack] code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "device_module_init"

    .line 2795
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "code"

    .line 2796
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "msg"

    .line 2797
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2798
    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "DataCenter"

    .line 2800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [initCallBack] Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    .line 2805
    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mInitSuccess:Z

    :cond_1
    const-string p2, "DataCenter"

    .line 2811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataCenter [initCallBack] mPostDataInInit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 2813
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    if-eqz p1, :cond_2

    const-string p1, "DataCenter"

    const-string p2, "DataCenter [initCallBack] call postDeviceData"

    .line 2814
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->postDeviceData()V

    :cond_2
    return-void
.end method

.method private isCPUInfo64()Z
    .locals 7

    .line 341
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 348
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "arch64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DataCenter"

    const-string v3, "DataCenter [isCPUInfo64] /proc/cpuinfo contains is arch64"

    .line 353
    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DataCenter"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [isCPUInfo64] Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "DataCenter"

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [isCPUInfo64] Exception2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_5
    const-string v1, "DataCenter"

    const-string v3, "DataCenter [isCPUInfo64] /proc/cpuinfo is not arch64"

    .line 357
    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 366
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "DataCenter"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [isCPUInfo64] Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_9

    :catch_3
    move-exception v0

    const-string v1, "DataCenter"

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [isCPUInfo64] Exception2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_4
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_3
    :try_start_8
    const-string v3, "DataCenter"

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [isCPUInfo64] /proc/cpuinfo error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_1

    .line 367
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    :catch_7
    move-exception v0

    const-string v1, "DataCenter"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [isCPUInfo64] Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz v2, :cond_4

    .line 377
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    const-string v1, "DataCenter"

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [isCPUInfo64] Exception2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_2
    move-exception v1

    :goto_6
    if-eqz v0, :cond_2

    .line 367
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_7

    :catch_9
    move-exception v0

    const-string v3, "DataCenter"

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [isCPUInfo64] Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_7
    if-eqz v2, :cond_3

    .line 377
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_8

    :catch_a
    move-exception v0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [isCPUInfo64] Exception2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    :cond_3
    :goto_8
    throw v1

    :cond_4
    :goto_9
    const/4 v0, 0x0

    return v0
.end method

.method private isLibc64()Z
    .locals 5

    .line 394
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    .line 397
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    aget-byte v0, v0, v4

    if-ne v0, v3, :cond_0

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [isLibc64] /system/lib/libc.so is 64bit"

    .line 400
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 405
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib64/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    array-length v1, v0

    if-le v1, v4, :cond_1

    aget-byte v0, v0, v4

    if-ne v0, v3, :cond_1

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [isLibc64] /system/lib64/libc.so is 64bit"

    .line 411
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRooted()Ljava/lang/String;
    .locals 5

    const-string v0, "DEVICE_INFO_IS_ROOT"

    .line 1438
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1445
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataCenter"

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [isRooted] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1454
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_ROOT"

    .line 1456
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportAccelerometer()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    .line 1589
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1591
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_ACCELEROMETER"

    .line 1601
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportAmbientTemperature()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    .line 1909
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_AMBIENT_TEMPERATURE"

    .line 1921
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportGameRotationVector()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    .line 1968
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1970
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GAME_ROTATION_VECTOR"

    .line 1980
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportGeomagneticRotationVector()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    .line 2114
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GEOMAGNETIC_ROTATION_VECTOR"

    .line 2126
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportGravity()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    .line 1792
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GRAVITY"

    .line 1804
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportGyroscope()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    .line 1676
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE"

    .line 1688
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportGyroscopeUncalibrated()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    .line 1998
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_GYROSCOPE_UNCALIBRATED"

    .line 2010
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportHCE(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    .line 1506
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    .line 1516
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.nfc.hce"

    .line 1517
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC_HOST_CARD_EMULATION"

    .line 1521
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private isSupportHeartRate()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    .line 2143
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_HEART_RATE"

    .line 2155
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportLight()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    .line 1705
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1707
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_LIGHT"

    .line 1717
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportLinearAcceleration()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    .line 1822
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_LINEAR_ACCELERATION"

    .line 1834
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportMagneticField()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    .line 1618
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1620
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD"

    .line 1630
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportMagneticFieldUncalibrated()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    .line 1939
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1941
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_MAGNETIC_FIELD_UNCALIBRATED"

    .line 1951
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportNFC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    .line 1473
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1475
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "unknow"

    return-object p1

    .line 1483
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.nfc"

    .line 1484
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "DEVICE_INFO_IS_SUPPORT_FEATURE_NFC"

    .line 1488
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "unknow"

    :cond_2
    return-object v0
.end method

.method private isSupportOrientation()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    .line 1647
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_ORIENTATION"

    .line 1659
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportPickUpGesture()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    .line 2235
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_PICK_UP_GESTURE"

    .line 2247
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportPressure()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    .line 1734
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1736
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_PRESSURE"

    .line 1746
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportProximity()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    .line 1763
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1765
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_PROXIMITY"

    .line 1775
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportRelativeHumidity()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    .line 1880
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1882
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_RELATIVE_HUMIDITY"

    .line 1892
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportRotationVector()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    .line 1851
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_ROTATION_VECTOR"

    .line 1863
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportSignificantMotion()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    .line 2027
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_SIGNIFICANT_MOTION"

    .line 2039
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportStepCounter()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    .line 2085
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2087
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_STEP_COUNTER"

    .line 2097
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportStepDetector()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    .line 2056
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2058
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_STEP_DETECTOR"

    .line 2068
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportTiltDetector()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    .line 2174
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2180
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_TILT_DETECTOR"

    .line 2186
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private isSupportWakeGesture()Ljava/lang/String;
    .locals 2

    const-string v0, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    .line 2204
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mSensorsInfoMap:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_INFO_IS_SUPPORT_WAKE_GESTURE"

    .line 2216
    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknow"

    :cond_1
    return-object v0
.end method

.method private postDeviceData()V
    .locals 4

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [postDeviceData] start"

    .line 3128
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEVICE_HAS_POST_DATA"

    .line 3130
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    const-string v0, "DataCenter"

    .line 3132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [postDeviceData] mHasPostData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasPostData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3136
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SDK_DUMP_URL"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3138
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "EB"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://appdump.nie.easebar.com/device"

    goto :goto_0

    :cond_1
    const-string v0, "https://appdump.nie.netease.com/device"

    .line 3143
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "DataCenter"

    const-string v1, "null or empty url, post device data will not go on"

    .line 3144
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v1, "DataCenter"

    .line 3148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [postDeviceData] url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDeviceData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$6;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$6;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;)V

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wpost_http_https(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    :cond_4
    return-void
.end method

.method private readELFHeadrIndentArray(Ljava/io/File;)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 424
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    .line 430
    :try_start_1
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 432
    invoke-virtual {v1, v2, v3, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v3, p1, :cond_0

    .line 435
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DataCenter"

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [readELFHeadrIndentArray] Exception="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v2

    :cond_0
    :try_start_3
    const-string p1, "DataCenter"

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [readELFHeadrIndentArray] Error: e_indent lenght should be 16, but actual is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 446
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    const-string v1, "DataCenter"

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [readELFHeadrIndentArray] Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v1, v0

    :goto_1
    :try_start_5
    const-string v2, "DataCenter"

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [readELFHeadrIndentArray] Throwable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    .line 449
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    const-string v1, "DataCenter"

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [readELFHeadrIndentArray] Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v1, :cond_1

    .line 449
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [readELFHeadrIndentArray] Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenter"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    :cond_1
    :goto_4
    throw p1

    :cond_2
    :goto_5
    return-object v0
.end method

.method private setBooleanCacheInfo(Ljava/lang/String;Z)V
    .locals 1

    .line 2357
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2359
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private setIntCacheInfo(Ljava/lang/String;I)V
    .locals 2

    .line 2309
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScoreByCpuName] sharedPreferences == null"

    .line 2310
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2314
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2316
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private setLongCacheInfo(Ljava/lang/String;J)V
    .locals 1

    .line 2411
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2413
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private setStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2281
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2283
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultScore()Ljava/lang/String;
    .locals 8

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDefaultScore]"

    .line 3276
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getTotalMemory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 3282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 3287
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "DataCenter"

    .line 3288
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getDefaultScore] totalMemoryInt="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1b58

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const-string v0, "5999"

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0xfa0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_2

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-string v0, "4500"

    goto :goto_0

    :cond_2
    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DataCenter"

    .line 3301
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getDefaultScore] Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getDevicePerformanceScore()V
    .locals 4

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScore] get my phone score"

    .line 2823
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRoBoardPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "___"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getHardware()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2828
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScore] param error"

    .line 2829
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "DataCenter"

    .line 2833
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getDevicePerformanceScore] get my phone score, platform="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getDevicePerformanceScore(Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePerformanceScore(Ljava/lang/String;)V
    .locals 8

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScore] start"

    .line 2848
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 2856
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getRoBoardPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "___"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getHardware()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2858
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "DataCenter"

    .line 2860
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getDevicePerformanceScore] deviceInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 2864
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEVICE_INFO_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEVICE_INFO_RANGE"

    .line 2866
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_INFO_CPU_NAME"

    .line 2868
    invoke-direct {p0, v4}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DataCenter"

    .line 2870
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DataCenter [getDevicePerformanceScore] get score from cache, score="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", scoreRange="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cpu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "-1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "unknow"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v5, "DataCenter"

    .line 2978
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DataCenter [getDevicePerformanceScore] cpu="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", scoreRange="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "methodId"

    const-string v7, "device_performance_score"

    .line 2982
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "code"

    const/4 v7, 0x0

    .line 2983
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "cpu"

    .line 2984
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "score"

    .line 2985
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "score_range"

    .line 2986
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "msg"

    const-string v7, "success"

    .line 2987
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2988
    move-object v6, v1

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DEVICE_INFO_PERFORMANCE_SCORE"

    .line 2991
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "DEVICE_INFO_PERFORMANCE_SCORE_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_INFO_PERFORMANCE_SCORE_RANGE"

    .line 2996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_INFO_CPU_NAME"

    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "DataCenter"

    .line 3003
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCenter [getDevicePerformanceScore] Exception2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 2876
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2878
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "DataCenter"

    const-string v0, "null or empty url, device service will not go on."

    .line 2879
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2883
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?gameid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v4, "JF_GAMEID"

    invoke-interface {v2, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter"

    .line 2884
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataCenter [getDevicePerformanceScore] url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    new-instance v3, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$4;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/GamerInterface;)V

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void

    :cond_5
    const-string p1, "DataCenter"

    const-string v0, "DataCenter [getDevicePerformanceScore] sdkmgr is null"

    .line 3008
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    const-string p1, "DataCenter"

    const-string v0, "DataCenter [getDevicePerformanceScore] param error"

    .line 2851
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePerformanceScoreRange()V
    .locals 5

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScoreRange] start"

    .line 3019
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3021
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "DEVICE_INFO_RANGE"

    .line 3025
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenter"

    .line 3027
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getDevicePerformanceScoreRange] get scoreRange from cache, scoreRange="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3031
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "SDK_UNI_UPDATE_URL"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3032
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3033
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "EB"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://unisdk.update.easebar.com/ngdevice/"

    goto :goto_1

    :cond_0
    const-string v1, "https://unisdk.update.netease.com/ngdevice/"

    goto :goto_1

    .line 3037
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v1, "/"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ngdevice/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3040
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "DataCenter"

    const-string v1, "null or empty url, get device performance will not go on."

    .line 3041
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3045
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "score_range.json?gameid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "JF_GAMEID"

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenter"

    .line 3047
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DataCenter [getDevicePerformanceScoreRange] url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    new-instance v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;

    invoke-direct {v2, p0, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$5;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Lcom/netease/ntunisdk/base/GamerInterface;)V

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void

    .line 3104
    :cond_4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v4, "device_performance_score_range"

    .line 3105
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "code"

    const/4 v4, 0x0

    .line 3106
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "score_range"

    .line 3107
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msg"

    const-string v4, "success"

    .line 3108
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3109
    move-object v3, v0

    check-cast v3, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    const-string v2, "DEVICE_INFO_PERFORMANCE_SCORE_RANGE"

    .line 3111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DataCenter"

    .line 3114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataCenter [getDevicePerformanceScoreRange] Exception2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_5
    const-string v0, "DataCenter"

    const-string v1, "DataCenter [getDevicePerformanceScoreRange] sdkmgr is null="

    .line 3119
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initDeviceInfos(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DataCenter"

    const-string v1, "DataCenter [initDeviceInfos] start"

    .line 2423
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    .line 2433
    :cond_0
    iget-boolean v2, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasInit:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string p1, "DataCenter"

    const-string v0, "DataCenter [initDeviceInfos] has init"

    .line 2434
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    iget-boolean p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mInitSuccess:Z

    if-eqz p1, :cond_1

    const-string p1, "init success"

    .line 2437
    invoke-direct {p0, v3, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "init fail"

    .line 2440
    invoke-direct {p0, v1, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void

    .line 2445
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3

    const-string v1, "DataCenter"

    const-string v2, "DataCenter [initDeviceInfos] init sharedPreferences"

    .line 2446
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unisdk_devices_infos_file"

    .line 2447
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_3
    const/4 v1, 0x1

    .line 2450
    iput-boolean v1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mHasInit:Z

    .line 2452
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter$3;-><init>(Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;Landroid/content/Context;Lcom/netease/ntunisdk/base/GamerInterface;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "GetDeviceInfoThread"

    .line 2777
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    :goto_0
    const-string p1, "DataCenter"

    const-string v0, "DataCenter [initDeviceInfos] param error"

    .line 2428
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "init fail"

    .line 2429
    invoke-direct {p0, v1, p1}, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->initSuccessCallBack(ILjava/lang/String;)V

    return-void
.end method

.method public setmPostDataInInit(Z)V
    .locals 0

    .line 3309
    iput-boolean p1, p0, Lcom/netease/ntunisdk/base/utils/DeviceDataCenter;->mPostDataInInit:Z

    return-void
.end method
