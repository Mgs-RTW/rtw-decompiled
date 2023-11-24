.class Lcom/netease/lotr/Launcher$CopyFile$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher$CopyFile;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/lotr/Launcher$CopyFile;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher$CopyFile;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcom/netease/lotr/Launcher$CopyFile$1;->this$1:Lcom/netease/lotr/Launcher$CopyFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/netease/lotr/Launcher$CopyFile$1;->this$1:Lcom/netease/lotr/Launcher$CopyFile;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$CopyFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$800(Lcom/netease/lotr/Launcher;)V

    return-void
.end method
