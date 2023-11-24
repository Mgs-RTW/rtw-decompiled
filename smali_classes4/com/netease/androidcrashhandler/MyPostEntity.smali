.class public Lcom/netease/androidcrashhandler/MyPostEntity;
.super Ljava/lang/Object;
.source "MyPostEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPostEntity"

.field private static sMyNetworkUtils:Lcom/netease/androidcrashhandler/MyPostEntity;


# instance fields
.field private isMain:Z

.field private mParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->mParamsMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->isMain:Z

    .line 25
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->isMain:Z

    return-void
.end method

.method public constructor <init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->mParamsMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->isMain:Z

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->isMain:Z

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/MyPostEntity;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/androidcrashhandler/MyPostEntity;->sMyNetworkUtils:Lcom/netease/androidcrashhandler/MyPostEntity;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/MyPostEntity;->sMyNetworkUtils:Lcom/netease/androidcrashhandler/MyPostEntity;

    .line 33
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/MyPostEntity;->sMyNetworkUtils:Lcom/netease/androidcrashhandler/MyPostEntity;

    return-object v0
.end method


# virtual methods
.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->mParamsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p3, "trace"

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCrashHandler MyPostEntity [setFile] \u4ece\u65e7\u63a5\u53e3\u542f\u52a8\u4e0a\u4f20 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u6587\u4ef6\u5f62\u5f0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->isMain:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-direct {v0, p3}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMainFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->put(Lcom/netease/androidcrashhandler/other/OtherCore;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-direct {v0, p3}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->put(Lcom/netease/androidcrashhandler/other/OtherCore;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p3, "trace"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCrashHandler MyPostEntity [setFile] \u4ece\u65e7\u63a5\u53e3\u542f\u52a8\u4e0a\u4f20 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u5b57\u7b26\u4e32\u5f62\u5f0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 73
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->isMain:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-direct {v0, p3}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addMainInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->put(Lcom/netease/androidcrashhandler/other/OtherCore;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/netease/androidcrashhandler/other/OtherCore;

    invoke-direct {v0, p3}, Lcom/netease/androidcrashhandler/other/OtherCore;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/other/OtherCore;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/netease/androidcrashhandler/other/OtherProxy;->getInstance()Lcom/netease/androidcrashhandler/other/OtherProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/other/OtherProxy;->put(Lcom/netease/androidcrashhandler/other/OtherCore;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidCrashHandler MyPostEntity [setParam] NTCrashHunterKit is init =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidCrashHandler MyPostEntity [setParam] key =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isInit()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "callback_so_path"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "callback_method_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "trace"

    const-string v1, "AndroidCrashHandler [setParam] setSoParam"

    .line 44
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setSoParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setUrl(Ljava/lang/String;)V

    return-void
.end method
