.class public Lcom/netease/cloud/nos/android/utils/FileInput;
.super Ljava/lang/Object;
.source "FileInput.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/netease/cloud/nos/android/utils/FileInput;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/utils/FileInput;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/netease/cloud/nos/android/utils/FileInput;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 24
    :goto_0
    iput-object p2, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public doClose()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/netease/cloud/nos/android/utils/FileInput;->LOGTAG:Ljava/lang/String;

    const-string v2, "close file exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public length()J
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(JI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/utils/FileInput;->length()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, 0x0

    .line 48
    new-array p1, p1, [B

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/utils/FileInput;->length()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_1
    new-array p3, p3, [B

    .line 55
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    iget-object p1, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->read([B)I

    return-object p3
.end method
