.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->showImgPickDialog(Z)V
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

    .line 318
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$300(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$200(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    .line 334
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
