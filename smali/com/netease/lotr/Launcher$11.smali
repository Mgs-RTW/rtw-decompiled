.class Lcom/netease/lotr/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher;->showCellularConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher;)V
    .locals 0

    .line 1648
    iput-object p1, p0, Lcom/netease/lotr/Launcher$11;->this$0:Lcom/netease/lotr/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1653
    iget-object p1, p0, Lcom/netease/lotr/Launcher$11;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1700(Lcom/netease/lotr/Launcher;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    return-void
.end method
