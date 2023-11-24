.class public final enum Lcom/appsflyer/internal/c$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/internal/c$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum $$a:Lcom/appsflyer/internal/c$d;

.field public static final enum $$b:Lcom/appsflyer/internal/c$d;

.field private static final synthetic AFDateFormat:[Lcom/appsflyer/internal/c$d;

.field public static final enum valueOf:Lcom/appsflyer/internal/c$d;


# instance fields
.field public values:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    new-instance v0, Lcom/appsflyer/internal/c$d;

    const-string v1, "NULL"

    const-string v2, "null"

    invoke-direct {v0, v1, v3, v2}, Lcom/appsflyer/internal/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/c$d;->$$b:Lcom/appsflyer/internal/c$d;

    new-instance v0, Lcom/appsflyer/internal/c$d;

    const-string v1, "COM_ANDROID_VENDING"

    const-string v2, "cav"

    invoke-direct {v0, v1, v4, v2}, Lcom/appsflyer/internal/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/c$d;->valueOf:Lcom/appsflyer/internal/c$d;

    new-instance v0, Lcom/appsflyer/internal/c$d;

    const-string v1, "OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v5, v2}, Lcom/appsflyer/internal/c$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/c$d;->$$a:Lcom/appsflyer/internal/c$d;

    .line 301
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/c$d;

    sget-object v1, Lcom/appsflyer/internal/c$d;->$$b:Lcom/appsflyer/internal/c$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/c$d;->valueOf:Lcom/appsflyer/internal/c$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/c$d;->$$a:Lcom/appsflyer/internal/c$d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appsflyer/internal/c$d;->AFDateFormat:[Lcom/appsflyer/internal/c$d;

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
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 307
    iput-object p3, p0, Lcom/appsflyer/internal/c$d;->values:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/c$d;
    .locals 1

    .prologue
    .line 301
    const-class v0, Lcom/appsflyer/internal/c$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/c$d;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/internal/c$d;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/appsflyer/internal/c$d;->AFDateFormat:[Lcom/appsflyer/internal/c$d;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/c$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/c$d;

    return-object v0
.end method
