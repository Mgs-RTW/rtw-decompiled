.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$4;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->startRecord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$4;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const-string p1, "ng_voice Manager"

    const-string v0, "record onInfo what = %d,extra = %d"

    const/4 v1, 0x2

    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$4;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1, v2, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$100(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZZ)V

    :cond_0
    return-void
.end method
