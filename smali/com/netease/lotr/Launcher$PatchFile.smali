.class Lcom/netease/lotr/Launcher$PatchFile;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PatchFile"
.end annotation


# instance fields
.field private m_patch_status:I

.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher;)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netease/lotr/Launcher$PatchFile;)I
    .locals 0

    .line 1416
    iget p0, p0, Lcom/netease/lotr/Launcher$PatchFile;->m_patch_status:I

    return p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1422
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$900(Lcom/netease/lotr/Launcher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/neox/NativeInterface;->NativeStartPatch(Ljava/lang/String;)V

    .line 1423
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetPatchStatus()I

    move-result v0

    iput v0, p0, Lcom/netease/lotr/Launcher$PatchFile;->m_patch_status:I

    .line 1424
    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchFile;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    new-instance v1, Lcom/netease/lotr/Launcher$PatchFile$1;

    invoke-direct {v1, p0}, Lcom/netease/lotr/Launcher$PatchFile$1;-><init>(Lcom/netease/lotr/Launcher$PatchFile;)V

    invoke-virtual {v0, v1}, Lcom/netease/lotr/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
