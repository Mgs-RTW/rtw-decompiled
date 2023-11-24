.class public Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x1e8480

.field private static final URI_PARAM_CALLBACK:Ljava/lang/String; = "callback"

.field private static final URI_PARAM_COOKIES:Ljava/lang/String; = "cookies"

.field private static final URI_PARAM_FILE_FIELD:Ljava/lang/String; = "filefield"

.field private static final URI_PARAM_SIZE:Ljava/lang/String; = "size"

.field private static final URI_PARAM_UPLOAD_URL:Ljava/lang/String; = "upload_url"


# instance fields
.field public callback:Ljava/lang/String;

.field public cookies:Ljava/lang/String;

.field public filefield:Ljava/lang/String;

.field public size:I

.field public uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 61
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static obtain(Ljava/lang/String;)Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
    .locals 3

    .line 39
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 40
    new-instance v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;-><init>()V

    const-string v1, "upload_url"

    .line 41
    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->uploadUrl:Ljava/lang/String;

    const-string v1, "filefield"

    .line 42
    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    const-string v1, "cookies"

    .line 43
    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->cookies:Ljava/lang/String;

    const-string v1, "size"

    .line 44
    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1e8480

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;->str2int(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->size:I

    const-string v1, "callback"

    .line 45
    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadInfo{uploadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->uploadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filefield=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cookies=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->cookies:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callback=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
