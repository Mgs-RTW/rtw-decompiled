.class Lcom/netease/lotr/Launcher$StorageStatus;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageStatus"
.end annotation


# instance fields
.field public AvailableSize:J

.field public Path:Ljava/lang/String;

.field public Type:I

.field public UIString:Ljava/lang/String;

.field private m_context:Lcom/netease/lotr/Launcher;

.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/lotr/Launcher;Lcom/netease/lotr/Launcher;I)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->this$0:Lcom/netease/lotr/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/netease/lotr/Launcher$StorageStatus;->m_context:Lcom/netease/lotr/Launcher;

    .line 175
    iput p3, p0, Lcom/netease/lotr/Launcher$StorageStatus;->Type:I

    const-wide/16 p1, 0x0

    .line 176
    iput-wide p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->AvailableSize:J

    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 186
    :pswitch_0
    iget-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->m_context:Lcom/netease/lotr/Launcher;

    iget-object p2, p0, Lcom/netease/lotr/Launcher$StorageStatus;->m_context:Lcom/netease/lotr/Launcher;

    const-string p3, "neox_launcher_data_sd"

    invoke-static {p2, p3}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/lotr/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->m_context:Lcom/netease/lotr/Launcher;

    iget-object p2, p0, Lcom/netease/lotr/Launcher$StorageStatus;->m_context:Lcom/netease/lotr/Launcher;

    const-string p3, "neox_launcher_external_sd"

    invoke-static {p2, p3}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/lotr/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->m_context:Lcom/netease/lotr/Launcher;

    iget-object p2, p0, Lcom/netease/lotr/Launcher$StorageStatus;->m_context:Lcom/netease/lotr/Launcher;

    const-string p3, "neox_launcher_internal_sd"

    invoke-static {p2, p3}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/lotr/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
