.class public Lcom/appsflyer/internal/attribution/RequestErrorMessage;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static EVENT_TIMEOUT:Ljava/lang/String;

.field public static NO_DEV_KEY:Ljava/lang/String;

.field public static RESPONSE_CODE_FAILURE:Ljava/lang/String;

.field public static STOP_TRACKING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "Event timeout. Check \'minTimeBetweenSessions\' param"

    sput-object v0, Lcom/appsflyer/internal/attribution/RequestErrorMessage;->EVENT_TIMEOUT:Ljava/lang/String;

    .line 5
    const-string v0, "Skipping event because \'isStopped\' is true"

    sput-object v0, Lcom/appsflyer/internal/attribution/RequestErrorMessage;->STOP_TRACKING:Ljava/lang/String;

    .line 6
    const-string v0, "Status code failure"

    sput-object v0, Lcom/appsflyer/internal/attribution/RequestErrorMessage;->RESPONSE_CODE_FAILURE:Ljava/lang/String;

    .line 7
    const-string v0, "No dev key"

    sput-object v0, Lcom/appsflyer/internal/attribution/RequestErrorMessage;->NO_DEV_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
