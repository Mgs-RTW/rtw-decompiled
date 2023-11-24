.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p0

    .line 19
    new-instance v0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->newCall(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;

    invoke-direct {v0, p2, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$1;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/DownloadUtil$OnDownloadListener;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/netease/ntunisdk/okhttp3/Call;->enqueue(Lcom/netease/ntunisdk/okhttp3/Callback;)V

    return-void
.end method
