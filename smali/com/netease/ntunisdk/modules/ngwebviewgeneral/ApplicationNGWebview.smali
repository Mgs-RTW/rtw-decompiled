.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ApplicationNGWebview;
.super Landroid/app/Application;
.source "ApplicationNGWebview.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK ApplicationNGWebview"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "UniSDK ApplicationNGWebview"

    const-string v1, "onCreate..."

    .line 18
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/log/NgWebviewLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ApplicationNGWebview;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/UniWebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
