.class Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;
.super Ljava/lang/Object;
.source "ImgManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imgUri:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

.field final synthetic val$upInfo:Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$imgUri:Ljava/lang/Object;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;

    iput-object p4, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$listener:Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$imgUri:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;

    iget v2, v2, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->size:I

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "gm_bridge ImgManager"

    if-eqz v1, :cond_0

    const-string v0, "can\'t ge a suitable img,it\'s over"

    .line 47
    invoke-static {v2, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$listener:Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->access$000(Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v3, "img file path = %s"

    invoke-static {v2, v3, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$upInfo:Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager$1;->val$listener:Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/imgupload/ImgManager;->access$100(Ljava/lang/String;Lcom/netease/unisdk/gmbridge5/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge5/imgupload/IUploadFinishListener;)V

    return-void
.end method
