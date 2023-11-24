.class public Lio/netty/handler/codec/DecoderResult;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# static fields
.field protected static final SIGNAL_SUCCESS:Lio/netty/util/Signal;

.field protected static final SIGNAL_UNFINISHED:Lio/netty/util/Signal;

.field public static final SUCCESS:Lio/netty/handler/codec/DecoderResult;

.field public static final UNFINISHED:Lio/netty/handler/codec/DecoderResult;


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/handler/codec/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".UNFINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/Signal;->valueOf(Ljava/lang/String;)Lio/netty/util/Signal;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/DecoderResult;->SIGNAL_UNFINISHED:Lio/netty/util/Signal;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/handler/codec/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/Signal;->valueOf(Ljava/lang/String;)Lio/netty/util/Signal;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/DecoderResult;->SIGNAL_SUCCESS:Lio/netty/util/Signal;

    .line 25
    new-instance v0, Lio/netty/handler/codec/DecoderResult;

    sget-object v1, Lio/netty/handler/codec/DecoderResult;->SIGNAL_UNFINISHED:Lio/netty/util/Signal;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/DecoderResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lio/netty/handler/codec/DecoderResult;->UNFINISHED:Lio/netty/handler/codec/DecoderResult;

    .line 26
    new-instance v0, Lio/netty/handler/codec/DecoderResult;

    sget-object v1, Lio/netty/handler/codec/DecoderResult;->SIGNAL_SUCCESS:Lio/netty/util/Signal;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/DecoderResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lio/netty/handler/codec/DecoderResult;->cause:Ljava/lang/Throwable;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cause"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;
    .locals 1

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lio/netty/handler/codec/DecoderResult;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/DecoderResult;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cause"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cause()Ljava/lang/Throwable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/handler/codec/DecoderResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/netty/handler/codec/DecoderResult;->cause:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFailure()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lio/netty/handler/codec/DecoderResult;->cause:Ljava/lang/Throwable;

    sget-object v1, Lio/netty/handler/codec/DecoderResult;->SIGNAL_SUCCESS:Lio/netty/util/Signal;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/DecoderResult;->cause:Ljava/lang/Throwable;

    sget-object v1, Lio/netty/handler/codec/DecoderResult;->SIGNAL_UNFINISHED:Lio/netty/util/Signal;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/DecoderResult;->cause:Ljava/lang/Throwable;

    sget-object v1, Lio/netty/handler/codec/DecoderResult;->SIGNAL_UNFINISHED:Lio/netty/util/Signal;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lio/netty/handler/codec/DecoderResult;->cause:Ljava/lang/Throwable;

    sget-object v1, Lio/netty/handler/codec/DecoderResult;->SIGNAL_SUCCESS:Lio/netty/util/Signal;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    invoke-virtual {p0}, Lio/netty/handler/codec/DecoderResult;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "success"

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/DecoderResult;->cause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "failure("

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "unfinished"

    return-object v0
.end method
