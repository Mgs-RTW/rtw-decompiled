.class Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/UniWebView$6$1$1;
.super Ljava/lang/Object;
.source "UniWebView.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/UniWebView$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/UniWebView$6$1;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/UniWebView$6$1;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/UniWebView$6$1$1;->this$2:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/UniWebView$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadComplete(I)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "UniSDK UniWebView"

    const-string v1, "PdfView loadComplete"

    .line 937
    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/log/NgWebviewLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
