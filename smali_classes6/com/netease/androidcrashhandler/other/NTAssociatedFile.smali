.class public Lcom/netease/androidcrashhandler/other/NTAssociatedFile;
.super Ljava/lang/Object;
.source "NTAssociatedFile.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NTAssociatedFile"


# instance fields
.field public mDesFileName:Ljava/lang/String;

.field public mSrcContent:Ljava/lang/String;

.field public mSrcFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcFilePath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcContent:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mDesFileName:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcFilePath:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcContent:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mDesFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDesFileName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mDesFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcContent()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setDesFileName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mDesFileName:Ljava/lang/String;

    return-void
.end method

.method public setSrcContent(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcContent:Ljava/lang/String;

    return-void
.end method

.method public setSrcFilePath(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcFilePath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSrcFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSrcContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mSrcContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/other/NTAssociatedFile;->mDesFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
