.class public Lcom/appsflyer/AdvertisingIdObject;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final $$a:Ljava/lang/Boolean;

.field private $$b:Ljava/lang/Boolean;

.field private final valueOf:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/appsflyer/AdvertisingIdObject;->valueOf:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/appsflyer/AdvertisingIdObject;->$$a:Ljava/lang/Boolean;

    .line 13
    return-void
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->valueOf:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTracking()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->$$a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isManual()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->$$b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setManual(Z)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AdvertisingIdObject;->$$b:Ljava/lang/Boolean;

    .line 21
    return-void
.end method
