.class public Lcom/netease/cloud/nos/android/constants/Code;
.super Ljava/lang/Object;
.source "Code.java"


# static fields
.field public static final BAD_REQUEST:I = 0x190

.field public static final CACHE_EXPIRED:I = 0x194

.field public static final CALLBACK_ERROR:I = 0x208

.field public static final CONNECTION_REFUSED:I = 0x385

.field public static final CONNECTION_RESET:I = 0x386

.field public static final CONNECTION_TIMEOUT:I = 0x384

.field public static final HTTP_EXCEPTION:I = 0x31f

.field public static final HTTP_NO_RESPONSE:I = 0x383

.field public static final HTTP_SUCCESS:I = 0xc8

.field public static final INVALID_LBS_DATA:I = 0x2bc

.field public static final INVALID_OFFSET:I = 0x2bb

.field public static final INVALID_RESPONSE_DATA:I = 0x2bd

.field public static final INVALID_TOKEN:I = 0x193

.field public static final LBS_ERROR:I = 0x190

.field public static final MONITOR_CANCELED:I = 0x2

.field public static final MONITOR_FAIL:I = 0x1

.field public static final MONITOR_SUCCESS:I = 0x0

.field public static final SERVER_ERROR:I = 0x1f4

.field public static final SOCKET_TIMEOUT:I = 0x387

.field public static final SSL_FAILED:I = 0x388

.field public static final UNKNOWN_REASON:I = 0x3e7

.field public static final UPLOADING_CANCEL:I = 0x258


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDes(I)Ljava/lang/String;
    .locals 2

    const-string v0, "could not upload file with unknown reason, please contact with us"

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_8

    const/16 v1, 0x190

    if-eq p0, v1, :cond_7

    const/16 v1, 0x193

    if-eq p0, v1, :cond_6

    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_5

    const/16 v1, 0x208

    if-eq p0, v1, :cond_4

    const/16 v1, 0x2bb

    if-eq p0, v1, :cond_3

    const/16 v1, 0x31f

    if-eq p0, v1, :cond_2

    const/16 v1, 0x383

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3e7

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "could not upload file with unknown reason, please contact with us"

    goto :goto_0

    :cond_1
    const-string v0, "could not upload file with no http response, please contact with us"

    goto :goto_0

    :cond_2
    const-string v0, "could not upload file with http exception, please wait for network recover"

    goto :goto_0

    :cond_3
    const-string v0, "could not upload file with invalid break point offset."

    goto :goto_0

    :cond_4
    const-string v0, "could not upload file with callback error."

    goto :goto_0

    :cond_5
    const-string v0, "could not upload file with server inner error, please contact with us"

    goto :goto_0

    :cond_6
    const-string v0, "could not upload file with invalid token, please change your token before uploading"

    goto :goto_0

    :cond_7
    const-string v0, "bad request, please confirm the sdk usage"

    goto :goto_0

    :cond_8
    const-string v0, "file upload success"

    :goto_0
    return-object v0
.end method

.method public static isOK(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
