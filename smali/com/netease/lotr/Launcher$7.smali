.class Lcom/netease/lotr/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher;->startPatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher;)V
    .locals 0

    .line 1367
    iput-object p1, p0, Lcom/netease/lotr/Launcher$7;->this$0:Lcom/netease/lotr/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1372
    iget-object p1, p0, Lcom/netease/lotr/Launcher$7;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/lotr/Launcher;->patching()V

    return-void
.end method
