.class public final enum Lcom/appsflyer/internal/m$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/internal/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum $$a:Lcom/appsflyer/internal/m$b;

.field public static final enum $$b:Lcom/appsflyer/internal/m$b;

.field public static final enum AFDateFormat:Lcom/appsflyer/internal/m$b;

.field public static final enum dateFormatUTC:Lcom/appsflyer/internal/m$b;

.field private static final synthetic getDataFormatter:[Lcom/appsflyer/internal/m$b;

.field public static final enum valueOf:Lcom/appsflyer/internal/m$b;

.field public static final enum values:Lcom/appsflyer/internal/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 404
    new-instance v0, Lcom/appsflyer/internal/m$b;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/m$b;->AFDateFormat:Lcom/appsflyer/internal/m$b;

    .line 410
    new-instance v0, Lcom/appsflyer/internal/m$b;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/m$b;->valueOf:Lcom/appsflyer/internal/m$b;

    .line 416
    new-instance v0, Lcom/appsflyer/internal/m$b;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/appsflyer/internal/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/m$b;->values:Lcom/appsflyer/internal/m$b;

    .line 422
    new-instance v0, Lcom/appsflyer/internal/m$b;

    const-string v1, "DANGLING_KEY"

    invoke-direct {v0, v1, v6}, Lcom/appsflyer/internal/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/m$b;->$$a:Lcom/appsflyer/internal/m$b;

    .line 428
    new-instance v0, Lcom/appsflyer/internal/m$b;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/appsflyer/internal/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/m$b;->$$b:Lcom/appsflyer/internal/m$b;

    .line 434
    new-instance v0, Lcom/appsflyer/internal/m$b;

    const-string v1, "NULL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/m$b;->dateFormatUTC:Lcom/appsflyer/internal/m$b;

    .line 398
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/appsflyer/internal/m$b;

    sget-object v1, Lcom/appsflyer/internal/m$b;->AFDateFormat:Lcom/appsflyer/internal/m$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/m$b;->valueOf:Lcom/appsflyer/internal/m$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/m$b;->values:Lcom/appsflyer/internal/m$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/m$b;->$$a:Lcom/appsflyer/internal/m$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/m$b;->$$b:Lcom/appsflyer/internal/m$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/appsflyer/internal/m$b;->dateFormatUTC:Lcom/appsflyer/internal/m$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appsflyer/internal/m$b;->getDataFormatter:[Lcom/appsflyer/internal/m$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/m$b;
    .locals 1

    .prologue
    .line 398
    const-class v0, Lcom/appsflyer/internal/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/m$b;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/internal/m$b;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/appsflyer/internal/m$b;->getDataFormatter:[Lcom/appsflyer/internal/m$b;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/m$b;

    return-object v0
.end method
