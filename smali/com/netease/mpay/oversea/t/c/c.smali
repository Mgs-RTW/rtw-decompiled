.class public Lcom/netease/mpay/oversea/t/c/c;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/netease/mpay/oversea/t/c/c;
    .locals 2

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/t/a;->a([B)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/netease/mpay/oversea/t/a;->a(Ljava/util/HashMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    const-string v1, "0"

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    const-string v1, "1"

    .line 15
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/c;->b:Ljava/lang/String;

    .line 16
    iput-object p0, v0, Lcom/netease/mpay/oversea/t/c/c;->c:Ljava/util/HashMap;

    return-object v0

    .line 17
    :cond_1
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    return-object p0

    .line 18
    :catch_0
    new-instance p0, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a()[B
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/c;->b:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/c;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/netease/mpay/oversea/t/a;->a(Ljava/io/Serializable;)[B

    move-result-object v0

    return-object v0
.end method
