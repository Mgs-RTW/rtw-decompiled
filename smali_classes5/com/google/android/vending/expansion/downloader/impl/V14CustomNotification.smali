.class public Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;
.super Ljava/lang/Object;
.source "V14CustomNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentKB:J

.field mIcon:I

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalKB:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 32
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    .line 33
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method setProgress(Landroid/app/Notification$Builder;)V
    .locals 0

    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTimeRemaining(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    return-void
.end method

.method public updateNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 65
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    :goto_0
    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 72
    iget-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    const-wide/16 v3, 0x0

    const/4 p2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const-wide/16 v1, -0x1

    iget-wide v3, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    .line 73
    iget-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    shr-long v2, v6, v3

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v0, v5, v5, p2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 77
    :goto_1
    iget-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    iget-wide v3, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 78
    sget v1, Lcom/android/vending/expansion/downloader/R$string;->time_remaining_notification:I

    new-array v2, p2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    .line 79
    invoke-static {v3, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 80
    iget p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    if-eqz p1, :cond_2

    .line 81
    iget p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_2
    const p1, 0x1080081

    .line 84
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 86
    :goto_2
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 87
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 88
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 89
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
