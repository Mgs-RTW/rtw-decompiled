.class public final Lio/netty/channel/DefaultMessageSizeEstimator;
.super Ljava/lang/Object;
.source "DefaultMessageSizeEstimator.java"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/channel/MessageSizeEstimator;


# instance fields
.field private final handle:Lio/netty/channel/MessageSizeEstimator$Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lio/netty/channel/DefaultMessageSizeEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/DefaultMessageSizeEstimator;-><init>(I)V

    sput-object v0, Lio/netty/channel/DefaultMessageSizeEstimator;->DEFAULT:Lio/netty/channel/MessageSizeEstimator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 65
    new-instance v0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;-><init>(ILio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;)V

    iput-object v0, p0, Lio/netty/channel/DefaultMessageSizeEstimator;->handle:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknownSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: >= 0)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/netty/channel/DefaultMessageSizeEstimator;->handle:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-object v0
.end method
