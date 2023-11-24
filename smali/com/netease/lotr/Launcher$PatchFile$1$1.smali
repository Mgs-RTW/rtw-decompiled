.class Lcom/netease/lotr/Launcher$PatchFile$1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher$PatchFile$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/lotr/Launcher$PatchFile$1;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher$PatchFile$1;)V
    .locals 0

    .line 1451
    iput-object p1, p0, Lcom/netease/lotr/Launcher$PatchFile$1$1;->this$2:Lcom/netease/lotr/Launcher$PatchFile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1456
    iget-object p1, p0, Lcom/netease/lotr/Launcher$PatchFile$1$1;->this$2:Lcom/netease/lotr/Launcher$PatchFile$1;

    iget-object p1, p1, Lcom/netease/lotr/Launcher$PatchFile$1;->this$1:Lcom/netease/lotr/Launcher$PatchFile;

    iget-object p1, p1, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/lotr/Launcher;->finish()V

    return-void
.end method
