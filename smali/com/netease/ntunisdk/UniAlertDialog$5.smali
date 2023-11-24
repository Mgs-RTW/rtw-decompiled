.class Lcom/netease/ntunisdk/UniAlertDialog$5;
.super Ljava/lang/Object;
.source "UniAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/UniAlertDialog;->addOnBackPressedListener(Landroid/app/AlertDialog;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/UniAlertDialog;

.field final synthetic val$cancelRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/UniAlertDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$5;->this$0:Lcom/netease/ntunisdk/UniAlertDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/UniAlertDialog$5;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$5;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
