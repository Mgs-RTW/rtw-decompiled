.class public Lcom/netease/ntunisdk/glide/load/model/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileDescriptorFactory;,
        Lcom/netease/ntunisdk/glide/load/model/FileLoader$StreamFactory;,
        Lcom/netease/ntunisdk/glide/load/model/FileLoader$Factory;,
        Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;,
        Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/model/ModelLoader<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileLoader"


# instance fields
.field private final fileOpener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener<",
            "TData;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader;->fileOpener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/io/File;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData<",
            "TData;>;"
        }
    .end annotation

    .line 38
    new-instance p2, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/netease/ntunisdk/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/netease/ntunisdk/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/FileLoader;->fileOpener:Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;

    invoke-direct {p4, p1, v0}, Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileFetcher;-><init>(Ljava/io/File;Lcom/netease/ntunisdk/glide/load/model/FileLoader$FileOpener;)V

    invoke-direct {p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/netease/ntunisdk/glide/load/Key;Lcom/netease/ntunisdk/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 24
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/model/FileLoader;->buildLoadData(Ljava/io/File;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/load/model/FileLoader;->handles(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
