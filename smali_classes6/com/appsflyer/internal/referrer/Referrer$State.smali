.class public final enum Lcom/appsflyer/internal/referrer/Referrer$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/referrer/Referrer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsflyer/internal/referrer/Referrer$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FINISHED:Lcom/appsflyer/internal/referrer/Referrer$State;

.field public static final enum NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

.field public static final enum STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/referrer/Referrer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/referrer/Referrer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    new-instance v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/referrer/Referrer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    new-instance v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/referrer/Referrer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->FINISHED:Lcom/appsflyer/internal/referrer/Referrer$State;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/referrer/Referrer$State;

    sget-object v1, Lcom/appsflyer/internal/referrer/Referrer$State;->NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/referrer/Referrer$State;->STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/referrer/Referrer$State;->FINISHED:Lcom/appsflyer/internal/referrer/Referrer$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->valueOf:[Lcom/appsflyer/internal/referrer/Referrer$State;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/referrer/Referrer$State;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/referrer/Referrer$State;

    return-object v0
.end method

.method public static values()[Lcom/appsflyer/internal/referrer/Referrer$State;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->valueOf:[Lcom/appsflyer/internal/referrer/Referrer$State;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/referrer/Referrer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/referrer/Referrer$State;

    return-object v0
.end method
