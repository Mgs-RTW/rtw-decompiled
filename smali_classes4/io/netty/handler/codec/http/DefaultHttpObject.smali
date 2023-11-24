.class public Lio/netty/handler/codec/http/DefaultHttpObject;
.super Ljava/lang/Object;
.source "DefaultHttpObject.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpObject;


# instance fields
.field private decoderResult:Lio/netty/handler/codec/DecoderResult;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method


# virtual methods
.method public getDecoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-object v0
.end method

.method public setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "decoderResult"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
