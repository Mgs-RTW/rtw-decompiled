.class public interface abstract Lcom/netease/ntunisdk/glide/load/Option$CacheKeyUpdater;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CacheKeyUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract update([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation
.end method
