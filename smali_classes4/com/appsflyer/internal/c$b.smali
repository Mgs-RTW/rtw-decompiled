.class public final enum Lcom/appsflyer/internal/c$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/internal/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum $$b:Lcom/appsflyer/internal/c$b;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/c$b;

.field public static final enum values:Lcom/appsflyer/internal/c$b;


# instance fields
.field public AFDateFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    new-instance v0, Lcom/appsflyer/internal/c$b;

    const-string v1, "XPOSED"

    const-string v2, "xps"

    invoke-direct {v0, v1, v3, v2}, Lcom/appsflyer/internal/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/c$b;->values:Lcom/appsflyer/internal/c$b;

    new-instance v0, Lcom/appsflyer/internal/c$b;

    const-string v1, "FRIDA"

    const-string v2, "frd"

    invoke-direct {v0, v1, v4, v2}, Lcom/appsflyer/internal/c$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/c$b;->$$b:Lcom/appsflyer/internal/c$b;

    .line 318
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appsflyer/internal/c$b;

    sget-object v1, Lcom/appsflyer/internal/c$b;->values:Lcom/appsflyer/internal/c$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/c$b;->$$b:Lcom/appsflyer/internal/c$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsflyer/internal/c$b;->valueOf:[Lcom/appsflyer/internal/c$b;

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
    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 324
    iput-object p3, p0, Lcom/appsflyer/internal/c$b;->AFDateFormat:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/c$b;
    .locals 1

    .prologue
    .line 318
    const-class v0, Lcom/appsflyer/internal/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/c$b;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/internal/c$b;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/appsflyer/internal/c$b;->valueOf:[Lcom/appsflyer/internal/c$b;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/c$b;

    return-object v0
.end method
