.class public final Lcom/netease/ntunisdk/base/utils/EmulatorDetector;
.super Ljava/lang/Object;
.source "EmulatorDetector.java"


# static fields
.field private static final ANDY_FILES:[Ljava/lang/String;

.field private static final EXT_FILES:[Ljava/lang/String;

.field private static final GENY_FILES:[Ljava/lang/String;

.field private static final LD_DEFAULT_APK:[Ljava/lang/String;

.field private static final LD_FILES:[Ljava/lang/String;

.field private static final MIN_PROPERTIES_THRESHOLD:I = 0x5

.field private static final NOX_DEFAULT_APK:[Ljava/lang/String;

.field private static final NOX_FILES:[Ljava/lang/String;

.field private static final PIPES:[Ljava/lang/String;

.field private static final PROPERTIES:[Lcom/netease/ntunisdk/base/utils/Property;

.field private static final QEMU_DRIVERS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UniSDK EmulatorDetector"

.field private static final X86_FILES:[Ljava/lang/String;

.field private static checkEmulatorApk:Z

.field private static installEmulatorApk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x2

    .line 23
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/dev/socket/genyd"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/dev/socket/baseband_genyd"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->GENY_FILES:[Ljava/lang/String;

    .line 28
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "goldfish"

    aput-object v2, v1, v3

    sput-object v1, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    .line 30
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/dev/socket/qemud"

    aput-object v2, v1, v3

    const-string v2, "/dev/qemu_pipe"

    aput-object v2, v1, v4

    sput-object v1, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->PIPES:[Ljava/lang/String;

    const/16 v1, 0x9

    .line 35
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ueventd.android_x86.rc"

    aput-object v5, v2, v3

    const-string v5, "x86.prop"

    aput-object v5, v2, v4

    const-string v5, "ueventd.ttVM_x86.rc"

    aput-object v5, v2, v0

    const-string v5, "init.ttVM_x86.rc"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const-string v5, "fstab.ttVM_x86"

    const/4 v7, 0x4

    aput-object v5, v2, v7

    const-string v5, "fstab.vbox86"

    const/4 v8, 0x5

    aput-object v5, v2, v8

    const-string v5, "init.vbox86.rc"

    const/4 v9, 0x6

    aput-object v5, v2, v9

    const-string v5, "ueventd.vbox86.rc"

    const/4 v10, 0x7

    aput-object v5, v2, v10

    const-string v5, "init.x86.rc"

    const/16 v11, 0x8

    aput-object v5, v2, v11

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->X86_FILES:[Ljava/lang/String;

    .line 47
    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "fstab.andy"

    aput-object v5, v2, v3

    const-string v5, "ueventd.andy.rc"

    aput-object v5, v2, v4

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->ANDY_FILES:[Ljava/lang/String;

    .line 52
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "/system/app/EmuCoreService/EmuCoreService.apk"

    aput-object v5, v2, v3

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->LD_FILES:[Ljava/lang/String;

    .line 59
    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "fstab.nox"

    aput-object v5, v2, v3

    const-string v5, "init.nox.rc"

    aput-object v5, v2, v4

    const-string v5, "ueventd.nox.rc"

    aput-object v5, v2, v0

    const-string v5, "/system/bin/nox-prop"

    aput-object v5, v2, v6

    .line 64
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v12, "mounted"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "BigNoxHD"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "/system/bin/nox-prop"

    :goto_0
    aput-object v5, v2, v7

    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v12, "mounted"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "BigNoxGameHD"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "/system/bin/nox-prop"

    :goto_1
    aput-object v5, v2, v8

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->NOX_FILES:[Ljava/lang/String;

    .line 70
    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "com.vphone.helper"

    aput-object v5, v2, v3

    const-string v5, "com.vphone.launcher"

    aput-object v5, v2, v4

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->NOX_DEFAULT_APK:[Ljava/lang/String;

    .line 75
    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "com.android.flysilkworm"

    aput-object v5, v2, v3

    const-string v5, "com.android.coreservice"

    aput-object v5, v2, v4

    const-string v5, "com.cyanogenmod.filemanager"

    aput-object v5, v2, v0

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->LD_DEFAULT_APK:[Ljava/lang/String;

    .line 81
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "/sys/kernel/debug/x86/"

    aput-object v5, v2, v3

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->EXT_FILES:[Ljava/lang/String;

    const/16 v2, 0xe

    .line 85
    new-array v2, v2, [Lcom/netease/ntunisdk/base/utils/Property;

    new-instance v5, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v12, "init.svc.qemud"

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    new-instance v3, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v5, "init.svc.qemu-props"

    invoke-direct {v3, v5, v13}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v4, "qemu.hw.mainkeys"

    invoke-direct {v3, v4, v13}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v0, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "qemu.sf.fake_camera"

    invoke-direct {v0, v3, v13}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v6

    new-instance v0, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "qemu.sf.lcd_density"

    invoke-direct {v0, v3, v13}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v7

    new-instance v0, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.bootloader"

    const-string v4, "unknown"

    invoke-direct {v0, v3, v4}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v8

    new-instance v0, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.bootmode"

    const-string v4, "unknown"

    invoke-direct {v0, v3, v4}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v9

    new-instance v0, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.hardware"

    const-string v4, "goldfish"

    invoke-direct {v0, v3, v4}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v10

    new-instance v0, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.kernel.android.qemud"

    invoke-direct {v0, v3, v13}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v11

    new-instance v0, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.kernel.qemu.gles"

    invoke-direct {v0, v3, v13}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v2, v1

    const/16 v0, 0xa

    new-instance v1, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.kernel.qemu"

    const-string v4, "1"

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v2, v0

    const/16 v0, 0xb

    new-instance v1, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.product.device"

    const-string v4, "generic"

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v2, v0

    const/16 v0, 0xc

    new-instance v1, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.product.model"

    const-string v4, "sdk"

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v2, v0

    const/16 v0, 0xd

    new-instance v1, Lcom/netease/ntunisdk/base/utils/Property;

    const-string v3, "ro.product.name"

    const-string v4, "sdk"

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/base/utils/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v2, v0

    sput-object v2, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->PROPERTIES:[Lcom/netease/ntunisdk/base/utils/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAdvanced(Landroid/content/Context;)Z
    .locals 2

    .line 158
    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->GENY_FILES:[Ljava/lang/String;

    const-string v1, "Geny"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->ANDY_FILES:[Ljava/lang/String;

    const-string v1, "Andy"

    .line 159
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->EXT_FILES:[Ljava/lang/String;

    const-string v1, "ext_files(emu)"

    .line 160
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->NOX_FILES:[Ljava/lang/String;

    const-string v1, "Nox"

    .line 161
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkQEmuDrivers()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->PIPES:[Ljava/lang/String;

    const-string v1, "Pipes"

    .line 163
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->LD_FILES:[Ljava/lang/String;

    const-string v1, "Ld"

    .line 164
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkQEmuProps(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->X86_FILES:[Ljava/lang/String;

    const-string v0, "X86"

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static checkBasic()Z
    .locals 4

    .line 130
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "google_sdk"

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "droid4x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "vbox86"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "google_sdk"

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk_x86"

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "vbox86p"

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "windows"

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "subsystem for android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "V417IR"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return v2

    .line 151
    :cond_3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    or-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-string v0, "google_sdk"

    .line 153
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    return v0
.end method

.method private static checkDefaultInstallApk(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7

    .line 181
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 183
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 184
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v4, "UniSDK EmulatorDetector"

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkDefaultInstallApk packageInfo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UniSDK EmulatorDetector"

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkDefaultInstallApk exception:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    return v1
.end method

.method private static checkFiles([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 224
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 225
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "UniSDK EmulatorDetector"

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Check "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is detected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static checkInstallApk(Landroid/content/Context;)Z
    .locals 2

    .line 170
    sget-boolean v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkEmulatorApk:Z

    if-nez v0, :cond_2

    .line 171
    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->NOX_DEFAULT_APK:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkDefaultInstallApk(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->LD_DEFAULT_APK:[Ljava/lang/String;

    .line 172
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkDefaultInstallApk(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    sput-boolean p0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->installEmulatorApk:Z

    .line 173
    sput-boolean v1, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkEmulatorApk:Z

    .line 175
    :cond_2
    sget-boolean p0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->installEmulatorApk:Z

    return p0
.end method

.method private static checkQEmuDrivers()Z
    .locals 10

    const/4 v0, 0x2

    .line 199
    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/tty/drivers"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 200
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x400

    .line 201
    new-array v6, v6, [B

    .line 203
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 205
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 211
    sget-object v6, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 212
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "UniSDK EmulatorDetector"

    const-string v1, "Check QEmuDrivers is detected"

    .line 213
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static checkQEmuProps(Landroid/content/Context;)Z
    .locals 8

    .line 237
    sget-object v0, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->PROPERTIES:[Lcom/netease/ntunisdk/base/utils/Property;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 238
    iget-object v6, v5, Lcom/netease/ntunisdk/base/utils/Property;->name:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    iget-object v7, v5, Lcom/netease/ntunisdk/base/utils/Property;->seek_value:Ljava/lang/String;

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 242
    :cond_0
    iget-object v7, v5, Lcom/netease/ntunisdk/base/utils/Property;->seek_value:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/netease/ntunisdk/base/utils/Property;->seek_value:Ljava/lang/String;

    .line 243
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    if-lt v4, p0, :cond_3

    const-string p0, "UniSDK EmulatorDetector"

    const-string v0, "Check QEmuProps is detected"

    .line 250
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public static detect(Landroid/content/Context;)Z
    .locals 4

    .line 106
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkBasic()Z

    move-result v0

    const-string v1, "UniSDK EmulatorDetector"

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Check basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 116
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkAdvanced(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "UniSDK EmulatorDetector"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Check Advanced "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    .line 122
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/EmulatorDetector;->checkInstallApk(Landroid/content/Context;)Z

    move-result v0

    const-string p0, "UniSDK EmulatorDetector"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check checkInstallApk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private static getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 258
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "android.os.SystemProperties"

    .line 259
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "get"

    const/4 v1, 0x1

    .line 261
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 263
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 266
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
