.class final Lcom/appsflyer/AppsFlyerLibCore$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLibCore;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$b:Lcom/appsflyer/internal/referrer/GoogleReferrer;

.field private synthetic values:Lcom/appsflyer/AppsFlyerLibCore;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/internal/referrer/GoogleReferrer;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$3;->values:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$3;->$$b:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 788
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$3;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->valueOf(Lcom/appsflyer/AppsFlyerLibCore;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 789
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$3;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v3, v2, v0}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v3

    .line 790
    const-string v4, "newGPReferrerSent"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 791
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$3;->$$b:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    invoke-virtual {v4}, Lcom/appsflyer/internal/referrer/Referrer;->getState()Lcom/appsflyer/internal/referrer/Referrer$State;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/referrer/Referrer$State;->NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    if-ne v4, v5, :cond_0

    move v0, v1

    .line 792
    :cond_0
    if-ne v3, v1, :cond_2

    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$3;->values:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Lcom/appsflyer/internal/model/event/Attr;

    invoke-direct {v1}, Lcom/appsflyer/internal/model/event/Attr;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$3;->values:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->valueOf(Lcom/appsflyer/AppsFlyerLibCore;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/model/event/Attr;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->AFDateFormat(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V

    .line 794
    :cond_2
    return-void
.end method
