.class Lio/netty/handler/codec/http/HttpHeaderDateFormat$1;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "HttpHeaderDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpHeaderDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/handler/codec/http/HttpHeaderDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/netty/handler/codec/http/HttpHeaderDateFormat;
    .locals 2

    .line 46
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;-><init>(Lio/netty/handler/codec/http/HttpHeaderDateFormat;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat$1;->initialValue()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v0

    return-object v0
.end method
