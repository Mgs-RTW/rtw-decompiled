.class Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;
.super Ljava/lang/Object;
.source "DownloaderClientMarshaller.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->access$202(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 161
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->access$100(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    .line 162
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->access$200(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Landroid/os/Messenger;

    move-result-object p2

    .line 161
    invoke-interface {p1, p2}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onServiceConnected(Landroid/os/Messenger;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->access$202(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
