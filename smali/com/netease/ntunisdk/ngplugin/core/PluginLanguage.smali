.class public Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;
.super Ljava/lang/Object;
.source "PluginLanguage.java"


# instance fields
.field private final fontPath:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private final region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->fontPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFontPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->fontPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginLocale()Ljava/util/Locale;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
