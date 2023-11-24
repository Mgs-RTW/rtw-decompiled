.class public Lcom/appsflyer/share/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field static AFDateFormat:Ljava/lang/String; = null

.field public static final LOG_CROSS_PROMOTION_APP_INSTALLED_FROM_CROSS_PROMOTION:Ljava/lang/String; = "[CrossPromotion] App was installed via %s\'s Cross Promotion"

.field public static final LOG_INVITE_DETECTED_APP_INVITE_VIA_CHANNEL:Ljava/lang/String; = "[Invite] Detected App-Invite via channel: "

.field public static final URL_CAMPAIGN:Ljava/lang/String; = "c"

.field public static final URL_CHANNEL:Ljava/lang/String; = "af_channel"

.field public static final URL_MEDIA_SOURCE:Ljava/lang/String; = "pid"

.field public static final URL_SITE_ID:Ljava/lang/String; = "af_siteid"

.field public static final USER_INVITE_LINK_TYPE:Ljava/lang/String; = "af_app_invites"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "https://%sapp.%s"

    sput-object v0, Lcom/appsflyer/share/Constants;->AFDateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
