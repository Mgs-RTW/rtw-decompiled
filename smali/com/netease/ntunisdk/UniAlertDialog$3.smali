.class Lcom/netease/ntunisdk/UniAlertDialog$3;
.super Ljava/lang/Object;
.source "UniAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/UniAlertDialog;->alertImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/UniAlertDialog;

.field final synthetic val$alert:Landroid/app/AlertDialog;

.field final synthetic val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/UniAlertDialog;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->this$0:Lcom/netease/ntunisdk/UniAlertDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$alert:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$alert:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/UniAlertDialog$3;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
