.class final Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;
.super Ljava/lang/Object;
.source "InstallReferrerClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstallReferrerServiceConnection"
.end annotation


# instance fields
.field private final mListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

.field final synthetic this$0:Lcom/android/installreferrer/api/InstallReferrerClientImpl;


# direct methods
.method private constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .locals 2
    .param p1    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->this$0:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    if-nez p2, :cond_0

    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please specify a listener to know when setup is done."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iput-object p2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->mListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/android/installreferrer/api/InstallReferrerClientImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/installreferrer/api/InstallReferrerClientImpl;
    .param p2, "x1"    # Lcom/android/installreferrer/api/InstallReferrerStateListener;
    .param p3, "x2"    # Lcom/android/installreferrer/api/InstallReferrerClientImpl$1;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 220
    const-string v0, "InstallReferrerClient"

    const-string v1, "Install Referrer service connected."

    invoke-static {v0, v1}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->this$0:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-static {p2}, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->access$102(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 222
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->this$0:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->access$202(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    .line 223
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->mListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    .line 224
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 228
    const-string v0, "InstallReferrerClient"

    const-string v1, "Install Referrer service disconnected."

    invoke-static {v0, v1}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->this$0:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->access$102(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 230
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->this$0:Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->access$202(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I

    .line 231
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;->mListener:Lcom/android/installreferrer/api/InstallReferrerStateListener;

    invoke-interface {v0}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerServiceDisconnected()V

    .line 232
    return-void
.end method
