.class public interface abstract Lio/netty/handler/codec/http/LastHttpContent;
.super Ljava/lang/Object;
.source "LastHttpContent.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpContent;


# static fields
.field public static final EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lio/netty/handler/codec/http/LastHttpContent$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/LastHttpContent$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-void
.end method


# virtual methods
.method public abstract copy()Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract retain()Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract retain(I)Lio/netty/handler/codec/http/LastHttpContent;
.end method

.method public abstract trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;
.end method
