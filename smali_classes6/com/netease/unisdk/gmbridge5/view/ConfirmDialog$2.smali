.class Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$2;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->initDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->dismiss()V

    .line 58
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->access$000(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hide()V

    return-void
.end method
