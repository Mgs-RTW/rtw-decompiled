.class public Lcom/netease/androidcrashhandler/util/CEmulatorDetector;
.super Ljava/lang/Object;
.source "CEmulatorDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;
    }
.end annotation


# static fields
.field private static final ANDY_FILES:[Ljava/lang/String;

.field private static final EXT_FILES:[Ljava/lang/String;

.field private static final GENY_FILES:[Ljava/lang/String;

.field private static final MIN_PROPERTIES_THRESHOLD:I = 0x5

.field private static final NOX_FILES:[Ljava/lang/String;

.field private static final PIPES:[Ljava/lang/String;

.field private static final PROPERTIES:[Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

.field private static final QEMU_DRIVERS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "CEmulatorDetector"

.field private static final X86_FILES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x2

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/dev/socket/genyd"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/dev/socket/baseband_genyd"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->GENY_FILES:[Ljava/lang/String;

    .line 20
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "fstab.andy"

    aput-object v2, v1, v3

    const-string v2, "ueventd.andy.rc"

    aput-object v2, v1, v4

    sput-object v1, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->ANDY_FILES:[Ljava/lang/String;

    .line 25
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "/sys/kernel/debug/x86/"

    aput-object v2, v1, v3

    sput-object v1, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->EXT_FILES:[Ljava/lang/String;

    const/4 v1, 0x5

    .line 29
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "fstab.nox"

    aput-object v5, v2, v3

    const-string v5, "init.nox.rc"

    aput-object v5, v2, v4

    const-string v5, "ueventd.nox.rc"

    aput-object v5, v2, v0

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "BigNoxHD"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "/system/bin/nox-prop"

    :goto_0
    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "BigNoxGameHD"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "/system/bin/nox-prop"

    :goto_1
    const/4 v7, 0x4

    aput-object v5, v2, v7

    sput-object v2, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->NOX_FILES:[Ljava/lang/String;

    const/16 v2, 0xe

    .line 39
    new-array v2, v2, [Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v8, "init.svc.qemud"

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v3

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v8, "init.svc.qemu-props"

    invoke-direct {v5, v8, v9}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v8, "qemu.hw.mainkeys"

    invoke-direct {v5, v8, v9}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v0

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v8, "qemu.sf.fake_camera"

    invoke-direct {v5, v8, v9}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v6

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v8, "qemu.sf.lcd_density"

    invoke-direct {v5, v8, v9}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v7

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v8, "ro.bootloader"

    const-string v10, "unknown"

    invoke-direct {v5, v8, v10}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v1

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v8, "ro.bootmode"

    const-string v10, "unknown"

    invoke-direct {v5, v8, v10}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x6

    aput-object v5, v2, v8

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v10, "ro.hardware"

    const-string v11, "goldfish"

    invoke-direct {v5, v10, v11}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x7

    aput-object v5, v2, v10

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v11, "ro.kernel.android.qemud"

    invoke-direct {v5, v11, v9}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x8

    aput-object v5, v2, v11

    new-instance v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v12, "ro.kernel.qemu.gles"

    invoke-direct {v5, v12, v9}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x9

    aput-object v5, v2, v9

    const/16 v5, 0xa

    new-instance v12, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v13, "ro.kernel.qemu"

    const-string v14, "1"

    invoke-direct {v12, v13, v14}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v2, v5

    const/16 v5, 0xb

    new-instance v12, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v13, "ro.product.device"

    const-string v14, "generic"

    invoke-direct {v12, v13, v14}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v2, v5

    const/16 v5, 0xc

    new-instance v12, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v13, "ro.product.model"

    const-string v14, "sdk"

    invoke-direct {v12, v13, v14}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v2, v5

    const/16 v5, 0xd

    new-instance v12, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    const-string v13, "ro.product.name"

    const-string v14, "sdk"

    invoke-direct {v12, v13, v14}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v2, v5

    sput-object v2, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->PROPERTIES:[Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    .line 57
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "goldfish"

    aput-object v5, v2, v3

    sput-object v2, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    .line 59
    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "ueventd.android_x86.rc"

    aput-object v5, v2, v3

    const-string v5, "x86.prop"

    aput-object v5, v2, v4

    const-string v5, "ueventd.ttVM_x86.rc"

    aput-object v5, v2, v0

    const-string v5, "init.ttVM_x86.rc"

    aput-object v5, v2, v6

    const-string v5, "fstab.ttVM_x86"

    aput-object v5, v2, v7

    const-string v5, "fstab.vbox86"

    aput-object v5, v2, v1

    const-string v1, "init.vbox86.rc"

    aput-object v1, v2, v8

    const-string v1, "ueventd.vbox86.rc"

    aput-object v1, v2, v10

    const-string v1, "init.x86.rc"

    aput-object v1, v2, v11

    sput-object v2, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->X86_FILES:[Ljava/lang/String;

    .line 71
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    aput-object v1, v0, v3

    const-string v1, "/dev/qemu_pipe"

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->PIPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAdvanced(Landroid/content/Context;)Z
    .locals 2

    .line 123
    sget-object v0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->GENY_FILES:[Ljava/lang/String;

    const-string v1, "Geny"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->ANDY_FILES:[Ljava/lang/String;

    const-string v1, "Andy"

    .line 124
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->EXT_FILES:[Ljava/lang/String;

    const-string v1, "ext_files(emu)"

    .line 125
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->NOX_FILES:[Ljava/lang/String;

    const-string v1, "Nox"

    .line 126
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-static {}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkQEmuDrivers()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->PIPES:[Ljava/lang/String;

    const-string v1, "Pipes"

    .line 128
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-static {p0}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkQEmuProps(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->X86_FILES:[Ljava/lang/String;

    const-string v0, "X86"

    invoke-static {p0, v0}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkFiles([Ljava/lang/String;Ljava/lang/String;)Z

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
    return p0
.end method

.method private static checkBasic()Z
    .locals 5

    .line 97
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "google_sdk"

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "droid4x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "vbox86"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "google_sdk"

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk_x86"

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "vbox86p"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V417IR"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 116
    :cond_2
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    or-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-string v1, "google_sdk"

    .line 118
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static checkFiles([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 134
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 135
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "trace"

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkFiles] Check "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is detected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static checkQEmuDrivers()Z
    .locals 10

    const/4 v0, 0x2

    .line 145
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

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x400

    .line 147
    new-array v6, v6, [B

    .line 149
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 150
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 151
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 153
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 157
    sget-object v6, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 158
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v0, "trace"

    const-string v1, "Check QEmuDrivers is detected"

    .line 159
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 172
    sget-object v0, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->PROPERTIES:[Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 173
    iget-object v6, v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;->name:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    iget-object v7, v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;->seek_value:Ljava/lang/String;

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 177
    :cond_0
    iget-object v7, v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;->seek_value:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/netease/androidcrashhandler/util/CEmulatorDetector$Property;->seek_value:Ljava/lang/String;

    .line 178
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

    const-string p0, "trace"

    const-string v0, "[checkQEmuProps] Check QEmuProps is detected"

    .line 185
    invoke-static {p0, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method public static detect(Landroid/content/Context;)Z
    .locals 4

    .line 83
    invoke-static {}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkBasic()Z

    move-result v0

    const-string v1, "trace"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[detect] checkBasic result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->checkAdvanced(Landroid/content/Context;)Z

    move-result v0

    const-string p0, "trace"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[detect] checkBasic checkAdvanced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "android.os.SystemProperties"

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "get"

    const/4 v1, 0x1

    .line 206
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 211
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
