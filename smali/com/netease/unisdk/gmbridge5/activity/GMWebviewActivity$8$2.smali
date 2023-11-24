.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$2;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$2;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 638
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$2;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->saveImageConfirmDialog:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->dismiss()V

    return-void
.end method
