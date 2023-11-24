.class public Lcom/netease/lotr/Client;
.super Lcom/netease/neox/NeoXClient;
.source "Client.java"

# interfaces
.implements Lcom/netease/lotr/IScreenShotListener;


# static fields
.field public static final CHAT_REQUEST_RECORD_AUDIO:I = 0x3e81

.field static final MBB_ABORT:I = 0x5

.field static final MBB_CANCEL:I = 0x1

.field static final MBB_IGNORE:I = 0x6

.field static final MBB_NO:I = 0x3

.field static final MBB_OK:I = 0x0

.field static final MBB_RETRY:I = 0x4

.field static final MBB_YES:I = 0x2

.field static final MBT_ABORTRETRYIGNORE:I = 0x2

.field static final MBT_OK:I = 0x0

.field static final MBT_OKCANCEL:I = 0x1

.field static final MBT_RETRYCANCEL:I = 0x5

.field static final MBT_YESNO:I = 0x4

.field static final MBT_YESNOCANCEL:I = 0x3

.field public static final REQUEST_READ_EXTERNAL_STORAGE:I = 0x3e81


# instance fields
.field private m_audiovolume_observer:Lcom/netease/lotr/AudioVolumeContentObserver;

.field private m_clipboard:Landroid/content/ClipboardManager;

.field private m_current_network_type:I

.field m_image_picker:Lcom/netease/lotr/ImagePicker;

.field private m_input_view:Lcom/netease/lotr/InputView;

.field private m_is_cutout:Z

.field m_is_push_manager_init:Z

.field private m_is_vkb_shown:Z

.field private m_modalDialogResult:I

.field private m_movie_view:Lcom/netease/lotr/MovieView;

.field private m_neox_config:Landroid/content/SharedPreferences;

.field private m_neox_notif:Landroid/content/SharedPreferences;

.field private m_neox_root:Ljava/lang/String;

.field m_profile_have_runnable:Z

.field m_profile_info_timerHandler:Landroid/os/Handler;

.field m_profile_info_timerRunnable:Ljava/lang/Runnable;

.field private m_ringermode_receiver:Lcom/netease/lotr/RingerModeReceiver;

.field private m_root_view_height:I

.field private m_root_view_width:I

.field private m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

.field private m_udid:Ljava/lang/String;

.field private m_view:Lcom/netease/neox/NeoXView;

.field private m_web_view:Lcom/netease/lotr/NeoXWebView;

.field neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/netease/neox/NeoXClient;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_udid:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_view:Lcom/netease/neox/NeoXView;

    .line 162
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_neox_root:Ljava/lang/String;

    const/4 v1, 0x0

    .line 167
    iput v1, p0, Lcom/netease/lotr/Client;->m_root_view_height:I

    .line 168
    iput v1, p0, Lcom/netease/lotr/Client;->m_root_view_width:I

    .line 172
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_ringermode_receiver:Lcom/netease/lotr/RingerModeReceiver;

    .line 173
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_audiovolume_observer:Lcom/netease/lotr/AudioVolumeContentObserver;

    .line 175
    iput-boolean v1, p0, Lcom/netease/lotr/Client;->m_is_vkb_shown:Z

    .line 177
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    .line 179
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 180
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 181
    iput-boolean v1, p0, Lcom/netease/lotr/Client;->m_profile_have_runnable:Z

    .line 183
    iput-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    .line 185
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_web_view:Lcom/netease/lotr/NeoXWebView;

    .line 187
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    .line 193
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    .line 195
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 201
    iput-boolean v1, p0, Lcom/netease/lotr/Client;->m_is_cutout:Z

    .line 1331
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_image_picker:Lcom/netease/lotr/ImagePicker;

    .line 1913
    iput-boolean v1, p0, Lcom/netease/lotr/Client;->m_is_push_manager_init:Z

    return-void
.end method

.method private static final StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 7

    .line 2930
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2932
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 2933
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 2935
    invoke-virtual {v5, p4, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2938
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2939
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 2937
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2942
    new-instance p4, Landroid/content/ContentValues;

    const/4 p5, 0x4

    invoke-direct {p4, p5}, Landroid/content/ContentValues;-><init>(I)V

    const-string p5, "kind"

    .line 2943
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p5, "image_id"

    long-to-int p2, p2

    .line 2944
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "height"

    .line 2945
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "width"

    .line 2946
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2948
    sget-object p2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    .line 2951
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    .line 2953
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2954
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p3

    :catch_1
    return-object p3
.end method

.method static synthetic access$000(Lcom/netease/lotr/Client;)I
    .locals 0

    .line 144
    iget p0, p0, Lcom/netease/lotr/Client;->m_root_view_width:I

    return p0
.end method

.method static synthetic access$002(Lcom/netease/lotr/Client;I)I
    .locals 0

    .line 144
    iput p1, p0, Lcom/netease/lotr/Client;->m_root_view_width:I

    return p1
.end method

.method static synthetic access$100(Lcom/netease/lotr/Client;)I
    .locals 0

    .line 144
    iget p0, p0, Lcom/netease/lotr/Client;->m_root_view_height:I

    return p0
.end method

.method static synthetic access$102(Lcom/netease/lotr/Client;I)I
    .locals 0

    .line 144
    iput p1, p0, Lcom/netease/lotr/Client;->m_root_view_height:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/lotr/Client;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/netease/lotr/Client;->m_is_vkb_shown:Z

    return p0
.end method

.method static synthetic access$202(Lcom/netease/lotr/Client;Z)Z
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/netease/lotr/Client;->m_is_vkb_shown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/lotr/Client;)Lcom/netease/lotr/InputView;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/lotr/Client;)Lcom/netease/neox/NeoXView;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/netease/lotr/Client;->m_view:Lcom/netease/neox/NeoXView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/lotr/Client;)I
    .locals 0

    .line 144
    iget p0, p0, Lcom/netease/lotr/Client;->m_current_network_type:I

    return p0
.end method

.method static synthetic access$502(Lcom/netease/lotr/Client;I)I
    .locals 0

    .line 144
    iput p1, p0, Lcom/netease/lotr/Client;->m_current_network_type:I

    return p1
.end method

.method static synthetic access$600(Lcom/netease/lotr/Client;)Lcom/netease/lotr/NeoXWebView;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/netease/lotr/Client;->m_web_view:Lcom/netease/lotr/NeoXWebView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/netease/lotr/Client;Lcom/netease/lotr/NeoXWebView;)Lcom/netease/lotr/NeoXWebView;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/netease/lotr/Client;->m_web_view:Lcom/netease/lotr/NeoXWebView;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netease/lotr/Client;I)I
    .locals 0

    .line 144
    iput p1, p0, Lcom/netease/lotr/Client;->m_modalDialogResult:I

    return p1
.end method

.method private calcNetmaskByPrefixLength(S)Ljava/lang/String;
    .locals 5

    if-ltz p1, :cond_3

    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    sub-int/2addr v0, p1

    shl-int p1, v1, v0

    const/4 v0, 0x4

    .line 1227
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v4, v3, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 1231
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_2
    const-string p1, "255.255.255.255"

    return-object p1
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getTargetSdkVersion()I
    .locals 3

    const/4 v0, 0x0

    .line 738
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 739
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    return v0
.end method

