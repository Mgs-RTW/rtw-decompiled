.class public Lcom/netease/cloud/nos/android/monitor/StatisticItem;
.super Ljava/lang/Object;
.source "StatisticItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketName:Ljava/lang/String;

.field private chunkRetryCount:I

.field private clientIP:Ljava/lang/String;

.field private fileSize:J

.field private lbsHttpCode:I

.field private lbsIP:Ljava/lang/String;

.field private lbsSucc:I

.field private lbsUseTime:J

.field private netEnv:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private queryRetryCount:I

.field private sdkVersion:Ljava/lang/String;

.field private uploadRetryCount:I

.field private uploadType:I

.field private uploaderHttpCode:I

.field private uploaderIP:Ljava/lang/String;

.field private uploaderSucc:I

.field private uploaderUseTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 241
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem$1;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem$1;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android"

    .line 9
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    const-string v0, "2.0"

    .line 11
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    .line 19
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    const/16 v1, 0xc8

    .line 20
    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    .line 21
    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    .line 22
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    .line 23
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    .line 24
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    const/16 v0, 0x3e8

    .line 26
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIIIIIIILjava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "android"

    .line 9
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    const-string v1, "2.0"

    .line 11
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    .line 19
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    const/16 v2, 0xc8

    .line 20
    iput v2, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    .line 21
    iput v2, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    .line 22
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    .line 23
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    .line 24
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    const/16 v1, 0x3e8

    .line 26
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    move-object v1, p1

    .line 53
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    move-object v1, p2

    .line 54
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    move-object v1, p3

    .line 55
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    move-object v1, p4

    .line 56
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    move-object v1, p5

    .line 57
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    move-wide v1, p6

    .line 58
    iput-wide v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    move-object v1, p8

    .line 59
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    move-wide v1, p9

    .line 60
    iput-wide v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    move-wide v1, p11

    .line 61
    iput-wide v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    move/from16 v1, p13

    .line 62
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    move/from16 v1, p14

    .line 63
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    move/from16 v1, p15

    .line 64
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    move/from16 v1, p16

    .line 65
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    move/from16 v1, p17

    .line 66
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    move/from16 v1, p18

    .line 67
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    move/from16 v1, p19

    .line 68
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    move-object/from16 v1, p20

    .line 69
    iput-object v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    move/from16 v1, p21

    .line 70
    iput v1, v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getChunkRetryCount()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    return v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    return-wide v0
.end method

.method public getLbsHttpCode()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    return v0
.end method

.method public getLbsIP()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLbsSucc()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    return v0
.end method

.method public getLbsUseTime()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    return-wide v0
.end method

.method public getNetEnv()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryRetryCount()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadRetryCount()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    return v0
.end method

.method public getUploadType()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    return v0
.end method

.method public getUploaderHttpCode()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    return v0
.end method

.method public getUploaderIP()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderSucc()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    return v0
.end method

.method public getUploaderUseTime()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    return-wide v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setChunkRetryCount(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    return-void
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    return-void
.end method

.method public setLbsHttpCode(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    return-void
.end method

.method public setLbsIP(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    return-void
.end method

.method public setLbsSucc(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    return-void
.end method

.method public setLbsUseTime(J)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    return-void
.end method

.method public setNetEnv(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    return-void
.end method

.method public setQueryRetryCount(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    return-void
.end method

.method public setUploadRetryCount(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    return-void
.end method

.method public setUploadType(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    return-void
.end method

.method public setUploaderHttpCode(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    return-void
.end method

.method public setUploaderIP(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    return-void
.end method

.method public setUploaderSucc(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    return-void
.end method

.method public setUploaderUseTime(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 221
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
