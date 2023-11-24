.class public Lcom/netease/lotr/HookPackageManagerHelper;
.super Ljava/lang/Object;
.source "HookPackageManagerHelper.java"


# instance fields
.field private m_client:Lcom/netease/lotr/Client;

.field public m_need_load_new_so:Z


# direct methods
.method constructor <init>(Lcom/netease/lotr/Client;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_need_load_new_so:Z

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    .line 19
    iput-object p1, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    .line 21
    iget-object p1, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    invoke-virtual {p1}, Lcom/netease/lotr/Client;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "new_so"

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_need_load_new_so:Z

    :cond_0
    return-void
.end method

.method private hookPMSForNativeActivity()Z
    .locals 3

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    return v1

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    invoke-static {v0}, Lcom/netease/lotr/FakePackageManagerForNative;->hookPMS(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "NativeLibararyLoader"

    const-string v2, "Fail to modify packageManager"

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, v0}, Lcom/netease/lotr/HookPackageManagerHelper;->logLastPatchSoThrowable(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private logLastPatchSoStatus(Ljava/lang/String;)V
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_need_load_new_so:Z

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    const-string v1, "neox_native_lib_loader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/lotr/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastMsg"

    .line 64
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "NativeLibararyLoader"

    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logLastPatchSoThrowable(Ljava/lang/Throwable;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 71
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/lotr/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    return-void
.end method

.method private onPatchSoSuccess()V
    .locals 1

    const-string v0, ""

    .line 76
    invoke-direct {p0, v0}, Lcom/netease/lotr/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hookNativeActivityPackage(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onCreate"

    .line 30
    invoke-direct {p0, v0}, Lcom/netease/lotr/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    .line 34
    iget-boolean v0, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_need_load_new_so:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/netease/lotr/HookPackageManagerHelper;->hookPMSForNativeActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object p1, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    invoke-virtual {p1}, Lcom/netease/lotr/Client;->restart_and_cleanup()V

    return-void

    :cond_0
    const-string v0, "before NativeActivity onCreate"

    .line 42
    invoke-direct {p0, v0}, Lcom/netease/lotr/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    .line 45
    iget-object v0, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    invoke-virtual {v0, p1}, Lcom/netease/lotr/Client;->CallBaseOnCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    invoke-direct {p0}, Lcom/netease/lotr/HookPackageManagerHelper;->onPatchSoSuccess()V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "NativeLibararyLoader"

    const-string v1, "Fail to create NativeActivity"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/netease/lotr/HookPackageManagerHelper;->logLastPatchSoThrowable(Ljava/lang/Throwable;)V

    .line 49
    iget-object p1, p0, Lcom/netease/lotr/HookPackageManagerHelper;->m_client:Lcom/netease/lotr/Client;

    invoke-virtual {p1}, Lcom/netease/lotr/Client;->restart_and_cleanup()V

    return-void
.end method
