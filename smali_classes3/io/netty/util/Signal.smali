.class public final Lio/netty/util/Signal;
.super Ljava/lang/Error;
.source "Signal.java"


# static fields
.field private static final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x311aa53385c8549L


# instance fields
.field private final uname:Lio/netty/util/UniqueName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lio/netty/util/Signal;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lio/netty/util/UniqueName;

    sget-object v1, Lio/netty/util/Signal;->map:Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Lio/netty/util/UniqueName;-><init>(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/Signal;->uname:Lio/netty/util/UniqueName;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/util/Signal;
    .locals 1

    .line 41
    new-instance v0, Lio/netty/util/Signal;

    invoke-direct {v0, p0}, Lio/netty/util/Signal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public expect(Lio/netty/util/Signal;)V
    .locals 3

    if-ne p0, p1, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected signal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/netty/util/Signal;->uname:Lio/netty/util/UniqueName;

    invoke-virtual {v0}, Lio/netty/util/UniqueName;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
