.class Lcom/netease/lotr/AudioVolumeContentObserver;
.super Landroid/database/ContentObserver;
.source "Client.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public m_pre_ringermode:I

.field public m_pre_volume:F

.field public m_pre_volumeSlient:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 104
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 99
    iput v0, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volume:F

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volumeSlient:I

    .line 101
    iput v0, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_ringermode:I

    .line 105
    iput-object p1, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 111
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 112
    iget-object p1, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 116
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 119
    iget v0, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volumeSlient:I

    .line 121
    iget v2, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volume:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    cmpl-float v2, v1, v3

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget v2, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volume:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    const/4 v0, 0x0

    .line 126
    :cond_1
    :goto_0
    iget v2, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volumeSlient:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volume:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 127
    :cond_2
    invoke-static {v0, v1}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(IF)V

    .line 129
    :cond_3
    iput v1, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volume:F

    .line 130
    iput v0, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_volumeSlient:I

    .line 135
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    .line 136
    iget v0, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_ringermode:I

    if-eq p1, v0, :cond_4

    .line 137
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 138
    iput p1, p0, Lcom/netease/lotr/AudioVolumeContentObserver;->m_pre_ringermode:I

    :cond_4
    return-void
.end method
