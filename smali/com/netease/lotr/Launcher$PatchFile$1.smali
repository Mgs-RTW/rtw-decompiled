.class Lcom/netease/lotr/Launcher$PatchFile$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher$PatchFile;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/lotr/Launcher$PatchFile;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher$PatchFile;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1430
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1400(Lcom/netease/lotr/Launcher;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1400(Lcom/netease/lotr/Launcher;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1439
    :cond_1
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    invoke-static {v0}, Lcom/netease/lotr/Launcher$PatchFile;->access$1600(Lcom/netease/lotr/Launcher$PatchFile;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1441
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    const-string v2, "ic_launcher"

    invoke-static {v1, v2}, Lcom/netease/lotr/Launcher;->access$400(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1443
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    invoke-static {v1}, Lcom/netease/lotr/Launcher$PatchFile;->access$1600(Lcom/netease/lotr/Launcher$PatchFile;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 1445
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    const-string v2, "neox_launcher_failure_engine"

    invoke-static {v1, v2}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    const-string v2, "neox_launcher_failure"

    invoke-static {v1, v2}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1450
    :goto_0
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    const-string v2, "neox_confirm"

    invoke-static {v1, v2}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/lotr/Launcher$PatchFile$1$1;

    invoke-direct {v2, p0}, Lcom/netease/lotr/Launcher$PatchFile$1$1;-><init>(Lcom/netease/lotr/Launcher$PatchFile$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1459
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1464
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v1

    const-class v2, Lcom/netease/lotr/Client;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 1465
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1466
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/lotr/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1467
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher;->finish()V

    return-void
.end method
