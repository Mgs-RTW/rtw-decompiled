.class public Lio/netty/util/concurrent/FastThreadLocal;
.super Ljava/lang/Object;
.source "FastThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final variablesToRemoveIndex:I


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->nextVariableIndex()I

    move-result v0

    sput v0, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->nextVariableIndex()I

    move-result v0

    iput v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    return-void
.end method

.method private static addToVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 99
    sget v0, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    invoke-virtual {p0, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v0

    .line 101
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    check-cast v0, Ljava/util/Set;

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 103
    sget v1, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    invoke-virtual {p0, v1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->setIndexedVariable(ILjava/lang/Object;)Z

    .line 108
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static destroy()V
    .locals 0

    .line 94
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->destroy()V

    return-void
.end method

.method private initialize(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            ")TV;"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget v1, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->setIndexedVariable(ILjava/lang/Object;)Z

    .line 161
    invoke-static {p1, p0}, Lio/netty/util/concurrent/FastThreadLocal;->addToVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V

    return-object v0
.end method

.method public static removeAll()V
    .locals 5

    .line 54
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    sget v1, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 61
    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 63
    check-cast v1, Ljava/util/Set;

    .line 65
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lio/netty/util/concurrent/FastThreadLocal;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/concurrent/FastThreadLocal;

    .line 66
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v1, v3

    .line 67
    invoke-virtual {v4, v0}, Lio/netty/util/concurrent/FastThreadLocal;->remove(Lio/netty/util/internal/InternalThreadLocalMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->remove()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->remove()V

    .line 72
    throw v0
.end method

.method private static removeFromVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 114
    sget v0, Lio/netty/util/concurrent/FastThreadLocal;->variablesToRemoveIndex:I

    invoke-virtual {p0, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object p0

    .line 116
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    check-cast p0, Ljava/util/Set;

    .line 122
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static size()I
    .locals 1

    .line 79
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->get(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            ")TV;"
        }
    .end annotation

    .line 144
    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariable(I)Ljava/lang/Object;

    move-result-object v0

    .line 145
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->initialize(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isSet()Z
    .locals 1

    .line 193
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->isSet(Lio/netty/util/internal/InternalThreadLocalMap;)Z

    move-result v0

    return v0
.end method

.method public final isSet(Lio/netty/util/internal/InternalThreadLocalMap;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 201
    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->isIndexedVariableSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final remove()V
    .locals 1

    .line 207
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->remove(Lio/netty/util/internal/InternalThreadLocalMap;)V

    return-void
.end method

.method public final remove(Lio/netty/util/internal/InternalThreadLocalMap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->removeIndexedVariable(I)Ljava/lang/Object;

    move-result-object v0

    .line 222
    invoke-static {p1, p0}, Lio/netty/util/concurrent/FastThreadLocal;->removeFromVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V

    .line 224
    sget-object p1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 226
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocal;->onRemoval(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final set(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/InternalThreadLocalMap;",
            "TV;)V"
        }
    .end annotation

    .line 180
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    .line 181
    iget v0, p0, Lio/netty/util/concurrent/FastThreadLocal;->index:I

    invoke-virtual {p1, v0, p2}, Lio/netty/util/internal/InternalThreadLocalMap;->setIndexedVariable(ILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 182
    invoke-static {p1, p0}, Lio/netty/util/concurrent/FastThreadLocal;->addToVariablesToRemove(Lio/netty/util/internal/InternalThreadLocalMap;Lio/netty/util/concurrent/FastThreadLocal;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->remove(Lio/netty/util/internal/InternalThreadLocalMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 169
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 170
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->set(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->remove()V

    :goto_0
    return-void
.end method
