.class public Lcom/netease/lotr/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lotr/Launcher$PatchHandler;,
        Lcom/netease/lotr/Launcher$PatchFile;,
        Lcom/netease/lotr/Launcher$UpdateHandler;,
        Lcom/netease/lotr/Launcher$CopyFile;,
        Lcom/netease/lotr/Launcher$StorageStatus;,
        Lcom/netease/lotr/Launcher$AssetInfo;
    }
.end annotation


# static fields
.field private static final EXP_PATH:Ljava/lang/String; = "/Android/obb/"

.field private static final KITKAT_UI_OPTION:I = 0xf06

.field private static final OTHER_UI_OPTION:I = 0x505

.field public static final STORAGE_DATA:I = 0x2

.field public static final STORAGE_EXTERNAL:I = 0x1

.field public static final STORAGE_INTERNAL:I

.field private static me:Landroid/app/Activity;

.field static notifyMsgExt:Ljava/lang/String;


# instance fields
.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field m_asset_filelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_asset_to_copy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/lotr/Launcher$AssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_copy_file:Lcom/netease/lotr/Launcher$CopyFile;

.field private m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

.field private m_glclear_color:[F

.field private m_hook_class_loader_helper:Lcom/netease/lotr/HookClassLoaderHelper;

.field private m_if_enable_patch_client_so:Ljava/lang/Boolean;

.field private m_is_gl_loaded:Z

.field private m_is_launched:Z

.field private m_launcher:Lcom/netease/lotr/Launcher;

.field private m_need_remove_shader_cache:Ljava/lang/Boolean;

.field private m_neox_root:Ljava/lang/String;

.field private m_obb_length:Ljava/lang/String;

.field private m_patch_file:Lcom/netease/lotr/Launcher$PatchFile;

.field private m_patch_progress_dlg:Landroid/app/ProgressDialog;

.field private m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

.field private m_progress_bar:Landroid/app/ProgressDialog;

.field private m_progress_dlg:Landroid/app/ProgressDialog;

.field private m_real_height:I

.field private m_real_width:I

.field private m_size_to_copy:J

.field private m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

.field private m_timer:Ljava/util/Timer;

.field private m_view:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x4

    .line 130
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_glclear_color:[F

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 195
    new-array v0, v0, [Lcom/netease/lotr/Launcher$StorageStatus;

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    .line 197
    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 198
    iput-wide v1, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    const/4 v1, 0x0

    .line 199
    iput v1, p0, Lcom/netease/lotr/Launcher;->m_real_width:I

    .line 200
    iput v1, p0, Lcom/netease/lotr/Launcher;->m_real_height:I

    .line 201
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/lotr/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/lotr/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    .line 266
    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_hook_class_loader_helper:Lcom/netease/lotr/HookClassLoaderHelper;

    .line 1630
    iput-boolean v1, p0, Lcom/netease/lotr/Launcher;->m_is_launched:Z

    const-string v0, "2045297702"

    .line 1821
    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_obb_length:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/lotr/Launcher;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher$CopyFile;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_copy_file:Lcom/netease/lotr/Launcher$CopyFile;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/lotr/Launcher;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/netease/lotr/Launcher;)Ljava/util/Timer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/netease/lotr/Launcher;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/netease/lotr/Launcher;Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/lotr/Launcher;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/netease/lotr/Launcher;)Lcom/google/android/vending/expansion/downloader/IStub;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/lotr/Launcher;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/netease/lotr/Launcher;->m_is_gl_loaded:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/netease/lotr/Launcher;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/netease/lotr/Launcher;->m_is_launched:Z

    return p0
.end method

.method static synthetic access$202(Lcom/netease/lotr/Launcher;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/netease/lotr/Launcher;->m_is_gl_loaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/PlatformConfigParser;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/netease/lotr/Launcher;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/netease/lotr/Launcher;->m_real_width:I

    return p1
.end method

.method static synthetic access$602(Lcom/netease/lotr/Launcher;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/netease/lotr/Launcher;->m_real_height:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/lotr/Launcher;)[F
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_glclear_color:[F

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/lotr/Launcher;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->runGame()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/lotr/Launcher;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    return-object p0
.end method

.method private static collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "\t"

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 97
    aget-object v2, p0, v2

    const-string v3, "\\\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-object p0, p0, v3

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getCoreNumber()I
    .locals 2

    .line 65
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/netease/lotr/Launcher$1CpuFilter;

    invoke-direct {v1}, Lcom/netease/lotr/Launcher$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 69
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getNetworkType()I
    .locals 1

    const-string v0, "connectivity"

    .line 1507
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1508
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1511
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getPermissionGranted(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 873
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 875
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 877
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private static getStat(Ljava/lang/String;)J
    .locals 5

    .line 82
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 84
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getTargetSdkVersion()I
    .locals 3

    const/4 v0, 0x0

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 859
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    return v0
.end method

.method private isYYKJPackage()Z
    .locals 7

    const/4 v0, 0x3

    .line 206
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yykj"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "yyxx"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.tencent"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 210
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 212
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 214
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private onCreateByYYKJ()Z
    .locals 7

    .line 239
    sget-object v0, Lcom/netease/lotr/Launcher;->me:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/lotr/Launcher;->me:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.tencent.ysdk.api.YSDKApi"

    .line 243
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "handleIntent"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->finish()V

    return v2

    :cond_0
    :try_start_1
    const-string v0, "com.tencent.ysdk.api.YSDKApi"

    .line 255
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "onCreate"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lcom/netease/lotr/Launcher;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.tencent.ysdk.api.YSDKApi"

    .line 256
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "handleIntent"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    :goto_1
    sput-object p0, Lcom/netease/lotr/Launcher;->me:Landroid/app/Activity;

    return v3
.end method

.method private onNewIntentByYYKJ()V
    .locals 6

    :try_start_0
    const-string v0, "com.tencent.ysdk.api.YSDKApi"

    .line 227
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "handleIntent"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private onPushNotification(Lcom/netease/push/utils/NotifyMessage;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getExt()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/lotr/Launcher;->notifyMsgExt:Ljava/lang/String;

    const-string v0, "LOTR_NX"

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher.onPushNotification. msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getExt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static removeDirectory(Ljava/lang/String;)Z
    .locals 4

    .line 1604
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1607
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1609
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1610
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    .line 1611
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1612
    aget-object v2, p0, v1

    .line 1613
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1614
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1615
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1616
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->removeDirectory(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1619
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1622
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private removeOldApp()V
    .locals 6

    .line 1539
    new-instance v0, Lcom/netease/lotr/UserDataParser;

    invoke-direct {v0}, Lcom/netease/lotr/UserDataParser;-><init>()V

    const/4 v1, 0x0

    .line 1542
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "user_data.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "NeoXDevice"

    const-string v4, "Counld not find user_data.xml in assets"

    .line 1547
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    return-void

    .line 1555
    :cond_0
    invoke-virtual {v0, v2}, Lcom/netease/lotr/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1556
    invoke-virtual {v0}, Lcom/netease/lotr/UserDataParser;->hasTimestamp()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "NeoXDevice"

    const-string v1, "could not find timestamp in asset user_data.xml"

    .line 1559
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1563
    :cond_1
    invoke-virtual {v0}, Lcom/netease/lotr/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NeoXDevice"

    .line 1566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asset timestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v5, "user_data.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "NeoXDevice"

    const-string v4, "Counld not find user_data.xml in filesystem"

    .line 1575
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const-string v2, ""

    if-eqz v1, :cond_2

    .line 1582
    new-instance v3, Lcom/netease/lotr/UserDataParser;

    invoke-direct {v3}, Lcom/netease/lotr/UserDataParser;-><init>()V

    .line 1583
    invoke-virtual {v3, v1}, Lcom/netease/lotr/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1584
    invoke-virtual {v3}, Lcom/netease/lotr/UserDataParser;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1586
    invoke-virtual {v3}, Lcom/netease/lotr/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v1, "NeoXDevice"

    .line 1590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file timestamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1593
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_hook_class_loader_helper:Lcom/netease/lotr/HookClassLoaderHelper;

    if-eqz v0, :cond_3

    .line 1594
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_hook_class_loader_helper:Lcom/netease/lotr/HookClassLoaderHelper;

    invoke-virtual {v0}, Lcom/netease/lotr/HookClassLoaderHelper;->getNeoxPatchLibPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->removeDirectory(Ljava/lang/String;)Z

    .line 1596
    :cond_3
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->removeDirectory(Ljava/lang/String;)Z

    :cond_4
    return-void
.end method

.method private runGame()V
    .locals 3

    .line 1522
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    new-instance v0, Lcom/netease/lotr/HookClassLoaderHelper;

    invoke-direct {v0}, Lcom/netease/lotr/HookClassLoaderHelper;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_hook_class_loader_helper:Lcom/netease/lotr/HookClassLoaderHelper;

    .line 1525
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_hook_class_loader_helper:Lcom/netease/lotr/HookClassLoaderHelper;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/netease/lotr/HookClassLoaderHelper;->installDownloadedSo(Landroid/content/Context;Ljava/lang/String;)V

    .line 1528
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v2, "patch_config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher;->preparePatch()V

    goto :goto_0

    .line 1532
    :cond_1
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher;->startGame()V

    :goto_0
    return-void
.end method


# virtual methods
.method calcAssetToCopy(Ljava/lang/String;)J
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 755
    iget-object v0, v7, Lcom/netease/lotr/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 762
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "filelist.txt"

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 763
    invoke-static {v1}, Lcom/netease/lotr/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v9, v0

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/netease/lotr/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 777
    iget-object v0, v7, Lcom/netease/lotr/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 779
    iget-object v0, v7, Lcom/netease/lotr/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 780
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 781
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 786
    :cond_2
    :try_start_1
    invoke-virtual {v10, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    .line 788
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v1, v12

    :goto_2
    cmp-long v0, v1, v12

    if-eqz v0, :cond_4

    const-wide/16 v16, -0x1

    cmp-long v0, v1, v16

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-wide/from16 v16, v1

    goto :goto_5

    .line 800
    :cond_4
    :goto_4
    :try_start_2
    invoke-virtual {v10, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    .line 802
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 806
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide/from16 v16, v12

    .line 810
    :goto_5
    iget-object v0, v7, Lcom/netease/lotr/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    new-instance v6, Lcom/netease/lotr/Launcher$AssetInfo;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v12, v5

    move-object v13, v6

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/netease/lotr/Launcher$AssetInfo;-><init>(Lcom/netease/lotr/Launcher;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long v14, v14, v16

    :cond_5
    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_6
    return-wide v14
.end method

.method determineStorage()Z
    .locals 13

    .line 926
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->initStorageStatus()V

    .line 930
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "filelist.txt"

    .line 931
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 932
    invoke-static {v0}, Lcom/netease/lotr/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_asset_filelist:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 936
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    :goto_0
    const-string v0, "neox_config"

    const/4 v1, 0x0

    .line 938
    invoke-virtual {p0, v0, v1}, Lcom/netease/lotr/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NeoXRoot"

    const/4 v3, 0x0

    .line 939
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    .line 940
    iget-object v2, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    const-wide/32 v4, 0x100000

    const/4 v6, 0x1

    if-nez v2, :cond_5

    .line 942
    invoke-virtual {p0, v3}, Lcom/netease/lotr/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    .line 943
    iput-object v3, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    .line 944
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v7, v0, v3

    .line 946
    iget-wide v8, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    add-long/2addr v8, v4

    iget-wide v10, v7, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_0

    .line 948
    iput-object v7, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 952
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    if-nez v0, :cond_2

    return v1

    .line 958
    :cond_2
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "neox_root"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    .line 959
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 961
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    .line 963
    :cond_3
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    goto :goto_3

    .line 966
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    .line 967
    :goto_3
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->removeOldApp()V

    return v6

    .line 974
    :cond_5
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->removeOldApp()V

    .line 975
    iget-object v2, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    const-string v3, "Storage"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    .line 976
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/lotr/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    .line 977
    iget-wide v2, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    iget-wide v4, v0, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    return v1

    :cond_6
    return v6
.end method

.method downloadObb()V
    .locals 4

    const-wide/16 v0, 0x7d0

    .line 1682
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1684
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1687
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    iget-object v2, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 1688
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1690
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1695
    :try_start_1
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    const-class v2, Lcom/netease/lotr/ObbDownloaderService;

    .line 1696
    invoke-static {v1, v0, v2}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1707
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1710
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1711
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1712
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1713
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    const-string v1, "ic_launcher"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1714
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1715
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1716
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    const-string v1, "neox_launcher_check_update"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1717
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1718
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1719
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_bar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1721
    new-instance v0, Lcom/netease/lotr/Launcher$13;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Launcher$13;-><init>(Lcom/netease/lotr/Launcher;)V

    const-class v1, Lcom/netease/lotr/ObbDownloaderService;

    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 1806
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    goto :goto_1

    .line 1809
    :cond_1
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->requestReadStoragePermissionThenLaunch()V

    :goto_1
    return-void

    :catch_1
    move-exception v0

    .line 1698
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method

.method expansionFilesDelivered()Z
    .locals 7

    .line 1824
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1827
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Android/obb/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1835
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "main.%d.%s.obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "OBB"

    .line 1837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "obb path is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " obb file name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OBB"

    const-string v2, "obb not exist"

    .line 1843
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_obb_length:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "OBB"

    const-string v2, "obb length unmatch"

    .line 1852
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return v1

    :catch_0
    move-exception v0

    .line 1829
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method initStorageStatus()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 541
    :goto_0
    iget-object v2, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    new-instance v3, Lcom/netease/lotr/Launcher$StorageStatus;

    invoke-direct {v3, p0, p0, v1}, Lcom/netease/lotr/Launcher$StorageStatus;-><init>(Lcom/netease/lotr/Launcher;Lcom/netease/lotr/Launcher;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "storage"

    .line 546
    invoke-virtual {p0, v1}, Lcom/netease/lotr/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 551
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getVolumePaths"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getVolumeState"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v4, v2

    :catch_1
    move-object v5, v2

    :goto_1
    const-wide/16 v6, 0x0

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 561
    :try_start_2
    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 562
    :goto_2
    array-length v9, v4

    if-ge v8, v9, :cond_3

    .line 564
    new-array v9, v3, [Ljava/lang/Object;

    aget-object v10, v4, v8

    aput-object v10, v9, v0

    invoke-virtual {v5, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "mounted"

    .line 565
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 567
    aget-object v9, v4, v8

    invoke-static {v9}, Lcom/netease/lotr/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v9

    if-nez v8, :cond_1

    .line 570
    iget-object v11, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v11, v11, v0

    aget-object v12, v4, v8

    iput-object v12, v11, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 571
    iget-object v11, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v11, v11, v0

    iput-wide v9, v11, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    goto :goto_3

    .line 575
    :cond_1
    iget-object v11, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v11, v11, v3

    iget-wide v11, v11, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v13, v11, v6

    if-nez v13, :cond_2

    .line 577
    iget-object v11, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v11, v11, v3

    aget-object v12, v4, v8

    iput-object v12, v11, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 578
    iget-object v11, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v11, v11, v3

    iput-wide v9, v11, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 594
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    .line 590
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v1

    .line 586
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 598
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v3

    iget-wide v3, v1, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v1, v3, v6

    if-nez v1, :cond_4

    .line 600
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 602
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 603
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/lotr/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    .line 606
    :cond_4
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-wide v3, v1, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v1, v3, v6

    if-lez v1, :cond_5

    .line 608
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 609
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 612
    :cond_5
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v2, v3, v2

    iget-object v2, v2, Lcom/netease/lotr/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    const-string v1, "neox_config"

    .line 615
    invoke-virtual {p0, v1, v0}, Lcom/netease/lotr/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "Storage"

    .line 616
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 617
    iget-object v2, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_6

    .line 619
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    .line 625
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v3, v1, v6

    if-lez v3, :cond_7

    .line 627
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_storage_statuses:[Lcom/netease/lotr/Launcher$StorageStatus;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-void
.end method

.method isCanReadObb()Z
    .locals 7

    .line 1860
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OBB"

    const-string v2, "isCanReadObb -----------1"

    .line 1861
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1864
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Android/obb/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1873
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "main.%d.%s.obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1874
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OBB"

    const-string v3, "isCanReadObb -----------3"

    .line 1876
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "OBB"

    const-string v2, "isCanReadObb -----------4"

    .line 1882
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "OBB"

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCanReadObb -----------5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception v0

    .line 1866
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "OBB"

    const-string v2, "isCanReadObb -----------2"

    .line 1867
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method launch()V
    .locals 7

    const/4 v0, 0x1

    .line 998
    iput-boolean v0, p0, Lcom/netease/lotr/Launcher;->m_is_launched:Z

    .line 1000
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->determineStorage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1002
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1005
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 1009
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "NeoXDevice"

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be a directory!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->finish()V

    return-void

    .line 1016
    :cond_1
    new-instance v1, Lcom/netease/lotr/Launcher$2;

    invoke-direct {v1, p0}, Lcom/netease/lotr/Launcher$2;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1024
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1026
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1032
    :cond_2
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Documents/PlatformConfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1033
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    .line 1040
    :cond_3
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "PlatformConfig.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 1045
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    invoke-virtual {v1, v0}, Lcom/netease/lotr/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    .line 1048
    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1052
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1055
    :goto_3
    iget-wide v0, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_6

    .line 1057
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1058
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1060
    new-instance v0, Lcom/netease/lotr/Launcher$CopyFile;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Launcher$CopyFile;-><init>(Lcom/netease/lotr/Launcher;)V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_copy_file:Lcom/netease/lotr/Launcher$CopyFile;

    .line 1061
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_copy_file:Lcom/netease/lotr/Launcher$CopyFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1063
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 1065
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1067
    :cond_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    .line 1068
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    new-instance v2, Lcom/netease/lotr/Launcher$3;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$3;-><init>(Lcom/netease/lotr/Launcher;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_5

    .line 1080
    :cond_6
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    new-instance v1, Lcom/netease/lotr/Launcher$4;

    invoke-direct {v1, p0}, Lcom/netease/lotr/Launcher$4;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/netease/lotr/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 1092
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "neox_launcher_asset_size_to_copy"

    invoke-direct {p0, v2}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    .line 1094
    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    if-nez v1, :cond_8

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "neox_launcher_no_enough_space"

    invoke-direct {p0, v2}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1102
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    iget-wide v2, v0, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    .line 1104
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ic_launcher"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_cancel"

    .line 1108
    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/lotr/Launcher$5;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$5;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_5
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    invoke-static {p0}, Lcom/netease/push/utils/NotifyMessage;->getFrom(Landroid/app/Activity;)Lcom/netease/push/utils/NotifyMessage;

    move-result-object p1

    .line 275
    invoke-direct {p0, p1}, Lcom/netease/lotr/Launcher;->onPushNotification(Lcom/netease/push/utils/NotifyMessage;)V

    .line 277
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->isYYKJPackage()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->onCreateByYYKJ()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->finish()V

    return-void

    .line 290
    :cond_1
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    .line 291
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 292
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 293
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 294
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 295
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 296
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "neox_launcher_copy_data"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 297
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "ic_launcher"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 298
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 299
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x20080

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 301
    invoke-static {}, Lcom/netease/lotr/Launcher;->getCoreNumber()I

    move-result p1

    .line 303
    new-instance v1, Lcom/netease/lotr/PlatformConfigParser;

    invoke-direct {v1, p0}, Lcom/netease/lotr/PlatformConfigParser;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    .line 304
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    const-string v2, "SDK_INT"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v3}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 306
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    const-string v2, "CORE_NUM"

    invoke-virtual {v1, v2, p1}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 307
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    const-string v2, "MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    const-string v2, "MANUFACTURER"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/lotr/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NeoX"

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK_INT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NeoX"

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELEASE is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NeoX"

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CORE_NUM is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "NeoX"

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODEL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "NeoX"

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANUFACTURER is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-boolean v0, p0, Lcom/netease/lotr/Launcher;->m_is_gl_loaded:Z

    .line 316
    new-instance p1, Landroid/opengl/GLSurfaceView;

    invoke-direct {p1, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    .line 317
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_3

    .line 319
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_2

    .line 321
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    .line 328
    :cond_3
    :goto_0
    iput-object p0, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    .line 329
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 330
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/netease/lotr/Launcher$1;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Launcher$1;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 507
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, p1}, Lcom/netease/lotr/Launcher;->setContentView(Landroid/view/View;)V

    .line 510
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 521
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 522
    invoke-static {p1}, Lcom/netease/push/utils/NotifyMessage;->getFrom(Landroid/content/Intent;)Lcom/netease/push/utils/NotifyMessage;

    move-result-object p1

    .line 523
    invoke-direct {p0, p1}, Lcom/netease/lotr/Launcher;->onPushNotification(Lcom/netease/push/utils/NotifyMessage;)V

    .line 524
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->isYYKJPackage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->onNewIntentByYYKJ()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 820
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_2

    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->getTargetSdkVersion()I

    move-result p2

    if-lt p2, v0, :cond_2

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 839
    :pswitch_0
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->launch()V

    goto :goto_0

    .line 845
    :cond_0
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-virtual {p1}, Lcom/netease/lotr/Launcher;->finish()V

    goto :goto_0

    .line 826
    :pswitch_1
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->downloadObb()V

    goto :goto_0

    .line 832
    :cond_1
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-virtual {p1}, Lcom/netease/lotr/Launcher;->finish()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e82
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 735
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 738
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_1

    .line 740
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 742
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/netease/lotr/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method patching()V
    .locals 7

    .line 1393
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1394
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "neox_launcher_updating"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1395
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1396
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1397
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "%2d/%2dKB"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Lcom/netease/lotr/Launcher$PatchFile;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Launcher$PatchFile;-><init>(Lcom/netease/lotr/Launcher;)V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_file:Lcom/netease/lotr/Launcher$PatchFile;

    .line 1400
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_patch_file:Lcom/netease/lotr/Launcher$PatchFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1401
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1403
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    .line 1404
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    new-instance v2, Lcom/netease/lotr/Launcher$9;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$9;-><init>(Lcom/netease/lotr/Launcher;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method preparePatch()V
    .locals 3

    .line 1279
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1289
    :cond_1
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->savePreference()V

    .line 1291
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    .line 1292
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1293
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1294
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1295
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1296
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1297
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1298
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x20080

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1299
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "neox_launcher_check_update"

    invoke-direct {p0, v2}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1300
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1301
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1302
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "c++_shared"

    .line 1305
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "client"

    .line 1307
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1309
    new-instance v0, Lcom/netease/lotr/Launcher$6;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Launcher$6;-><init>(Lcom/netease/lotr/Launcher;)V

    const/4 v1, 0x0

    .line 1351
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method requestReadStoragePermissionThenLaunch()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 904
    invoke-direct {p0, v0}, Lcom/netease/lotr/Launcher;->getPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OBB"

    const-string v1, "got read permission"

    .line 906
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->launch()V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->isCanReadObb()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OBB"

    const-string v1, "no read permission can read"

    .line 912
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->launch()V

    goto :goto_0

    :cond_1
    const-string v0, "OBB"

    const-string v1, "request read permission"

    .line 917
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 918
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e83

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method requestWriteStoragePermissionThenDownloadObb()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 887
    invoke-direct {p0, v0}, Lcom/netease/lotr/Launcher;->getPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OBB"

    const-string v1, "got write permission"

    .line 889
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->downloadObb()V

    goto :goto_0

    :cond_0
    const-string v0, "OBB"

    const-string v1, "request write permission"

    .line 895
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 896
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e82

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method savePreference()V
    .locals 7

    const-string v0, "neox_config"

    const/4 v1, 0x0

    .line 636
    invoke-virtual {p0, v0, v1}, Lcom/netease/lotr/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Storage"

    .line 638
    iget-object v4, p0, Lcom/netease/lotr/Launcher;->m_current_storage:Lcom/netease/lotr/Launcher$StorageStatus;

    iget v4, v4, Lcom/netease/lotr/Launcher$StorageStatus;->Type:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NeoXRoot"

    iget-object v4, p0, Lcom/netease/lotr/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "DEVICE_RELEASE"

    const-string v4, ""

    .line 642
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "NeoX"

    .line 643
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current            device_release_version_value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "NeoX"

    .line 644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save in preference device_release_version_value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    .line 646
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 648
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 653
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lotr/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 657
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 659
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "need_remove_shader_cache"

    .line 660
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 663
    iget v0, p0, Lcom/netease/lotr/Launcher;->m_real_width:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/lotr/Launcher;->m_real_height:I

    if-eqz v0, :cond_2

    const-string v0, "RealWidth"

    .line 665
    iget v1, p0, Lcom/netease/lotr/Launcher;->m_real_width:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RealHeight"

    iget v2, p0, Lcom/netease/lotr/Launcher;->m_real_height:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_platform_config:Lcom/netease/lotr/PlatformConfigParser;

    invoke-virtual {v0}, Lcom/netease/lotr/PlatformConfigParser;->getOptions()Ljava/util/HashMap;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 670
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    goto :goto_1

    .line 672
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showCellularConfirm()V
    .locals 3

    .line 1636
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_launcher_warn"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_launcher_not_wifi"

    .line 1637
    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_launcher_continue"

    .line 1638
    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/lotr/Launcher$10;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$10;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_launcher_stop"

    .line 1647
    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/lotr/Launcher$11;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$11;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1656
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 1657
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1658
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showFinishMessage(Ljava/lang/String;)V
    .locals 2

    .line 1663
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_launcher_warn"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1664
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "ic_launcher"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string p1, "neox_abort"

    .line 1665
    invoke-direct {p0, p1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lcom/netease/lotr/Launcher$12;

    invoke-direct {v1, p0}, Lcom/netease/lotr/Launcher$12;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1673
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1674
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1675
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method startGame()V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 685
    :cond_1
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->savePreference()V

    .line 686
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    const-class v2, Lcom/netease/lotr/Client;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 688
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "new_so"

    .line 691
    sget-boolean v3, Lcom/netease/lotr/HookClassLoaderHelper;->m_need_use_new_so:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 692
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/high16 v1, 0x14000000

    .line 696
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 701
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 704
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 707
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 713
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 716
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-virtual {v1, v0}, Lcom/netease/lotr/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 717
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->finish()V

    return-void
.end method

.method startPatch()V
    .locals 3

    .line 1358
    invoke-direct {p0}, Lcom/netease/lotr/Launcher;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1360
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1364
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_launcher_warn"

    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "neox_launcher_not_wifi"

    .line 1365
    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/lotr/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_launcher_continue"

    .line 1366
    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/lotr/Launcher$7;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$7;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_launcher_stop"

    .line 1376
    invoke-direct {p0, v1}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/lotr/Launcher$8;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$8;-><init>(Lcom/netease/lotr/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1386
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1361
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_launcher:Lcom/netease/lotr/Launcher;

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher;->patching()V

    :goto_1
    return-void
.end method

.method tryOnLaunch()V
    .locals 1

    .line 1815
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->expansionFilesDelivered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1816
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->requestWriteStoragePermissionThenDownloadObb()V

    goto :goto_0

    .line 1818
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->requestReadStoragePermissionThenLaunch()V

    :goto_0
    return-void
.end method

.method updateCopiedSize(J)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 728
    iget-wide v0, p0, Lcom/netease/lotr/Launcher;->m_size_to_copy:J

    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 729
    iget-object p2, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method updateCopyingFile(Ljava/lang/String;)V
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "neox_launcher_copying"

    invoke-direct {p0, v0}, Lcom/netease/lotr/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 723
    iget-object v0, p0, Lcom/netease/lotr/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
