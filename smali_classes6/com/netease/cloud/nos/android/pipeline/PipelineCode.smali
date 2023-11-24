.class public Lcom/netease/cloud/nos/android/pipeline/PipelineCode;
.super Ljava/lang/Object;
.source "PipelineCode.java"


# static fields
.field public static final BACK_OFFSET:I = 0xd

.field public static final CHANNEL_EXCEPTION:I = 0x2

.field public static final CHANNEL_INACTIVE:I = 0x1

.field public static final FAILED_BREAK_RESP:I = 0x4

.field public static final FAILED_READFILE:I = 0xb

.field public static final FAILED_UPLOAD_RESP:I = 0x7

.field public static final INVALID_BREAK_OFFSET:I = 0x5

.field public static final INVALID_SENDOFFSET:I = 0xa

.field public static final INVALID_UPLOAD_OFFSET:I = 0x9

.field public static final INVALID_UPLOAD_RESP:I = 0x8

.field public static final NO_BREAK_RESP:I = 0x3

.field public static final NO_UPLOAD_RESP:I = 0x6

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_REASON:I = 0xe

.field public static final UPLOAD_CANCELLED:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDes(I)Ljava/lang/String;
    .locals 2

    const-string v0, "failed with unknown reason"

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "channel exception is catched"

    goto :goto_0

    :pswitch_1
    const-string v0, "channel is inactive"

    goto :goto_0

    :pswitch_2
    const-string v0, "file upload success"

    goto :goto_0

    :cond_0
    const-string v0, "failed with unknown reason"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSuccess(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
