.class final Lcom/netease/ybuax/HttpTools$2;
.super Ljava/lang/Object;
.source "HttpTools.java"

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ybuax/HttpTools;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadForRequest(Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/netease/ybuax/HttpTools;->cookieStore:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public saveFromResponse(Lcom/netease/ntunisdk/okhttp3/HttpUrl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/netease/ybuax/HttpTools;->cookieStore:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