.method public static final insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "insertImage"

    .line 2880
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    .line 2881
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "description"

    .line 2882
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string p3, "image/jpeg"

    .line 2883
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "datetaken"

    .line 2886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 2892
    :try_start_0
    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    .line 2895
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2897
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2899
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 2902
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    const/4 p1, 0x1

    .line 2904
    invoke-static {p0, v6, v7, p1, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x42480000    # 50.0f

    const/4 v10, 0x3

    move-object v4, p0

    .line 2906
    invoke-static/range {v4 .. v10}, Lcom/netease/lotr/Client;->StoreThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2899
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 2900
    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "Failed to create thumbnail, removing original"

    .line 2908
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    invoke-virtual {p0, p3, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p3, p2

    :goto_0
    const-string v1, "Failed to insert image"

    .line 2913
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_1

    .line 2915
    invoke-virtual {p0, p3, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    move-object p3, p2

    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 2921
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x1000

    .line 2418
    new-array v0, v0, [B

    .line 2419
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const/4 v2, 0x0

    .line 2422
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2423
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 2424
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-lez p1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 2429
    aget-byte v6, v0, v5

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2433
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2440
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2444
    :catch_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    nop

    goto :goto_3

    :catch_2
    nop

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_2

    .line 2440
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2444
    :catch_3
    :cond_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2445
    throw p1

    :catch_4
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_5

    :catch_5
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    .line 2440
    :cond_3
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 2444
    :catch_6
    :cond_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    const-string v1, ".png"

    .line 2800
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2801
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_2
    const-string v1, ".jpg"

    .line 2802
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2803
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_3
    const-string v1, ".webp"

    .line 2804
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2805
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 2810
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2815
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x64

    .line 2823
    invoke-virtual {p1, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 2828
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2830
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    .line 2817
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_5
    return v0
.end method

.method private setDisplayCutoutModeShortEdges()V
    .locals 6

    const-string v0, "NeoX"

    const-string v1, "setDisplayCutoutModeShortEdges"

    .line 584
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Build.VERSION.SDK_INT"

    const-string v1, "%d"

    const/4 v2, 0x1

    .line 585
    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "layoutInDisplayCutoutMode"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 590
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 591
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 593
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "NeoX"

    const-string v1, "setDisplayCutoutModeShortEdges failed"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const-string v0, "NeoX"

    const-string v1, "finish setDisplayCutoutModeShortEdges"

    .line 596
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    const-string v1, "NeoX"

    const-string v2, "finish setDisplayCutoutModeShortEdges"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    throw v0
.end method

.method private setNavigationBarVisibility()V
    .locals 2

    .line 574
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1606

    goto :goto_0

    :cond_0
    const/16 v0, 0x606

    .line 578
    :goto_0
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public CallBaseOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 288
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method CheckSelfPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 1044
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1045
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public EnableProfile(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 2116
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/netease/lotr/Client;->m_profile_have_runnable:Z

    if-eqz p1, :cond_1

    .line 2118
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netease/lotr/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2119
    iput-boolean p1, p0, Lcom/netease/lotr/Client;->m_profile_have_runnable:Z

    goto :goto_0

    .line 2123
    :cond_0
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/netease/lotr/Client;->m_profile_have_runnable:Z

    if-nez p1, :cond_1

    .line 2125
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netease/lotr/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 2126
    iput-boolean p1, p0, Lcom/netease/lotr/Client;->m_profile_have_runnable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public MarkTrepnProfilerState(ILjava/lang/String;)V
    .locals 2

    .line 2133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.quicinc.Trepn.UpdateAppState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.quicinc.Trepn.UpdateAppState.Value"

    .line 2134
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.quicinc.Trepn.UpdateAppState.Value.Desc"

    .line 2135
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2136
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public NeedRemoveShaderCache()Z
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v1, "need_remove_shader_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public SaveResolutionToSharedPreferences(II)V
    .locals 2

    .line 2161
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RealWidth"

    .line 2162
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "RealHeight"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2163
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method ScheduleNoticeOnce(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "LOTR_NX"

    const-string v1, "Client.ScheduleNoticeOnce, delay_seconds: %d, noticeId: %s, title: %s, text: %s, ext: %s"

    const/4 v2, 0x5

    .line 1948
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v5, 0x2

    aput-object p3, v2, v5

    const/4 v5, 0x3

    aput-object p4, v2, v5

    const/4 v5, 0x4

    aput-object p5, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-virtual {p0, p2}, Lcom/netease/lotr/Client;->cancelNotice(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1955
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1956
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1958
    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1959
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1962
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1966
    :cond_0
    :goto_0
    invoke-static {p2, p3, p4, p5}, Lcom/netease/pushclient/NativePushManager;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "LOTR_NX"

    const-string p3, "Client.ScheduleNoticeOnce newAlarm failed!, noticeId: %s"

    .line 1967
    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1971
    :cond_1
    invoke-static {p2, p1}, Lcom/netease/pushclient/NativePushManager;->setOnceLater(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "LOTR_NX"

    const-string p3, "Client.ScheduleNoticeOnce setOnceLater failed!, noticeId: %s"

    .line 1972
    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1976
    :cond_2
    invoke-static {p2}, Lcom/netease/pushclient/NativePushManager;->startAlarm(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "LOTR_NX"

    const-string p3, "Client.ScheduleNoticeOnce startAlarm failed!, noticeId: %s"

    .line 1977
    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p1, "LOTR_NX"

    const-string p3, "Client.ScheduleNoticeOnce success, noticeId: %s"

    .line 1981
    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method ScheduleNoticeRepeat(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "LOTR_NX"

    const-string v1, "Client.ScheduleNoticeRepeat, hour: %d, min: %d, noticeId: %s, title: %s, text: %s"

    const/4 v2, 0x5

    .line 1987
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-virtual {p0, p3}, Lcom/netease/lotr/Client;->cancelNotice(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1996
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1997
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1999
    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2003
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2006
    :cond_0
    :goto_0
    invoke-static {p3, p4, p5, p6}, Lcom/netease/pushclient/NativePushManager;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p1, "LOTR_NX"

    const-string p2, "Client.ScheduleNoticeRepeat newAlarm failed!, noticeId: %s"

    .line 2007
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p3, p4, v4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p4, "GMT+8"

    .line 2011
    invoke-static {p3, p1, p2, v5, p4}, Lcom/netease/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "LOTR_NX"

    const-string p2, "Client.ScheduleNoticeRepeat setAlarmTime failed!, noticeId: %s"

    .line 2012
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p3, p4, v4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 p1, 0x7f

    .line 2016
    invoke-static {p3, p1}, Lcom/netease/pushclient/NativePushManager;->setWeekRepeat(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "LOTR_NX"

    const-string p2, "Client.ScheduleNoticeRepeat setWeekRepeat failed!, noticeId: %s"

    .line 2017
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p3, p4, v4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2021
    :cond_3
    invoke-static {p3}, Lcom/netease/pushclient/NativePushManager;->startAlarm(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "LOTR_NX"

    const-string p2, "Client.ScheduleNoticeRepeat startAlarm failed!, noticeId: %s"

    .line 2022
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p3, p4, v4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p1, "LOTR_NX"

    const-string p2, "Client.ScheduleNoticeRepeat success, noticeId: %s"

    .line 2026
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p3, p4, v4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method SetAndroidUnisdkDebugMode(I)V
    .locals 3

    const-string v0, "NeoxDevice"

    .line 1680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAndroidUnisdkDebugModeAble in neox1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method cancelAllNotifications()V
    .locals 3

    const-string v0, "LOTR_NX"

    const-string v1, "Client.cancelAllNotifications"

    const/4 v2, 0x0

    .line 2040
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-static {}, Lcom/netease/pushclient/NativePushManager;->removeAllAlarms()Z

    return-void
.end method

.method cancelNotice(Ljava/lang/String;)V
    .locals 4

    const-string v0, "LOTR_NX"

    const-string v1, "Client.cancelNotice, noticeId: %s"

    const/4 v2, 0x1

    .line 2032
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-static {p1}, Lcom/netease/pushclient/NativePushManager;->stopPush(Ljava/lang/String;)Z

    .line 2035
    invoke-static {p1}, Lcom/netease/pushclient/NativePushManager;->removeAlarm(Ljava/lang/String;)Z

    return-void
.end method

.method checkRecordingPermission()Z
    .locals 3

    const/4 v0, 0x0

    .line 2640
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/lotr/Client;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Documents/test.amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2641
    invoke-virtual {p0, v1}, Lcom/netease/lotr/Client;->startRecording(Ljava/lang/String;)Z

    .line 2642
    sget-object v1, Lcom/netease/lotr/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    .line 2643
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public clearChannel()V
    .locals 0

    return-void
.end method

.method public final cropImage(Ljava/lang/String;IIIILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    if-lez p4, :cond_8

    if-gtz p5, :cond_1

    goto :goto_2

    .line 2764
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2765
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2766
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2767
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2768
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_7

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int v3, p2, p4

    if-gt v3, v2, :cond_6

    add-int v2, p3, p5

    if-le v2, v1, :cond_3

    goto :goto_0

    .line 2777
    :cond_3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 2782
    :cond_4
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5

    return v0

    .line 2787
    :cond_5
    invoke-direct {p0, p1, p6}, Lcom/netease/lotr/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 673
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 675
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 676
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 678
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move v2, v1

    const/4 v1, 0x0

    .line 682
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 684
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 685
    invoke-static {v2}, Lcom/netease/neox/NativeInterface;->NativeOnChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    const/16 p1, 0x18

    if-ne v1, p1, :cond_2

    const/4 p1, 0x3

    .line 694
    invoke-virtual {p0, p1}, Lcom/netease/lotr/Client;->setVolumeControlStream(I)V

    const-string v1, "audio"

    .line 695
    invoke-virtual {p0, v1}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 696
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 698
    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2
    return v0
.end method

.method public enableAudioVolumeListener(Z)V
    .locals 3

    if-nez p1, :cond_2

    const-string p1, "NeoX"

    const-string v0, "[kk]Unregister audio volume listener......"

    .line 953
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_ringermode_receiver:Lcom/netease/lotr/RingerModeReceiver;

    if-eqz p1, :cond_0

    .line 955
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_ringermode_receiver:Lcom/netease/lotr/RingerModeReceiver;

    invoke-virtual {p0, p1}, Lcom/netease/lotr/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 956
    :cond_0
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_audiovolume_observer:Lcom/netease/lotr/AudioVolumeContentObserver;

    if-eqz p1, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/lotr/Client;->m_audiovolume_observer:Lcom/netease/lotr/AudioVolumeContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void

    .line 962
    :cond_2
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_ringermode_receiver:Lcom/netease/lotr/RingerModeReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/netease/lotr/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "audio"

    .line 966
    invoke-virtual {p0, p1}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    .line 968
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x0

    .line 969
    invoke-static {v0, v2}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(IF)V

    .line 970
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 971
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_audiovolume_observer:Lcom/netease/lotr/AudioVolumeContentObserver;

    int-to-float v1, v1

    iput v1, p1, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volume:F

    .line 973
    :cond_4
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/netease/lotr/Client;->m_audiovolume_observer:Lcom/netease/lotr/AudioVolumeContentObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "NeoX"

    const-string v0, "[kk]Register Audio Volume Listener Done!!"

    .line 974
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAndroidBuildHardware()Ljava/lang/String;
    .locals 1

    .line 2059
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method getAvailableInternalMemorySize()F
    .locals 4

    .line 2660
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2661
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 2663
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    long-to-float v1, v2

    mul-float v0, v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method getBatteryLevel()F
    .locals 4

    .line 2479
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netease/lotr/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, -0x1

    .line 2480
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 2481
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    return v1

    :cond_1
    :goto_0
    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method getBrightness()F
    .locals 6

    .line 2528
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/netease/lotr/Client$24;

    invoke-direct {v1, p0}, Lcom/netease/lotr/Client$24;-><init>(Lcom/netease/lotr/Client;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2546
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2548
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 2551
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 2552
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v2

    .line 2554
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Error"

    const-string v3, "Call has thrown an exception"

    .line 2555
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const-string v1, "getBrightness"

    const-string v2, "%f"

    const/4 v3, 0x1

    .line 2557
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    .line 707
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClipboardText()Ljava/lang/String;
    .locals 2

    .line 2070
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2075
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2078
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentProcessName()Ljava/lang/String;
    .locals 5

    .line 1120
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, ""

    const-string v2, "activity"

    .line 1123
    invoke-virtual {p0, v2}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1124
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1125
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_0

    .line 1126
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 2

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 244
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDistroId()Ljava/lang/String;
    .locals 4

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 220
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "com.netease.apk_distro/config.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "distro_id"

    .line 231
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0

    :catch_1
    const-string v0, ""

    return-object v0
.end method

.method getGovernorInfo()Ljava/lang/String;
    .locals 7

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const/16 v1, 0xa

    .line 2451
    invoke-direct {p0, v0, v1}, Lcom/netease/lotr/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 2452
    invoke-direct {p0, v2, v1}, Lcom/netease/lotr/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 2453
    invoke-direct {p0, v3, v1}, Lcom/netease/lotr/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 2454
    invoke-direct {p0, v4, v1}, Lcom/netease/lotr/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    .line 2455
    invoke-direct {p0, v5, v1}, Lcom/netease/lotr/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    .line 2457
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v1, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2459
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 1245
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1248
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public final getImageHeight(Ljava/lang/String;)I
    .locals 2

    .line 2711
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2712
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2713
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2714
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    return p1
.end method

.method public final getImageWidth(Ljava/lang/String;)I
    .locals 2

    .line 2703
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2704
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2705
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2706
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    return p1
.end method

.method public getInternalDataPath()Ljava/lang/String;
    .locals 1

    .line 2619
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getIpInfo()Ljava/lang/String;
    .locals 9

    .line 1158
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "wlan0"

    .line 1159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "en0"

    .line 1160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "eth0"

    .line 1161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "NeoX"

    const-string v3, "get ip: none wifi ip"

    .line 1164
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "rmnet0"

    .line 1165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ppp0"

    .line 1166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1171
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 1172
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1177
    :cond_2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1181
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 1189
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    .line 1190
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_1

    .line 1192
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 1193
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1195
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v6, v6

    const/4 v8, 0x4

    if-eq v6, v8, :cond_5

    goto :goto_3

    .line 1200
    :cond_5
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    const-string v2, "NeoX"

    .line 1203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netName: ip is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " netmask is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/netease/lotr/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/netease/lotr/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const-string v0, "NeoX"

    const-string v1, "no ip address found"

    .line 1208
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "NeoX"

    const-string v1, "encounter error when find ip"

    .line 1213
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public getLocaleInfo()Ljava/lang/String;
    .locals 1

    .line 565
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaliGPUCoreCount()I
    .locals 5

    const/4 v0, -0x1

    .line 2567
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/sys/class/misc/mali0/device/core_mask"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    .line 2572
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2575
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AVAILABLE CORE MASK : "

    .line 2577
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    const/16 v1, 0x16

    .line 2579
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0X"

    .line 2580
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 2583
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-double/2addr v1, v3

    double-to-int v0, v1

    :catch_0
    :cond_2
    return v0
.end method

.method getMetricsDensity()F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1543
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1544
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1545
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1546
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method getMetricsDensityDpi()F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1552
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1553
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1554
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1555
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    return v0
.end method

.method getMetricsHeight()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1516
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1517
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1518
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1519
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method getMetricsScaledDensity()F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1561
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1562
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1563
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1564
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return v0
.end method

.method getMetricsWidth()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1507
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1508
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1509
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1510
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method getMetricsXdpi()F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1525
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1526
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1527
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1528
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    return v0
.end method

.method getMetricsYdpi()F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1534
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1535
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1536
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1537
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    return v0
.end method

.method public getNeoXConfig(Ljava/lang/String;Z)Z
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getNeoXConfigs()[Ljava/lang/String;
    .locals 4

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 721
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 723
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 725
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getNetworkType()I
    .locals 3

    const-string v0, "connectivity"

    .line 1755
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1756
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1760
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1762
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    .line 1764
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNotificationExt()Ljava/lang/String;
    .locals 1

    .line 560
    sget-object v0, Lcom/netease/lotr/Launcher;->notifyMsgExt:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenerInfo()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    const-string v0, ""

    .line 1136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getReferrer()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1149
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPermissionGranted(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 1440
    invoke-direct {p0}, Lcom/netease/lotr/Client;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 1442
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

.method getPushToken()Ljava/lang/String;
    .locals 1

    .line 2047
    iget-boolean v0, p0, Lcom/netease/lotr/Client;->m_is_push_manager_init:Z

    if-eqz v0, :cond_0

    .line 2049
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getDevId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getRealHeight()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1588
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1589
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1590
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1591
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 1592
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1594
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1596
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1598
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    .line 1600
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getRealMetricsDensity()F
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1630
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1631
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1632
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1633
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1635
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1636
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method getRealMetricsDensityDpi()F
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1642
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1643
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1644
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1645
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1647
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1648
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    return v0
.end method

.method getRealMetricsScaledDensity()F
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1654
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1655
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1656
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1657
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1659
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1660
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return v0
.end method

.method getRealMetricsXdpi()F
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1606
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1607
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1608
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1609
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1611
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1612
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    return v0
.end method

.method getRealMetricsYdpi()F
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1618
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1619
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1620
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1621
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1623
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1624
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    return v0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 947
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getRealSizeWithoutLockLandscape()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getRealSizeLockLandscape()Landroid/graphics/Point;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 759
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 761
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v2, "RealWidth"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 762
    iget-object v2, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v4, "RealHeight"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 767
    iget-object v4, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v5, "SpecialRealSize"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/netease/lotr/Client;->m_is_cutout:Z

    if-nez v4, :cond_0

    .line 769
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 770
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 772
    :cond_0
    iget-object v4, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v5, "SpecialChangeDeviceSize"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "G96_getRealSize_1"

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRealSize SpecialChangeDeviceSize Before width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 777
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 778
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const-string v6, "G96_getRealSize_1"

    .line 779
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRealSize OnGlobalLayout width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "G96_getRealSize_1"

    .line 781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRealSize onSurfaceChange width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 784
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 789
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 791
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 792
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, v0, Landroid/graphics/Point;->x:I

    .line 793
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 798
    :cond_2
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 799
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 800
    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 801
    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 805
    :goto_0
    iget-boolean v4, p0, Lcom/netease/lotr/Client;->m_is_cutout:Z

    if-eqz v4, :cond_6

    const-string v4, "G96_getRealSize_1"

    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRealSize final check m_is_cutout  width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    if-eqz v1, :cond_6

    const-string v4, "G96_getRealSize_1"

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRealSize final check m_is_cutout 2  width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 812
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_4

    .line 814
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 815
    iget v4, v0, Landroid/graphics/Point;->y:I

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 816
    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 820
    :cond_4
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ge v3, v1, :cond_5

    .line 822
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 826
    :cond_5
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_6

    .line 828
    iput v2, v0, Landroid/graphics/Point;->y:I

    :cond_6
    const-string v1, "G96_getRealSize_1"

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealSize SpecialChangeDeviceSize After width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "RealWidth"

    .line 836
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "RealHeight"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 837
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "G96_getRealSize_1"

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealSize edit putInto After width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getRealSizeWithoutLockLandscape()Landroid/graphics/Point;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 846
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 849
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 850
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    const-string v2, "G96_getRealSize_2"

    const-string v3, "getRealSize  ------1111--------- "

    .line 852
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "G96_getRealSize_2"

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRealSize  display.getRealSize(p) width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 858
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 859
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 866
    :cond_0
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 867
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 862
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_1
    const-string v1, "G96_getRealSize_2"

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealSize OnGlobalLayout width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v2, "G96_getRealSize_2"

    const-string v3, "getRealSize  ------22222222--------- "

    .line 876
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 878
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 879
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 880
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    const-string v1, "G96_getRealSize_2"

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealSize DisplayMetrics  width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_2
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v2, "SpecialChangeDeviceSize"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "G96_getRealSize_2"

    const-string v2, "getRealSize  ------3333333333333--------- "

    .line 886
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "G96_getRealSize_2"

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRealSize SpecialChangeDeviceSize Before width = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v2, "RealWidth"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 890
    iget-object v2, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v4, "RealHeight"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "G96_getRealSize_2"

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealSize SpecialChangeDeviceSize onSurfaceChange before width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 896
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 897
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const-string v5, "G96_getRealSize_2"

    .line 898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRealSize SpecialChangeDeviceSize rootView width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-ge v1, v2, :cond_3

    move v8, v2

    move v2, v1

    move v1, v8

    .line 912
    :cond_3
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_4

    .line 915
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-le v3, v1, :cond_5

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_5

    .line 917
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 918
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 923
    :cond_4
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-le v3, v2, :cond_5

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v3, v1, :cond_5

    .line 925
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 926
    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_5
    :goto_3
    const-string v3, "G96_getRealSize_2"

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRealSize SpecialChangeDeviceSize onSurfaceChange after width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v1, "G96_getRealSize_2"

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealSize m_is_cutout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/lotr/Client;->m_is_cutout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "RealWidth"

    .line 937
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "RealHeight"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 938
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "G96_getRealSize_2"

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealSize edit putInto After width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getRealWidth()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1570
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1571
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1572
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1573
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 1574
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1576
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1577
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    .line 1579
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0

    :cond_1
    const-string v1, "Client"

    .line 1581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRotation()I
    .locals 2

    .line 2169
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0x10e

    return v0

    :pswitch_1
    const/16 v0, 0xb4

    return v0

    :pswitch_2
    const/16 v0, 0x5a

    return v0

    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRunningProcess()[Ljava/lang/String;
    .locals 3

    .line 1108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "activity"

    .line 1110
    invoke-virtual {p0, v1}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1111
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1112
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1114
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getTotalInternalMemorySize()J
    .locals 4

    .line 2673
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2674
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 2676
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method getTotalMemory()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 2466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "activity"

    .line 2470
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2471
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2472
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2473
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getTotalMemorySize(Landroid/content/Context;)J
    .locals 4

    const-string p1, "/proc/meminfo"

    .line 2688
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2689
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v1, 0x800

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2690
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemTotal:"

    .line 2691
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2692
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    const-string p1, "\\D+"

    const-string v1, ""

    .line 2693
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    move-exception p1

    .line 2695
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "neox_root"

    .line 1258
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_neox_root:Ljava/lang/String;

    return-object p1

    .line 1262
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1267
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/lotr/Client;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method hasPlatform(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1715
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public hideVirtualKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 995
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    const-string v0, "NeoX"

    const-string v1, "HideVirtualKeyboard: Input Method Service not found"

    .line 998
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected initPlugins(Lcom/netease/neox/PluginManager;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->initPlugins(Lcom/netease/neox/PluginManager;)V

    .line 149
    new-instance v0, Lcom/netease/neox/PluginCCLive;

    invoke-direct {v0}, Lcom/netease/neox/PluginCCLive;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 150
    new-instance v0, Lcom/netease/neox/PluginCrashHunter;

    invoke-direct {v0}, Lcom/netease/neox/PluginCrashHunter;-><init>()V

    new-instance v1, Lcom/netease/neox/PrePostCallback;

    invoke-direct {v1}, Lcom/netease/neox/PrePostCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/neox/PluginCrashHunter;->setPrePostListener(Lcom/netease/neox/PluginCrashHunter$IPrePostListener;)Lcom/netease/neox/PluginCrashHunter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 151
    new-instance v0, Lcom/netease/neox/PluginEnvSDK;

    invoke-direct {v0}, Lcom/netease/neox/PluginEnvSDK;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 152
    new-instance v0, Lcom/netease/neox/PluginUniSDK;

    invoke-direct {v0}, Lcom/netease/neox/PluginUniSDK;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 153
    new-instance v0, Lcom/netease/neox/PluginNGPush;

    invoke-direct {v0}, Lcom/netease/neox/PluginNGPush;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 154
    new-instance v0, Lcom/netease/neox/PluginApp;

    invoke-direct {v0}, Lcom/netease/neox/PluginApp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    return-void
.end method

.method public isApplicationBroughtToBackground()Z
    .locals 4

    const-string v0, "activity"

    .line 2147
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 2148
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2150
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2151
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method public isBlueToothHeadsetConnected()Z
    .locals 5

    const/4 v0, 0x0

    .line 1010
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "NeoX"

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlueToothHeadsetConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1015
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isDeviceRooted()Z
    .locals 1

    .line 1103
    invoke-static {}, Lcom/netease/lotr/OutlawDeviceDetector;->isRooted()Z

    move-result v0

    return v0
.end method

.method public isNotchScreen()Lcom/netease/lotr/CutOutInfo;
    .locals 9

    .line 3005
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 3007
    new-instance v0, Lcom/netease/lotr/CutOutInfo;

    invoke-direct {v0}, Lcom/netease/lotr/CutOutInfo;-><init>()V

    .line 3012
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_1

    .line 3014
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 3016
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getDisplayCutout"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3018
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3021
    iput-boolean v3, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    goto :goto_0

    .line 3025
    :cond_0
    iput-boolean v2, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3026
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSafeInsetLeft"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I

    .line 3027
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSafeInsetRight"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaRight:I

    .line 3028
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSafeInsetTop"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaTop:I

    .line 3029
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSafeInsetBottom"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaBottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3035
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "NeoX"

    const-string v2, "get cutOut info failed"

    .line 3036
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const-string v1, "NeoX"

    const-string v2, "finish get cutOut info"

    .line 3038
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :goto_1
    const-string v1, "NeoX"

    const-string v2, "finish get cutOut info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    throw v0

    .line 3046
    :cond_1
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v4, "huawei"

    .line 3050
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    :try_start_2
    const-string v4, "com.huawei.android.util.HwNotchSizeUtil"

    .line 3055
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "hasNotchInScreen"

    .line 3056
    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 3057
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 3059
    iput-boolean v6, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3060
    iget-boolean v6, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    if-eqz v6, :cond_2

    .line 3063
    new-array v6, v5, [I

    fill-array-data v6, :array_0

    const-string v6, "getNotchSize"

    .line 3065
    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 3066
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    .line 3067
    aget v4, v4, v2

    iput v4, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    :try_start_3
    const-string v4, "NeoX"

    const-string v6, "hasNotchInScreen Exception"

    .line 3075
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    const-string v4, "NeoX"

    const-string v6, "hasNotchInScreen NoSuchMethodException"

    .line 3073
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    const-string v4, "NeoX"

    const-string v6, "hasNotchInScreen ClassNotFoundException"

    .line 3071
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    const-string v4, "NeoX"

    const-string v6, "finish query huawei. if cutOut screen"

    .line 3077
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    const-string v1, "NeoX"

    const-string v2, "finish query huawei. if cutOut screen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    throw v0

    :cond_3
    :goto_4
    const-string v4, "vivo"

    .line 3085
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3093
    :try_start_4
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v6, "android.util.FtFeature"

    .line 3094
    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "isFeatureSupport"

    .line 3095
    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v7, 0x20

    .line 3100
    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v3

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 3102
    iput-boolean v4, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3103
    iget-boolean v4, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x1b

    .line 3105
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, v4

    mul-float v4, v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 3106
    iput v4, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_4
    :try_start_5
    const-string v4, "NeoX"

    const-string v6, "hasNotchInScreen Exception"

    .line 3114
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_5
    const-string v4, "NeoX"

    const-string v6, "hasNotchInScreen NoSuchMethodException"

    .line 3112
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_6
    const-string v4, "NeoX"

    const-string v6, "hasNotchInScreen ClassNotFoundException"

    .line 3110
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    :goto_5
    const-string v4, "NeoX"

    const-string v6, "finish query vivo."

    .line 3116
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_6
    const-string v1, "NeoX"

    const-string v2, "finish query vivo."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    throw v0

    :cond_5
    :goto_7
    const-string v4, "oppo"

    .line 3124
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3129
    :try_start_6
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 3130
    iput-boolean v4, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3131
    iget-boolean v4, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    if-eqz v4, :cond_6

    const-string v4, "android.os.SystemProperties"

    .line 3133
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "get"

    .line 3134
    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 3135
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 3137
    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "ro.oppo.screen.heteromorphism"

    aput-object v8, v7, v3

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ":"

    .line 3138
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    const-string v6, ","

    .line 3139
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    .line 3140
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_7
    :try_start_7
    const-string v4, "NeoX"

    const-string v6, "hasNotchInScreen Exception"

    .line 3148
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_6
    :goto_8
    const-string v4, "NeoX"

    const-string v6, "finish query the oppo."

    .line 3150
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :goto_9
    const-string v1, "NeoX"

    const-string v2, "finish query the oppo."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    throw v0

    :cond_7
    :goto_a
    const-string v4, "Xiaomi"

    .line 3158
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :try_start_8
    const-string v4, "android.os.SystemProperties"

    .line 3163
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3166
    new-array v4, v5, [Ljava/lang/Class;

    .line 3167
    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v3

    .line 3168
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v2

    const-string v6, "getInt"

    .line 3169
    invoke-virtual {v1, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 3171
    new-array v5, v5, [Ljava/lang/Object;

    .line 3172
    new-instance v6, Ljava/lang/String;

    const-string v7, "ro.miui.notch"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v3

    .line 3173
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v2

    .line 3175
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_b

    :cond_8
    const/4 v1, 0x0

    .line 3176
    :goto_b
    iput-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3178
    iget-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    if-eqz v1, :cond_a

    .line 3180
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "notch_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 3182
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I

    goto :goto_c

    .line 3185
    :cond_9
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    .line 3187
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 3200
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_c

    :catch_9
    move-exception v1

    .line 3198
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_c

    :catch_a
    move-exception v1

    .line 3196
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_c

    :catch_b
    move-exception v1

    .line 3194
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_c

    :catch_c
    move-exception v1

    .line 3192
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_a
    :goto_c
    const-string v1, "smartisan"

    .line 3207
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3212
    :try_start_9
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v4, "smartisanos.api.DisplayUtilsSmt"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isFeatureSupport"

    .line 3213
    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3216
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3217
    iput-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3219
    iget-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x52

    .line 3221
    iput v1, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    .line 3226
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_d
    const-string v1, "meizu"

    .line 3234
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3240
    :try_start_a
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v4, "flyme.config.FlymeFeature"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "IS_FRINGE_DEVICE"

    .line 3241
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    .line 3242
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3247
    iput-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3248
    iget-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    if-eqz v1, :cond_c

    .line 3251
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "fringe_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    .line 3253
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3254
    iput v1, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    .line 3260
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_e
    const-string v1, "oneplus"

    .line 3267
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3272
    :try_start_b
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.oneplus.screen.cameranotch"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3275
    iput-boolean v2, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    const/16 v1, 0x50

    .line 3276
    iput v1, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    goto :goto_f

    :catch_f
    move-exception v1

    .line 3281
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_f
    const-string v1, "samsung"

    .line 3289
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3292
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v1, v4, :cond_e

    .line 3302
    :try_start_c
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3304
    const-class v4, Landroid/view/WindowInsets;

    const-string v5, "getDisplayCutout"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 3305
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 3306
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 3310
    iput-boolean v2, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSafeInsetTop"

    .line 3314
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 3315
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3314
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "getSafeInsetBottom"

    .line 3316
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 3317
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3316
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "getSafeInsetLeft"

    .line 3318
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 3319
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3318
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "getSafeInsetRight"

    .line 3320
    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3321
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3320
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 3323
    iput v4, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    .line 3326
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_10
    const-string v1, "lenovo"

    .line 3335
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3340
    :try_start_d
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_screen_has_notch"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3341
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    .line 3342
    iget-boolean v1, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    if-eqz v1, :cond_f

    .line 3344
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notch_h"

    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3345
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_11

    :catch_11
    move-exception v1

    .line 3352
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_11
    const-string v1, "NeoX"

    .line 3362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check if curOut screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NeoX"

    .line 3363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curOut screen height   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/netease/lotr/CutOutInfo;->mSafeAreaLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method isRecording()Z
    .locals 1

    .line 2614
    invoke-static {}, Lcom/netease/lotr/GameVoiceUtils;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRunningOnEmulator()Z
    .locals 3

    const-string v0, "google_sdk"

    .line 252
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const-string v0, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "sdk_x86"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "vbox86p"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 258
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 263
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "google_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Emulator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Android SDK built for x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BlueStacks"

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 269
    :cond_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 274
    :cond_3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Genymotion"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "BlueStacks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "goldfish"

    .line 279
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "unknown"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    :goto_0
    return v1

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    return v1

    :cond_9
    :goto_3
    return v1

    :cond_a
    :goto_4
    return v1
.end method

.method isTablet()Z
    .locals 2

    .line 1908
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1354
    invoke-super {p0, p1, p2, p3}, Lcom/netease/neox/NeoXClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 1356
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_image_picker:Lcom/netease/lotr/ImagePicker;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_image_picker:Lcom/netease/lotr/ImagePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lotr/ImagePicker;->onActivityResult(IILandroid/content/Intent;)V

    .line 1361
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 301
    new-instance v0, Lcom/netease/lotr/HookPackageManagerHelper;

    invoke-direct {v0, p0}, Lcom/netease/lotr/HookPackageManagerHelper;-><init>(Lcom/netease/lotr/Client;)V

    .line 302
    iget-boolean v1, v0, Lcom/netease/lotr/HookPackageManagerHelper;->m_need_load_new_so:Z

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Lcom/netease/lotr/HookPackageManagerHelper;->hookNativeActivityPackage(Landroid/os/Bundle;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    .line 309
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onCreate(Landroid/os/Bundle;)V

    :goto_0
    const-string p1, "NeoXView"

    .line 313
    invoke-virtual {p0, p1}, Lcom/netease/lotr/Client;->getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;

    move-result-object p1

    check-cast p1, Lcom/netease/neox/PluginNeoXView;

    invoke-virtual {p1}, Lcom/netease/neox/PluginNeoXView;->getView()Lcom/netease/neox/NeoXView;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_view:Lcom/netease/neox/NeoXView;

    const-string p1, "neox_config"

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/netease/lotr/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string p1, "neox_notif"

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/netease/lotr/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    .line 316
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v0, "NeoXRoot"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_neox_root:Ljava/lang/String;

    .line 317
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_neox_root:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "neox_root"

    invoke-direct {p0, v0}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_neox_root:Ljava/lang/String;

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 323
    new-instance p1, Lcom/netease/lotr/InputView;

    invoke-direct {p1, p0}, Lcom/netease/lotr/InputView;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    .line 326
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->hideVirtualKeyboard()V

    .line 328
    new-instance p1, Lcom/netease/lotr/AudioVolumeContentObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/netease/lotr/AudioVolumeContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_audiovolume_observer:Lcom/netease/lotr/AudioVolumeContentObserver;

    .line 329
    new-instance p1, Lcom/netease/lotr/RingerModeReceiver;

    invoke-direct {p1}, Lcom/netease/lotr/RingerModeReceiver;-><init>()V

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_ringermode_receiver:Lcom/netease/lotr/RingerModeReceiver;

    .line 332
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/lotr/Client;->m_root_view_height:I

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/lotr/Client;->m_root_view_width:I

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netease/lotr/Client$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/lotr/Client$1;-><init>(Lcom/netease/lotr/Client;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const-string v0, "phone"

    .line 396
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 397
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/netease/lotr/Client;->m_current_network_type:I

    .line 398
    new-instance v1, Lcom/netease/lotr/Client$2;

    invoke-direct {v1, p0}, Lcom/netease/lotr/Client$2;-><init>(Lcom/netease/lotr/Client;)V

    const/16 v2, 0x40

    .line 423
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/16 v2, 0x20

    .line 424
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 433
    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 434
    new-instance v0, Lcom/netease/lotr/Client$3;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Client$3;-><init>(Lcom/netease/lotr/Client;)V

    iput-object v0, p0, Lcom/netease/lotr/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    const-string v0, "clipboard"

    .line 507
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/netease/lotr/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 509
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 510
    invoke-direct {p0}, Lcom/netease/lotr/Client;->setNavigationBarVisibility()V

    .line 512
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_5

    .line 513
    invoke-direct {p0}, Lcom/netease/lotr/Client;->setDisplayCutoutModeShortEdges()V

    :cond_5
    const-string v0, "samsung"

    .line 516
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 519
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 520
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x400

    .line 521
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 522
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 525
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "layoutInDisplayCutoutMode"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 527
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 531
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 532
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    :cond_6
    :goto_2
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 544
    invoke-static {p0}, Lorg/cocos2dx/lib/StzbInputView;->init(Landroid/app/Activity;)V

    .line 547
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    if-eqz p1, :cond_7

    .line 549
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {p1}, Lcom/netease/lotr/ScreenShotObserver;->stopListen()V

    .line 551
    :cond_7
    new-instance p1, Lcom/netease/lotr/ScreenShotObserver;

    invoke-direct {p1, p0, p0}, Lcom/netease/lotr/ScreenShotObserver;-><init>(Landroid/content/Context;Lcom/netease/lotr/IScreenShotListener;)V

    iput-object p1, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    .line 552
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {p1}, Lcom/netease/lotr/ScreenShotObserver;->startListen()V

    .line 554
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->isNotchScreen()Lcom/netease/lotr/CutOutInfo;

    move-result-object p1

    .line 555
    iget-boolean p1, p1, Lcom/netease/lotr/CutOutInfo;->mIsCutOut:Z

    iput-boolean p1, p0, Lcom/netease/lotr/Client;->m_is_cutout:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {v0}, Lcom/netease/lotr/ScreenShotObserver;->stopListen()V

    const/4 v0, 0x0

    .line 663
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    .line 667
    :cond_0
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1367
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 605
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onPause()V

    .line 607
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->close()V

    .line 609
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {v0}, Lcom/netease/lotr/ScreenShotObserver;->stopListen()V

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

    .line 1408
    invoke-static {p1, p2, p3}, Lcom/netease/pushclient/PushManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1410
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    invoke-direct {p0}, Lcom/netease/lotr/Client;->getTargetSdkVersion()I

    move-result p2

    if-lt p2, v0, :cond_1

    const/16 p2, 0x3e81

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1418
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 641
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onRestart()V

    .line 643
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {v0}, Lcom/netease/lotr/ScreenShotObserver;->startListen()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 624
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onResume()V

    .line 626
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {v0}, Lcom/netease/lotr/ScreenShotObserver;->startListen()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1400
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenShot(II)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1373
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStart()V

    .line 1375
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {v0}, Lcom/netease/lotr/ScreenShotObserver;->startListen()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1386
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStop()V

    .line 1388
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_screenShotObserver:Lcom/netease/lotr/ScreenShotObserver;

    invoke-virtual {v0}, Lcom/netease/lotr/ScreenShotObserver;->stopListen()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 655
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onWindowFocusChanged(Z)V

    return-void
.end method

.method openExternalWebView(Ljava/lang/String;I)V
    .locals 0

    .line 1500
    invoke-static {p0, p1, p2}, Lcom/netease/lotr/WebViewActivity;->openWebview(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public openLocationSetting()V
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 2218
    new-instance v0, Lcom/netease/lotr/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/lotr/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/lotr/NeoXLocationManager;->openLocationSetting(Landroid/content/Context;)V

    return-void
.end method

.method openSMS(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "smsto:10086"

    .line 1735
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1736
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_0

    const-string v0, "sms_body"

    .line 1739
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/lotr/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method openURL(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1695
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1696
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1699
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/lotr/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    :cond_0
    return v0
.end method

.method openWebView(Ljava/lang/String;)V
    .locals 1

    .line 1477
    new-instance v0, Lcom/netease/lotr/Client$4;

    invoke-direct {v0, p0, p1}, Lcom/netease/lotr/Client$4;-><init>(Lcom/netease/lotr/Client;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method pauseVideo()V
    .locals 1

    .line 1878
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    invoke-virtual {v0}, Lcom/netease/lotr/MovieView;->pauseVideo()V

    :cond_0
    return-void
.end method

.method pickImage(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
    .locals 15

    move-object v0, p0

    .line 1338
    iget-object v1, v0, Lcom/netease/lotr/Client;->m_image_picker:Lcom/netease/lotr/ImagePicker;

    if-nez v1, :cond_0

    .line 1339
    new-instance v1, Lcom/netease/lotr/ImagePicker;

    invoke-direct {v1, p0}, Lcom/netease/lotr/ImagePicker;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/netease/lotr/Client;->m_image_picker:Lcom/netease/lotr/ImagePicker;

    .line 1340
    iget-object v1, v0, Lcom/netease/lotr/Client;->m_image_picker:Lcom/netease/lotr/ImagePicker;

    invoke-virtual {v1}, Lcom/netease/lotr/ImagePicker;->init()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1344
    :cond_0
    iget-object v2, v0, Lcom/netease/lotr/Client;->m_image_picker:Lcom/netease/lotr/ImagePicker;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/netease/lotr/ImagePicker;->execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method playVideo(Ljava/lang/String;IIIIIII)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "neox_config"

    const/4 v3, 0x0

    .line 1820
    invoke-virtual {v0, v2, v3}, Lcom/netease/lotr/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "NeoXRoot"

    const/4 v5, 0x0

    .line 1821
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Documents/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yuxin: "

    .line 1826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "yuxin videoMode: "

    .line 1829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "yuxin left: "

    .line 1830
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "yuxin top: "

    .line 1831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "yuxin width: "

    .line 1832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p8

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "yuxin height: "

    .line 1833
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p7

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 1837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v9, v1

    const/16 v17, 0x0

    goto :goto_1

    .line 1840
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1842
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1846
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1856
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/netease/lotr/Client;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1857
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    const/16 v17, 0x1

    .line 1868
    :goto_1
    new-instance v1, Lcom/netease/lotr/MovieView;

    invoke-direct {v1, v0}, Lcom/netease/lotr/MovieView;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    .line 1869
    iget-object v1, v0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    invoke-virtual {v1}, Lcom/netease/lotr/MovieView;->initialize()Z

    .line 1870
    iget-object v8, v0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    move/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p3

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v16, p7

    invoke-virtual/range {v8 .. v17}, Lcom/netease/lotr/MovieView;->playVideo(Ljava/lang/String;IIIIIIIZ)V

    return v6

    :catch_0
    const-string v2, "NeoX"

    .line 1863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video path not exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method playVoice(Ljava/lang/String;F)V
    .locals 0

    .line 2624
    sput-object p0, Lcom/netease/lotr/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2625
    invoke-static {p1}, Lcom/netease/lotr/GameVoiceUtils;->preparePlay(Ljava/lang/String;)Z

    .line 2626
    invoke-static {p2}, Lcom/netease/lotr/GameVoiceUtils;->setPlayVolume(F)V

    .line 2627
    invoke-static {}, Lcom/netease/lotr/GameVoiceUtils;->startPlay()Z

    return-void
.end method

.method removeWebView()V
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_web_view:Lcom/netease/lotr/NeoXWebView;

    if-nez v0, :cond_0

    return-void

    .line 1491
    :cond_0
    new-instance v0, Lcom/netease/lotr/Client$5;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Client$5;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method requestPushService()V
    .locals 1

    .line 1916
    iget-boolean v0, p0, Lcom/netease/lotr/Client;->m_is_push_manager_init:Z

    if-nez v0, :cond_0

    .line 1918
    new-instance v0, Lcom/netease/lotr/Client$6;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Client$6;-><init>(Lcom/netease/lotr/Client;)V

    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManager;->init(Landroid/content/Context;Lcom/netease/pushclient/PushManager$PushManagerCallback;)V

    :cond_0
    return-void
.end method

.method public requestRecordAudioPermission()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 1458
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1465
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x3e81

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v2
.end method

.method public restart()V
    .locals 2

    .line 2188
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 2189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2190
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public restart_and_cleanup()V
    .locals 0

    .line 293
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->finish()V

    return-void
.end method

.method resumeVideo()V
    .locals 1

    .line 1888
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    invoke-virtual {v0}, Lcom/netease/lotr/MovieView;->resumeVideo()V

    :cond_0
    return-void
.end method

.method saveImageToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SaveImageToGallery"

    .line 2852
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2854
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to decode the image file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2858
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2, p3}, Lcom/netease/lotr/Client;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Failed to insert image to media store."

    .line 2860
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final scaleImage(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-lez p2, :cond_6

    if-gtz p3, :cond_1

    goto :goto_1

    .line 2726
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2727
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2728
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2729
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2730
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    .line 2735
    :cond_2
    div-int/2addr v3, p2

    .line 2736
    div-int/2addr v1, p3

    .line 2737
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2739
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2740
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2742
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    .line 2747
    :cond_3
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 2752
    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/netease/lotr/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return v0
.end method

.method setBrightness(F)V
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 2493
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2497
    new-instance v0, Lcom/netease/lotr/Client$23;

    invoke-direct {v0, p0, p1}, Lcom/netease/lotr/Client$23;-><init>(Lcom/netease/lotr/Client;F)V

    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    const-string v0, "setBrightness failed due to permission WRITE_SETTINGS not granted"

    .line 2521
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setClipboardText(Ljava/lang/String;)V
    .locals 2

    .line 2064
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_clipboard:Landroid/content/ClipboardManager;

    const-string v1, "com.netease.lotr"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method public setInputViewLocation(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/lotr/InputView;->setLocation(IIII)V

    .line 1319
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/lotr/InputView;->setBorderless(Z)V

    goto :goto_1

    .line 1311
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/netease/lotr/InputView;->setLocation(IIII)V

    .line 1312
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p1, p2}, Lcom/netease/lotr/InputView;->setBorderless(Z)V

    .line 1313
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p2}, Lcom/netease/lotr/InputView;->getDefaultFontSize()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/lotr/InputView;->setFontSize(F)V

    .line 1314
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p2}, Lcom/netease/lotr/InputView;->getDefaultFontColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/lotr/InputView;->setFontColor(I)V

    :goto_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .line 2228
    new-instance v0, Lcom/netease/lotr/Client$7;

    invoke-direct {v0, p0, p1, p0}, Lcom/netease/lotr/Client$7;-><init>(Lcom/netease/lotr/Client;ZLcom/netease/lotr/Client;)V

    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 1

    .line 1023
    invoke-virtual {p0}, Lcom/netease/lotr/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1026
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x6

    .line 1027
    invoke-virtual {p0, p1}, Lcom/netease/lotr/Client;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1031
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1032
    invoke-virtual {p0, p1}, Lcom/netease/lotr/Client;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method setVirtualKeyboardType(I)V
    .locals 1

    .line 2596
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {v0, p1}, Lcom/netease/lotr/InputView;->setType(I)V

    return-void
.end method

.method public showDumpView(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public showInputView(Ljava/lang/String;IZIIIIFI)Z
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {v0, p2}, Lcom/netease/lotr/InputView;->setFilterPattern(I)V

    if-eqz p3, :cond_0

    .line 1275
    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/netease/lotr/InputView;->setText(Ljava/lang/String;)V

    .line 1276
    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/lotr/InputView;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    :cond_0
    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/netease/lotr/InputView;->setHint(Ljava/lang/String;)V

    .line 1281
    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/lotr/InputView;->setText(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    if-eqz p6, :cond_2

    if-nez p7, :cond_1

    goto :goto_1

    .line 1289
    :cond_1
    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p2, p4, p5, p6, p7}, Lcom/netease/lotr/InputView;->setLocation(IIII)V

    goto :goto_2

    .line 1285
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p2, p1, p1, p1, p1}, Lcom/netease/lotr/InputView;->setLocation(IIII)V

    .line 1292
    :goto_2
    iget-object p2, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/lotr/InputView;->setBorderless(Z)V

    const/4 p1, -0x1

    if-ne p9, p1, :cond_3

    .line 1295
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p1}, Lcom/netease/lotr/InputView;->getDefaultFontColor()I

    move-result p9

    .line 1297
    :cond_3
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p1, p9}, Lcom/netease/lotr/InputView;->setFontColor(I)V

    const/4 p1, 0x0

    cmpg-float p1, p8, p1

    if-gtz p1, :cond_4

    .line 1300
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p1}, Lcom/netease/lotr/InputView;->getDefaultFontSize()F

    move-result p8

    .line 1302
    :cond_4
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    invoke-virtual {p1, p8}, Lcom/netease/lotr/InputView;->setFontSize(F)V

    .line 1303
    iget-object p1, p0, Lcom/netease/lotr/Client;->m_input_view:Lcom/netease/lotr/InputView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/lotr/InputView;->show(Z)V

    return p2
.end method

.method showMessageBox(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2262
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 2263
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "ic_launcher"

    .line 2264
    invoke-direct {p0, p2}, Lcom/netease/lotr/Client;->getDrawableId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 2265
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    packed-switch p3, :pswitch_data_0

    .line 2391
    new-instance p2, Lcom/netease/lotr/Client$21;

    invoke-direct {p2, p0}, Lcom/netease/lotr/Client$21;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_0
    const-string p2, "neox_retry"

    .line 2372
    invoke-direct {p0, p2}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/lotr/Client$20;

    invoke-direct {p3, p0}, Lcom/netease/lotr/Client$20;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/lotr/Client$19;

    invoke-direct {p3, p0}, Lcom/netease/lotr/Client$19;-><init>(Lcom/netease/lotr/Client;)V

    .line 2379
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_1
    const-string p2, "neox_yes"

    .line 2353
    invoke-direct {p0, p2}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/lotr/Client$18;

    invoke-direct {p3, p0}, Lcom/netease/lotr/Client$18;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "neox_no"

    .line 2360
    invoke-direct {p0, p3}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/lotr/Client$17;

    invoke-direct {p4, p0}, Lcom/netease/lotr/Client$17;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_2
    const-string p2, "neox_yes"

    .line 2327
    invoke-direct {p0, p2}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/lotr/Client$16;

    invoke-direct {p3, p0}, Lcom/netease/lotr/Client$16;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "neox_no"

    .line 2334
    invoke-direct {p0, p3}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/lotr/Client$15;

    invoke-direct {p4, p0}, Lcom/netease/lotr/Client$15;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/lotr/Client$14;

    invoke-direct {p3, p0}, Lcom/netease/lotr/Client$14;-><init>(Lcom/netease/lotr/Client;)V

    .line 2341
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_3
    const-string p2, "neox_abort"

    .line 2301
    invoke-direct {p0, p2}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/lotr/Client$13;

    invoke-direct {p3, p0}, Lcom/netease/lotr/Client$13;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "neox_retry"

    .line 2308
    invoke-direct {p0, p3}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/lotr/Client$12;

    invoke-direct {p4, p0}, Lcom/netease/lotr/Client$12;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "neox_ignore"

    .line 2315
    invoke-direct {p0, p3}, Lcom/netease/lotr/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/lotr/Client$11;

    invoke-direct {p4, p0}, Lcom/netease/lotr/Client$11;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2282
    :pswitch_4
    new-instance p2, Lcom/netease/lotr/Client$10;

    invoke-direct {p2, p0}, Lcom/netease/lotr/Client$10;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/lotr/Client$9;

    invoke-direct {p3, p0}, Lcom/netease/lotr/Client$9;-><init>(Lcom/netease/lotr/Client;)V

    .line 2289
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2270
    :pswitch_5
    new-instance p2, Lcom/netease/lotr/Client$8;

    invoke-direct {p2, p0}, Lcom/netease/lotr/Client$8;-><init>(Lcom/netease/lotr/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2403
    :goto_0
    new-instance p2, Lcom/netease/lotr/Client$22;

    invoke-direct {p2, p0, p1}, Lcom/netease/lotr/Client$22;-><init>(Lcom/netease/lotr/Client;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, p2}, Lcom/netease/lotr/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showModalDialog(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 2968
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2971
    new-instance v0, Lcom/netease/lotr/Client$25;

    invoke-direct {v0, p0}, Lcom/netease/lotr/Client$25;-><init>(Lcom/netease/lotr/Client;)V

    .line 2979
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2980
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2981
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p1, "Ok"

    .line 2982
    new-instance p2, Lcom/netease/lotr/Client$26;

    invoke-direct {p2, p0, v0}, Lcom/netease/lotr/Client$26;-><init>(Lcom/netease/lotr/Client;Landroid/os/Handler;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2988
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2991
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2994
    :catch_0
    iget p1, p0, Lcom/netease/lotr/Client;->m_modalDialogResult:I

    return p1
.end method

.method public showVirtualKeyboard()V
    .locals 3

    const-string v0, "input_method"

    .line 979
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    const-string v0, "NeoX"

    const-string v1, "ShowVirtualKeyboard: Input Method Service not found"

    .line 982
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "NeoXDeviceVKB"

    const-string v2, "Force show Virtual Keyboard"

    .line 986
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 990
    iget-object v1, p0, Lcom/netease/lotr/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method

.method public showWelcomeView()V
    .locals 2

    .line 1327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/lotr/WelcomeView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startRecording(Ljava/lang/String;)Z
    .locals 0

    .line 2601
    sput-object p0, Lcom/netease/lotr/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2602
    invoke-static {p1}, Lcom/netease/lotr/GameVoiceUtils;->prepareRecord(Ljava/lang/String;)Z

    .line 2603
    invoke-static {}, Lcom/netease/lotr/GameVoiceUtils;->startRecord()Z

    const/4 p1, 0x1

    return p1
.end method

.method public startUpdatingLocation()Z
    .locals 1

    .line 2196
    iget-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    if-nez v0, :cond_0

    .line 2198
    new-instance v0, Lcom/netease/lotr/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/lotr/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/lotr/NeoXLocationManager;->startUpdatingLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method startVibrate(J)V
    .locals 4

    const-string v0, "NeoXDevice"

    .line 1666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVibrate in neox1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vibrator"

    .line 1667
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2

    const-wide/16 v1, 0x3e8

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "NeoXDevice"

    const-string v2, "real vibrate"

    .line 1674
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method stopPushService()V
    .locals 1

    .line 1941
    invoke-static {}, Lcom/netease/pushclient/PushManager;->stopService()V

    const/4 v0, 0x0

    .line 1942
    iput-boolean v0, p0, Lcom/netease/lotr/Client;->m_is_push_manager_init:Z

    return-void
.end method

.method stopRecording()V
    .locals 0

    .line 2609
    invoke-static {}, Lcom/netease/lotr/GameVoiceUtils;->stopRecord()V

    return-void
.end method

.method public stopUpdatingLocation()V
    .locals 1

    .line 2206
    iget-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/netease/lotr/Client;->neoxLocationMgr:Lcom/netease/lotr/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/lotr/NeoXLocationManager;->stopUpdatingLocation(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method stopVibrate()V
    .locals 1

    const-string v0, "vibrator"

    .line 1684
    invoke-virtual {p0, v0}, Lcom/netease/lotr/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    .line 1688
    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method stopVideo()V
    .locals 1

    .line 1898
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    invoke-virtual {v0}, Lcom/netease/lotr/MovieView;->stopVideo()V

    const/4 v0, 0x0

    .line 1901
    iput-object v0, p0, Lcom/netease/lotr/Client;->m_movie_view:Lcom/netease/lotr/MovieView;

    :cond_0
    return-void
.end method

.method stopVoice()V
    .locals 0

    .line 2632
    invoke-static {}, Lcom/netease/lotr/GameVoiceUtils;->stopPlay()V

    return-void
.end method
