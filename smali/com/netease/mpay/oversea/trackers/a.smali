.class public abstract Lcom/netease/mpay/oversea/trackers/a;
.super Ljava/lang/Object;
.source "TraceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/trackers/a$i;,
        Lcom/netease/mpay/oversea/trackers/a$g;,
        Lcom/netease/mpay/oversea/trackers/a$h;,
        Lcom/netease/mpay/oversea/trackers/a$a;,
        Lcom/netease/mpay/oversea/trackers/a$b;,
        Lcom/netease/mpay/oversea/trackers/a$e;,
        Lcom/netease/mpay/oversea/trackers/a$f;,
        Lcom/netease/mpay/oversea/trackers/a$c;,
        Lcom/netease/mpay/oversea/trackers/a$d;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field protected d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/trackers/a;->c:I

    .line 6
    iput-object p2, p0, Lcom/netease/mpay/oversea/trackers/a;->a:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/netease/mpay/oversea/trackers/a;->b:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)Lcom/netease/mpay/oversea/trackers/a;
    .locals 1

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/oversea/trackers/a;->d:Lorg/json/JSONObject;

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/trackers/a;->d:Lorg/json/JSONObject;

    const-string v0, "login_type"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event_name"

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/trackers/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget v1, p0, Lcom/netease/mpay/oversea/trackers/a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x270f

    if-eq v1, v2, :cond_0

    const-string v2, "status"

    .line 9
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/a;->d:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    const-string v2, "event_data"

    .line 12
    :try_start_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
