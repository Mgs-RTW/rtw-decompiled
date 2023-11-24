.class final Lio/netty/channel/nio/SelectedSelectionKeySet;
.super Ljava/util/AbstractSet;
.source "SelectedSelectionKeySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/nio/channels/SelectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field private isA:Z

.field private keysA:[Ljava/nio/channels/SelectionKey;

.field private keysASize:I

.field private keysB:[Ljava/nio/channels/SelectionKey;

.field private keysBSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->isA:Z

    const/16 v0, 0x400

    .line 32
    new-array v0, v0, [Ljava/nio/channels/SelectionKey;

    iput-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    .line 33
    iget-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, [Ljava/nio/channels/SelectionKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/channels/SelectionKey;

    iput-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method private doubleCapacityA()V
    .locals 4

    .line 62
    iget-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/nio/channels/SelectionKey;

    .line 63
    iget-object v1, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    iget v2, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysASize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method private doubleCapacityB()V
    .locals 4

    .line 68
    iget-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/nio/channels/SelectionKey;

    .line 69
    iget-object v1, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    iget v2, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysBSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/SelectionKey;

    invoke-virtual {p0, p1}, Lio/netty/channel/nio/SelectedSelectionKeySet;->add(Ljava/nio/channels/SelectionKey;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/nio/channels/SelectionKey;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->isA:Z

    if-eqz v0, :cond_1

    .line 43
    iget v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysASize:I

    .line 44
    iget-object v1, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    add-int/lit8 v2, v0, 0x1

    aput-object p1, v1, v0

    .line 45
    iput v2, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysASize:I

    .line 46
    iget-object p1, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    array-length p1, p1

    if-ne v2, p1, :cond_2

    .line 47
    invoke-direct {p0}, Lio/netty/channel/nio/SelectedSelectionKeySet;->doubleCapacityA()V

    goto :goto_0

    .line 50
    :cond_1
    iget v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysBSize:I

    .line 51
    iget-object v1, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    add-int/lit8 v2, v0, 0x1

    aput-object p1, v1, v0

    .line 52
    iput v2, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysBSize:I

    .line 53
    iget-object p1, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    array-length p1, p1

    if-ne v2, p1, :cond_2

    .line 54
    invoke-direct {p0}, Lio/netty/channel/nio/SelectedSelectionKeySet;->doubleCapacityB()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method flip()[Ljava/nio/channels/SelectionKey;
    .locals 4

    .line 74
    iget-boolean v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->isA:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 75
    iput-boolean v2, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->isA:Z

    .line 76
    iget-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    iget v3, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysASize:I

    aput-object v1, v0, v3

    .line 77
    iput v2, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysBSize:I

    .line 78
    iget-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysA:[Ljava/nio/channels/SelectionKey;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->isA:Z

    .line 81
    iget-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    iget v3, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysBSize:I

    aput-object v1, v0, v3

    .line 82
    iput v2, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysASize:I

    .line 83
    iget-object v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysB:[Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 89
    iget-boolean v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->isA:Z

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysASize:I

    return v0

    .line 92
    :cond_0
    iget v0, p0, Lio/netty/channel/nio/SelectedSelectionKeySet;->keysBSize:I

    return v0
.end method
