.class final Lcom/netease/ntunisdk/base/function/a$1;
.super Ljava/lang/Object;
.source "AiDetect.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/function/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;Z)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/ntunisdk/base/function/a$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/function/a$1;->b:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-boolean p3, p0, Lcom/netease/ntunisdk/base/function/a$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p2, "AiDetect"

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queryAdultAsMirror Result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 143
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 144
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "data"

    .line 145
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/a$1;->b:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/function/a$1;->c:Z

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/function/a;->b(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/a$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v0, "REQUIRE_AI_DETECT"

    invoke-virtual {p1, v0, p2}, Lcom/netease/ntunisdk/base/SdkBase;->setFeature(Ljava/lang/String;Z)V

    .line 150
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/a$1;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/function/a$1;->b:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/base/function/a$1;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->continueOrderSetting(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/a$1;->b:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/function/a$1;->c:Z

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/function/a;->b(Lcom/netease/ntunisdk/base/OrderInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/a$1;->b:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/function/a$1;->c:Z

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/function/a;->b(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    :goto_1
    return p2
.end method
