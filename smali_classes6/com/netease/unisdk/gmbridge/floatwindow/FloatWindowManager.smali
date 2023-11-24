.class public Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# static fields
.field public static ICON_HEIGHT:I = 0x0

.field public static ICON_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "gm_bridge FloatWindowManager"

.field private static sFloatBtnVisible:Z = true

.field private static sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow; = null

.field private static sGravity:I = 0x0

.field public static sIconDirName:Ljava/lang/String; = "gm_icon"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Z
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->hasCloseBtn(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->createCloseBtnInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    move-result-object p0

    return-object p0
.end method

.method private static createCloseBtnInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    .locals 3

    .line 153
    new-instance v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;-><init>()V

    const-string v1, "close"

    .line 154
    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "uni_gm_f_close"

    invoke-static {p0, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->name:Ljava/lang/String;

    const-string v1, "uni_gm_f_close"

    .line 156
    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    .line 157
    iget-object p0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    sput p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    .line 158
    iget-object p0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sput p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    return-object v0
.end method

.method public static destroyFloatWindow()V
    .locals 1

    .line 109
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->destroy()V

    const/4 v0, 0x0

    .line 111
    sput-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .line 112
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->clearBtnInfos()V

    :cond_1
    return-void
.end method

.method private static downloadIcon(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 197
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 198
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 199
    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    .line 201
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    .line 202
    new-array p1, p1, [B

    .line 204
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 205
    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 208
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "gm_bridge FloatWindowManager"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadIcon error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getBtnIcon(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;Ljava/lang/String;)V
    .locals 3

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "gm_bridge FloatWindowManager"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uni_gm_f_"

    .line 167
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-static {p0, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sIconDirName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 175
    :cond_2
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    sget v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    invoke-static {p0, p2, v0}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {p2, v1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->downloadIcon(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "gm_bridge FloatWindowManager"

    const-string p2, "downloadIcon iconUrl success"

    .line 184
    invoke-static {p0, p2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    sget v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    invoke-static {p0, p2, v0}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_0
    return-void
.end method

.method private static hasCloseBtn(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)Z"
        }
    .end annotation

    .line 144
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    const-string v1, "close"

    .line 145
    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hideExpandLayout()V
    .locals 1

    .line 118
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hideExpandLayout()V

    :cond_0
    return-void
.end method

.method public static initGmFloatWindow(Landroid/content/Context;I)V
    .locals 1

    .line 46
    sput p1, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    .line 47
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .line 50
    :cond_0
    sget-boolean p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatBtnVisible:Z

    if-eqz p0, :cond_1

    .line 51
    sget-object p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->show()V

    :cond_1
    return-void
.end method

.method public static isRedMenu(Ljava/lang/String;)Z
    .locals 1

    .line 90
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->isRedMenu(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadBtnInfos(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
    .locals 2

    .line 124
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    new-instance v1, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;-><init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getBtnInfos(Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V

    return-void
.end method

.method public static onPause()V
    .locals 2

    const-string v0, "gm_bridge FloatWindowManager"

    const-string v1, "onPause"

    .line 103
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hide()V

    return-void
.end method

.method public static onResume()V
    .locals 2

    const-string v0, "gm_bridge FloatWindowManager"

    const-string v1, "onResume"

    .line 95
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    sget-boolean v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatBtnVisible:Z

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->show()V

    :cond_1
    return-void
.end method

.method public static removeRedMenuIds(Ljava/lang/String;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->removeRedId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getRedIds()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 85
    sget-object p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hideRed()V

    :cond_1
    return-void
.end method

.method public static setFloatBtnVisible(Z)V
    .locals 1

    .line 56
    sput-boolean p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatBtnVisible:Z

    .line 57
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 59
    sget-object p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 60
    :cond_1
    sget-object p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->show()V

    goto :goto_0

    .line 62
    :cond_2
    sget-object p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 63
    sget-object p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hide()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static showRed(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_1

    .line 71
    sget v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    if-nez v0, :cond_0

    const/16 v0, 0x53

    .line 72
    sput v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    .line 74
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    invoke-static {p0, v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->initGmFloatWindow(Landroid/content/Context;I)V

    .line 76
    :cond_1
    sget-object p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->showRed([Ljava/lang/String;)V

    return-void
.end method
