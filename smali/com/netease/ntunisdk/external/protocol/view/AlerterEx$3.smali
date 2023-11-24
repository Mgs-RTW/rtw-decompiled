.class Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;
.super Ljava/lang/Object;
.source "AlerterEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

.field final synthetic val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->access$000(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;->this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->access$000(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
