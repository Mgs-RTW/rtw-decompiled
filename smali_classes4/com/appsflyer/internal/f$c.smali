.class final enum Lcom/appsflyer/internal/f$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/internal/f$c;",
        ">;"
    }
.end annotation


# static fields
.field private static enum $$a:Lcom/appsflyer/internal/f$c;

.field private static enum $$b:Lcom/appsflyer/internal/f$c;

.field private static enum AFDateFormat:Lcom/appsflyer/internal/f$c;

.field private static final synthetic collectIntentsFromActivities:[Lcom/appsflyer/internal/f$c;

.field private static enum getInstance:Lcom/appsflyer/internal/f$c;

.field private static enum valueOf:Lcom/appsflyer/internal/f$c;


# instance fields
.field values:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    new-instance v0, Lcom/appsflyer/internal/f$c;

    const-string v1, "UNKNOWN"

    const-string v2, "uk"

    invoke-direct {v0, v1, v3, v2}, Lcom/appsflyer/internal/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/f$c;->AFDateFormat:Lcom/appsflyer/internal/f$c;

    new-instance v0, Lcom/appsflyer/internal/f$c;

    const-string v1, "ACCELEROMETER"

    const-string v2, "am"

    invoke-direct {v0, v1, v4, v2}, Lcom/appsflyer/internal/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/f$c;->$$b:Lcom/appsflyer/internal/f$c;

    new-instance v0, Lcom/appsflyer/internal/f$c;

    const-string v1, "MAGNETOMETER"

    const-string v2, "mm"

    invoke-direct {v0, v1, v5, v2}, Lcom/appsflyer/internal/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/f$c;->$$a:Lcom/appsflyer/internal/f$c;

    new-instance v0, Lcom/appsflyer/internal/f$c;

    const-string v1, "RESERVED"

    const-string v2, "rs"

    invoke-direct {v0, v1, v6, v2}, Lcom/appsflyer/internal/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/f$c;->valueOf:Lcom/appsflyer/internal/f$c;

    new-instance v0, Lcom/appsflyer/internal/f$c;

    const-string v1, "GYROSCOPE"

    const-string v2, "gs"

    invoke-direct {v0, v1, v7, v2}, Lcom/appsflyer/internal/f$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/f$c;->getInstance:Lcom/appsflyer/internal/f$c;

    .line 222
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appsflyer/internal/f$c;

    sget-object v1, Lcom/appsflyer/internal/f$c;->AFDateFormat:Lcom/appsflyer/internal/f$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/f$c;->$$b:Lcom/appsflyer/internal/f$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/f$c;->$$a:Lcom/appsflyer/internal/f$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/f$c;->valueOf:Lcom/appsflyer/internal/f$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/f$c;->getInstance:Lcom/appsflyer/internal/f$c;

    aput-object v1, v0, v7

    sput-object v0, Lcom/appsflyer/internal/f$c;->collectIntentsFromActivities:[Lcom/appsflyer/internal/f$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Lcom/appsflyer/internal/f$c;->values:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/f$c;
    .locals 1

    .prologue
    .line 222
    const-class v0, Lcom/appsflyer/internal/f$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/f$c;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/internal/f$c;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/appsflyer/internal/f$c;->collectIntentsFromActivities:[Lcom/appsflyer/internal/f$c;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/f$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/f$c;

    return-object v0
.end method
