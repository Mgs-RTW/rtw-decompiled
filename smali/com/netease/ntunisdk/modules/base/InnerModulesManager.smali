.class public Lcom/netease/ntunisdk/modules/base/InnerModulesManager;
.super Lcom/netease/ntunisdk/modules/base/InnerLifecycleManager;
.source "InnerModulesManager.java"


# static fields
.field private static ModulesManagerInst:Lcom/netease/ntunisdk/modules/base/InnerModulesManager; = null

.field private static final SUBMODULES_PATH:Ljava/lang/String; = "com.netease.ntunisdk.modules"

.field private static final TAG:Ljava/lang/String; = "UniSDK InnerModuManager"


# instance fields
.field private callback:Lcom/netease/ntunisdk/modules/base/InnerModulesCallback;

.field private isInit:Z

.field private modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    invoke-direct {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->ModulesManagerInst:Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/base/InnerLifecycleManager;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->isInit:Z

    .line 30
    new-instance v0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;-><init>(Lcom/netease/ntunisdk/modules/base/InnerModulesManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    return-void
.end method

.method private declared-synchronized genModuleObj(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/base/BaseModules;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UniSDK InnerModuManager"

    const-string v2, "reflect %s newInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 96
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.netease.ntunisdk.modules."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Module"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v5

    const-class v4, Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/modules/base/BaseModules;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 101
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->registerModules(Lcom/netease/ntunisdk/modules/base/BaseModules;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 106
    :catch_1
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->ModulesManagerInst:Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    return-object v0
.end method

.method public static jniCallExtendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 211
    sget-object v0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->ModulesManagerInst:Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "jni"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->extendFuncAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native jniCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private preLoad()V
    .locals 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "uni_module_"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->genModuleObj(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/base/BaseModules;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const-string v1, "native"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->extendFuncAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs extendFuncAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "extendFuncAll callType:%s, source:%s, moudule:%s, data:%s"

    .line 131
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK InnerModuManager"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/modules/base/BaseModules;

    if-nez v0, :cond_1

    .line 138
    invoke-direct {p0, p3}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->genModuleObj(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/base/BaseModules;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0, p3}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->genModuleObj(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/base/BaseModules;

    move-result-object v0

    .line 143
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/netease/ntunisdk/modules/base/BaseModules;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1

    .line 149
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " not exist"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "UniSDK InnerModuManager"

    invoke-static {p5, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "unisdkbase"

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, ""

    return-object p1

    .line 154
    :cond_4
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "code"

    const/16 v0, 0x4e20

    .line 155
    invoke-virtual {p1, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "msg"

    const-string v0, "module is not exist!"

    .line 156
    invoke-virtual {p1, p5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "source"

    .line 157
    invoke-virtual {p1, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "module"

    .line 158
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "request"

    .line 159
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    .line 143
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public varargs extendFuncByInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const-string v1, "inner"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->extendFuncAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extendFuncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "native"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "UniSDK InnerModuManager"

    if-eqz v0, :cond_0

    const-string p1, "call nativeCallback"

    .line 171
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->callback:Lcom/netease/ntunisdk/modules/base/InnerModulesCallback;

    invoke-interface {p1, p2, p3, p4}, Lcom/netease/ntunisdk/modules/base/InnerModulesCallback;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "jni"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "call jniCallback"

    .line 174
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {p2, p3, p4}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->jniCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "inner"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "call allCallback"

    .line 177
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->callback:Lcom/netease/ntunisdk/modules/base/InnerModulesCallback;

    invoke-interface {p1, p2, p3, p4}, Lcom/netease/ntunisdk/modules/base/InnerModulesCallback;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p2, p3, p4}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->jniCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized hasModule(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 190
    monitor-exit p0

    return v1

    .line 192
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->genModuleObj(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/base/BaseModules;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 193
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 195
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->isInit:Z

    const-string v1, "UniSDK InnerModuManager"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->isInit:Z

    .line 40
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->checkIsDebug(Landroid/content/Context;)V

    const-string p1, "init..."

    .line 42
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->preLoad()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v0, "init by activity context"

    .line 45
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->reInit(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reInit(Landroid/content/Context;)V
    .locals 3

    .line 63
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/modules/base/BaseModules;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/modules/base/BaseModules;->setContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerModules(Lcom/netease/ntunisdk/modules/base/BaseModules;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCallback(Lcom/netease/ntunisdk/modules/base/InnerModulesCallback;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->callback:Lcom/netease/ntunisdk/modules/base/InnerModulesCallback;

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->isInit:Z

    .line 52
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->modulesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->context:Landroid/content/Context;

    return-void
.end method
