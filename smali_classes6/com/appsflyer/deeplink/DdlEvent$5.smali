.class final Lcom/appsflyer/deeplink/DdlEvent$5;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/deeplink/DdlEvent;->$$b(Lcom/appsflyer/AdvertisingIdObject;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic $$a:Lcom/appsflyer/AdvertisingIdObject;


# direct methods
.method constructor <init>(Lcom/appsflyer/AdvertisingIdObject;)V
    .locals 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/appsflyer/deeplink/DdlEvent$5;->$$a:Lcom/appsflyer/AdvertisingIdObject;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 144
    const-string v0, "type"

    const-string v1, "unhashed"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "value"

    iget-object v1, p0, Lcom/appsflyer/deeplink/DdlEvent$5;->$$a:Lcom/appsflyer/AdvertisingIdObject;

    invoke-virtual {v1}, Lcom/appsflyer/AdvertisingIdObject;->getAdvertisingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method
