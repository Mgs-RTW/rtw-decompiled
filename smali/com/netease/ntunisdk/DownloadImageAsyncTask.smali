.class Lcom/netease/ntunisdk/DownloadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "DownloadImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

.field private canceled:Z

.field protected defaultSuffix:Ljava/lang/String;

.field protected final filePath:Ljava/io/File;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected final shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 5

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ".jpg"

    .line 24
    iput-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->defaultSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->canceled:Z

    .line 35
    iput-object p2, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->ref:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p3, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    .line 39
    new-instance p3, Ljava/io/File;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unifb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->filePath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/DownloadImageAsyncTask;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->canceled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/DownloadImageAsyncTask;)Lcom/netease/ntunisdk/FbMediaProcessCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    return-object p0
.end method

.method static download(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .line 71
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 75
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->filePath:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 79
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 86
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method protected getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->defaultSuffix:Ljava/lang/String;

    const-string v1, "."

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-boolean p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->canceled:Z

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 100
    iget-object v1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/FbMediaProcessCallback;->done(ZLcom/netease/ntunisdk/base/ShareInfo;)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 52
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 55
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;-><init>(Lcom/netease/ntunisdk/DownloadImageAsyncTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
