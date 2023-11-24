.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$2;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->initDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$2;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$2;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->destroy()V

    const/4 p1, 0x0

    .line 99
    sput-object p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    return-void
.end method
