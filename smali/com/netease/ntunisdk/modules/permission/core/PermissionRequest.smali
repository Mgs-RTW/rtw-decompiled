.class public Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionRequest"


# instance fields
.field private final PERMISSION_NEED:[Ljava/lang/String;

.field private final json:Lorg/json/JSONObject;

.field private final permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/modules/permission/PermissionContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/PermissionContext;Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->json:Lorg/json/JSONObject;

    .line 36
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p4, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

    return-void
.end method


# virtual methods
.method public onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "PermissionRequest"

    const-string v1, "onPermissionResult"

    .line 80
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->permissionListener:Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionListener;->onPermissionResult(Ljava/lang/String;[ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    :cond_0
    return-void
.end method

.method public proceed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 7

    .line 42
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/modules/permission/PermissionContext;

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/modules/permission/PermissionContext;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    goto/16 :goto_0

    .line 49
    :cond_2
    array-length v1, v0

    const/16 v3, 0x538

    const-string v4, "PermissionRequest"

    const/16 v5, 0x17

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "android.permission.SYSTEM_ALERT_WINDOW"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 50
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    :cond_3
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "proceed: "

    const-string v1, "package:"

    if-eqz p2, :cond_4

    .line 52
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_7

    .line 53
    new-instance p2, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p2, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_7

    .line 60
    new-instance p2, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_6

    .line 68
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->PERMISSION_NEED:[Ljava/lang/String;

    invoke-virtual {p2, p1, v3}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_6
    const-string p1, "proceed: requestPermissions"

    .line 70
    invoke-static {v4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public refuse([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    return-void
.end method
