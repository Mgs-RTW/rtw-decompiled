.class public final Lcom/kakao/sdk/network/ExceptionWrapper;
.super Ljava/io/IOException;
.source "ExceptionWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakao/sdk/network/ExceptionWrapper;",
        "Ljava/io/IOException;",
        "origin",
        "",
        "(Ljava/lang/Throwable;)V",
        "getOrigin",
        "()Ljava/lang/Throwable;",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final origin:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/network/ExceptionWrapper;->origin:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getOrigin()Ljava/lang/Throwable;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/kakao/sdk/network/ExceptionWrapper;->origin:Ljava/lang/Throwable;

    return-object v0
.end method
