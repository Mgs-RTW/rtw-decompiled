.class public Lcom/appsflyer/internal/model/event/ProxyEvent;
.super Lcom/appsflyer/internal/model/event/BackgroundEvent;
.source ""


# instance fields
.field private getInstance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 7
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/model/event/BackgroundEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 8
    return-void
.end method


# virtual methods
.method public body(Ljava/lang/String;)Lcom/appsflyer/internal/model/event/BackgroundEvent;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/appsflyer/internal/model/event/ProxyEvent;->getInstance:Ljava/lang/String;

    .line 12
    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/appsflyer/internal/model/event/ProxyEvent;->getInstance:Ljava/lang/String;

    return-object v0
.end method
