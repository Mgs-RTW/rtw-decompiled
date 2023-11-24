.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1083
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1084
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1089
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_8

    .line 1090
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$5(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 1096
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_6

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 1180
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$6()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1176
    :pswitch_0
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$23(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V

    const/16 p1, 0x64

    .line 1177
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto/16 :goto_0

    .line 1170
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1171
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1172
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1173
    invoke-virtual {v0, v1, v2, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCaptureComplete(II[I)V

    goto/16 :goto_0

    .line 1129
    :pswitch_2
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$6()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 1131
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCurrentState(I)V

    .line 1133
    :cond_1
    new-instance v1, Ltv/danmaku/ijk/media/player/StatInfo;

    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/StatInfo;-><init>()V

    .line 1134
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getStatInfo(Ltv/danmaku/ijk/media/player/StatInfo;)V

    .line 1136
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$14(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[TRACE] (PLAYER_LOADERROR) sid=%s addr=%s conwait=%d code=%d ver=%d src=%s server=%s version=%s cdn=%s vbr=%d stream=%s uid=%s template_type=%d room_id=%d sub_id=%d"

    const/16 v7, 0xf

    .line 1137
    new-array v7, v7, [Ljava/lang/Object;

    .line 1139
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$15(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$16()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1f4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$17(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x6

    iget-object v3, v1, Ltv/danmaku/ijk/media/player/StatInfo;->mServerIp:Ljava/lang/String;

    aput-object v3, v7, v2

    const/4 v2, 0x7

    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$18()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/16 v2, 0x8

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$19(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/16 v2, 0xa

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/StatInfo;->mStreamId:Ljava/lang/String;

    aput-object v1, v7, v2

    const/16 v1, 0xb

    aput-object v5, v7, v1

    const/16 v1, 0xc

    .line 1140
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$20(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xd

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$21(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0xe

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$22(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1137
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->sendHttpStat(Ljava/lang/String;)V

    .line 1142
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnError(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1143
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    .line 1145
    :cond_2
    invoke-static {v0, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$7(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    return-void

    .line 1122
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$8(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V

    .line 1123
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$9(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)V

    .line 1124
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$10(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result p1

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$11(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v1

    .line 1125
    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$12(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$13(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v3

    .line 1124
    invoke-virtual {v0, p1, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    return-void

    .line 1118
    :pswitch_4
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnSeekComplete()V

    return-void

    .line 1113
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    long-to-int p1, v1

    .line 1114
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnBufferingUpdate(I)V

    return-void

    :pswitch_6
    if-eqz v0, :cond_3

    .line 1106
    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCurrentState(I)V

    .line 1108
    :cond_3
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    .line 1109
    invoke-static {v0, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$7(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    return-void

    :pswitch_7
    if-eqz v0, :cond_4

    .line 1099
    invoke-virtual {v0, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setCurrentState(I)V

    .line 1101
    :cond_4
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnPrepared()V

    return-void

    :cond_5
    :goto_0
    :pswitch_8
    return-void

    .line 1149
    :cond_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2bc

    if-eq v1, v2, :cond_7

    .line 1150
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$6()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Info ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->notifyOnInfo(II)Z

    return-void

    .line 1091
    :cond_8
    :goto_1
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$6()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IjkMediaPlayer went away with unhandled events"

    invoke-static {p1, v0}, Ltv/danmaku/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_8
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
