.class public Lcom/appsflyer/Foreground;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/Foreground$Listener;
    }
.end annotation


# static fields
.field public static CHECK_DELAY:J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static listener:Lcom/appsflyer/Foreground$Listener;


# direct methods
.method static $$a(Landroid/content/Context;Lcom/appsflyer/Foreground$Listener;)V
    .locals 2

    .prologue
    .line 24
    sput-object p1, Lcom/appsflyer/Foreground;->listener:Lcom/appsflyer/Foreground$Listener;

    .line 25
    new-instance v1, Lcom/appsflyer/Foreground$2;

    invoke-direct {v1, p1}, Lcom/appsflyer/Foreground$2;-><init>(Lcom/appsflyer/Foreground$Listener;)V

    .line 101
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 104
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/appsflyer/Foreground;->CHECK_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
