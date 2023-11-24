.class Lcom/netease/mpay/oversea/scan/ScannerApp$2;
.super Ljava/lang/Object;
.source "ScannerApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/ScannerApp;->showErrorMsg(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

.field final synthetic val$callback:Lcom/netease/mpay/oversea/scan/ScannerCallback;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/ScannerApp;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->this$0:Lcom/netease/mpay/oversea/scan/ScannerApp;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->val$callback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerApp$2;->val$callback:Lcom/netease/mpay/oversea/scan/ScannerCallback;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerCancel()V

    return-void
.end method
