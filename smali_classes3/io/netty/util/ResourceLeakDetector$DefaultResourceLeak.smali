.class final Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
.super Ljava/lang/ref/PhantomReference;
.source "ResourceLeakDetector.java"

# interfaces
.implements Lio/netty/util/ResourceLeak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultResourceLeak"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/netty/util/ResourceLeak;"
    }
.end annotation


# static fields
.field private static final MAX_RECORDS:I = 0x4


# instance fields
.field private final creationRecord:Ljava/lang/String;

.field private final freed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastRecords:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>.DefaultResource",
            "Leak;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>.DefaultResource",
            "Leak;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/util/ResourceLeakDetector;


# direct methods
.method constructor <init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V
    .locals 4

    .line 262
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->this$0:Lio/netty/util/ResourceLeakDetector;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 263
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector;->access$0(Lio/netty/util/ResourceLeakDetector;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, p2, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 257
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    if-eqz p2, :cond_2

    .line 266
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->getLevel()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object p2

    .line 267
    invoke-virtual {p2}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result p2

    sget-object v1, Lio/netty/util/ResourceLeakDetector$Level;->ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    if-lt p2, v1, :cond_1

    const/4 p2, 0x3

    .line 268
    invoke-static {p2}, Lio/netty/util/ResourceLeakDetector;->newRecord(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->creationRecord:Ljava/lang/String;

    goto :goto_1

    .line 270
    :cond_1
    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->creationRecord:Ljava/lang/String;

    .line 274
    :goto_1
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector;->access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object p2

    monitor-enter p2

    .line 275
    :try_start_0
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector;->access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 276
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector;->access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object v0

    iget-object v0, v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 277
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector;->access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object v0

    iget-object v0, v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iput-object p0, v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 278
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector;->access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object v0

    iput-object p0, v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 279
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector;->access$2(Lio/netty/util/ResourceLeakDetector;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lio/netty/util/ResourceLeakDetector;->access$3(Lio/netty/util/ResourceLeakDetector;J)V

    .line 274
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 274
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 283
    :cond_2
    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->creationRecord:Ljava/lang/String;

    .line 284
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_2
    return-void
.end method

.method static synthetic access$0(Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    return-void
.end method

.method static synthetic access$1(Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 7

    .line 307
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->this$0:Lio/netty/util/ResourceLeakDetector;

    invoke-static {v0}, Lio/netty/util/ResourceLeakDetector;->access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    move-result-object v0

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->this$0:Lio/netty/util/ResourceLeakDetector;

    invoke-static {v2}, Lio/netty/util/ResourceLeakDetector;->access$2(Lio/netty/util/ResourceLeakDetector;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lio/netty/util/ResourceLeakDetector;->access$3(Lio/netty/util/ResourceLeakDetector;J)V

    .line 310
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iput-object v3, v2, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 311
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iput-object v3, v2, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    const/4 v2, 0x0

    .line 312
    iput-object v2, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->prev:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 313
    iput-object v2, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->next:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 308
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return v2
.end method

.method public record()V
    .locals 4

    .line 290
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->creationRecord:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 291
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetector;->newRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    :cond_0
    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    invoke-interface {v3, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x4

    if-le v2, v0, :cond_2

    .line 299
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 293
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 321
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->creationRecord:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 326
    :cond_0
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->lastRecords:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x4000

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Recent access records: "

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    array-length v2, v1

    if-lez v2, :cond_2

    .line 337
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x23

    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    .line 339
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, "Created at:"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->creationRecord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 326
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
