.class Lcom/netease/mcount/a/b$a;
.super Landroid/database/CursorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mcount/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mcount/b/a;
    .locals 12

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ev_key"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getLong(I)J

    move-result-wide v4

    const-string v0, "carrier"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "network_type"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "vpn"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "install_time"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getLong(I)J

    move-result-wide v9

    const-string v0, "segmentation"

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mcount/a/b$a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mcount/d/h;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    move-object v11, v0

    :goto_0
    new-instance v0, Lcom/netease/mcount/b/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/netease/mcount/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v0
.end method
