.class public abstract Lcom/netease/ntunisdk/glide/request/ExperimentalRequestListener;
.super Ljava/lang/Object;
.source "ExperimentalRequestListener.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResourceT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/request/RequestListener<",
        "TResourceT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/load/DataSource;ZZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResourceT;",
            "Ljava/lang/Object;",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "TResourceT;>;",
            "Lcom/netease/ntunisdk/glide/load/DataSource;",
            "ZZ)Z"
        }
    .end annotation
.end method
