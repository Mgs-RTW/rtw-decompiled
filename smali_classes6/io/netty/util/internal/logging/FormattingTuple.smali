.class Lio/netty/util/internal/logging/FormattingTuple;
.super Ljava/lang/Object;
.source "FormattingTuple.java"


# static fields
.field static final NULL:Lio/netty/util/internal/logging/FormattingTuple;


# instance fields
.field private final argArray:[Ljava/lang/Object;

.field private final message:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lio/netty/util/internal/logging/FormattingTuple;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/util/internal/logging/FormattingTuple;->NULL:Lio/netty/util/internal/logging/FormattingTuple;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0, v0}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/netty/util/internal/logging/FormattingTuple;->message:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lio/netty/util/internal/logging/FormattingTuple;->throwable:Ljava/lang/Throwable;

    if-nez p3, :cond_0

    .line 61
    iput-object p2, p0, Lio/netty/util/internal/logging/FormattingTuple;->argArray:[Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p2}, Lio/netty/util/internal/logging/FormattingTuple;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/internal/logging/FormattingTuple;->argArray:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_0

    .line 68
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 71
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 72
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 73
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "non-sensical empty or null argument array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getArgArray()[Ljava/lang/Object;
    .locals 1

    .line 82
    iget-object v0, p0, Lio/netty/util/internal/logging/FormattingTuple;->argArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/netty/util/internal/logging/FormattingTuple;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/netty/util/internal/logging/FormattingTuple;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
