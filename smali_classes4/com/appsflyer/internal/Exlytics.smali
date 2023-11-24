.class public Lcom/appsflyer/internal/Exlytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXCEPTION_COUNT_KEY:Ljava/lang/String; = "exception_number"

.field private static values:Landroid/app/Application;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()J
    .locals 4

    .prologue
    .line 27
    sget-object v0, Lcom/appsflyer/internal/Exlytics;->values:Landroid/app/Application;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 28
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/Exlytics;->values:Landroid/app/Application;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "exception_number"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static increment()V
    .locals 6

    .prologue
    .line 19
    sget-object v0, Lcom/appsflyer/internal/Exlytics;->values:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/Exlytics;->values:Landroid/app/Application;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exception_number"

    .line 22
    invoke-static {}, Lcom/appsflyer/internal/Exlytics;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setContext(Landroid/app/Application;)V
    .locals 0
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    sput-object p0, Lcom/appsflyer/internal/Exlytics;->values:Landroid/app/Application;

    .line 16
    return-void
.end method
