.class final Lcom/netease/pushclient/PushManagerImpl$1;
.super Ljava/util/HashMap;
.source "PushManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pushclient/PushManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "miui"

    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "huawei"

    .line 91
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hms"

    .line 92
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flyme"

    .line 93
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fcm"

    .line 94
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oppo"

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vivo"

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/netease/pushclient/PushManagerImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
