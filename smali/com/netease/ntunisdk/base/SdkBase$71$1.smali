.class final Lcom/netease/ntunisdk/base/SdkBase$71$1;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase$71;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase$71;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase$71;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 8254
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ProcessResult(Ljava/lang/String;)V
    .locals 3

    .line 8259
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 8261
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S_OK"

    .line 8262
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8263
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->b(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;

    .line 8265
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "CMCC_PAYTYPE"

    .line 8266
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8267
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 8269
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "CMCC_PAYTYPE"

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->b(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 8272
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->a:Landroid/content/SharedPreferences;

    const-string v1, "CMCC_PAYTYPE"

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->b(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    const-string p1, "UniSDK Base"

    .line 8274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmcc_paytype:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$71$1;->b:Lcom/netease/ntunisdk/base/SdkBase$71;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8275
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "UniSDK Base"

    const-string v0, "queryCmccPaytype parse json error"

    .line 8277
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
