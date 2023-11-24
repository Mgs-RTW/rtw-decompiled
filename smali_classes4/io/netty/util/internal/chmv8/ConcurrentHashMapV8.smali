.class public Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;
.super Ljava/lang/Object;
.source "ConcurrentHashMapV8.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterHashCode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CollectionView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySpliterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueSpliterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySpliterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapEntry;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntryIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeyIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BaseIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ConcurrentHashMapSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:J

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field static final SEED_INCREMENT:I = 0x61c88647

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field private static final TRANSFERORIGIN:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field static final counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

.field private transient entrySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private volatile transient transferOrigin:I

.field private transient values:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 594
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    const/4 v0, 0x3

    .line 597
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segments"

    const-class v3, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentMask"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentShift"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 6027
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6150
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    .line 6151
    const-class v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    .line 6152
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v2, "sizeCtl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    .line 6154
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v2, "transferIndex"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERINDEX:J

    .line 6156
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v2, "transferOrigin"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERORIGIN:J

    .line 6158
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v2, "baseCount"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->BASECOUNT:J

    .line 6160
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v2, "cellsBusy"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    .line 6162
    const-class v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    .line 6163
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLVALUE:J

    .line 6165
    const-class v0, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 6166
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    .line 6167
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 6170
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I

    return-void

    .line 6169
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 6172
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 838
    invoke-static {p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result p1

    .line 841
    :goto_0
    iput p1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    return-void

    .line 837
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x1

    .line 870
    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 4

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    if-ltz p1, :cond_2

    if-lez p3, :cond_2

    if-ge p1, p3, :cond_0

    move p1, p3

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-long v2, p1

    long-to-float p1, v2

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 897
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    double-to-long p1, p1

    const-wide/32 v0, 0x40000000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    long-to-int p1, p1

    .line 898
    invoke-static {p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result p1

    .line 900
    :goto_0
    iput p1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    return-void

    .line 894
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 850
    iput v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 851
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .line 238
    invoke-static {}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private final addCount(JI)V
    .locals 19

    move-object/from16 v8, p0

    move/from16 v9, p3

    .line 2240
    iget-object v10, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    if-nez v10, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->BASECOUNT:J

    iget-wide v4, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    add-long v11, v4, p1

    move-object/from16 v1, p0

    move-wide v6, v11

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2244
    :cond_0
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    .line 2245
    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode()Lio/netty/util/internal/IntegerHolder;

    move-result-object v4

    const/4 v0, 0x1

    if-eqz v4, :cond_8

    if-eqz v10, :cond_8

    array-length v2, v10

    sub-int/2addr v2, v0

    if-ltz v2, :cond_8

    iget v3, v4, Lio/netty/util/internal/IntegerHolder;->value:I

    and-int/2addr v2, v3

    aget-object v12, v10, v2

    if-eqz v12, :cond_8

    sget-object v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLVALUE:J

    iget-wide v2, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;->value:J

    add-long v17, v2, p1

    move-wide v15, v2

    invoke-virtual/range {v11 .. v18}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v2

    goto :goto_3

    :cond_1
    if-gt v9, v0, :cond_2

    return-void

    .line 2255
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v11

    :cond_3
    if-ltz v9, :cond_7

    .line 2259
    :goto_0
    iget v4, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    int-to-long v0, v4

    cmp-long v2, v11, v0

    if-ltz v2, :cond_7

    iget-object v6, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v6, :cond_7

    array-length v0, v6

    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_7

    if-gez v4, :cond_5

    const/4 v0, -0x1

    if-eq v4, v0, :cond_7

    .line 2262
    iget v0, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    iget v1, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    if-le v0, v1, :cond_7

    iget-object v7, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v7, :cond_4

    goto :goto_2

    .line 2265
    :cond_4
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2266
    invoke-direct {v8, v6, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_1

    .line 2268
    :cond_5
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v5, -0x2

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 2269
    invoke-direct {v8, v6, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2270
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v11

    goto :goto_0

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 2250
    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->fullAddCount(Lio/netty/util/internal/InternalThreadLocalMap;JLio/netty/util/internal/IntegerHolder;Z)V

    return-void
.end method

.method static final casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 754
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I

    shl-long/2addr v1, p1

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    add-long/2addr v3, v1

    move-object v1, p0

    move-wide v2, v3

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 701
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 705
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 706
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 707
    aget-object v3, v0, v2

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    const-class v5, Ljava/lang/Comparable;

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 725
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final fullAddCount(Lio/netty/util/internal/InternalThreadLocalMap;JLio/netty/util/internal/IntegerHolder;Z)V
    .locals 25

    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-object/from16 v0, p4

    const/4 v12, 0x1

    if-nez v0, :cond_1

    .line 6053
    new-instance v0, Lio/netty/util/internal/IntegerHolder;

    invoke-direct {v0}, Lio/netty/util/internal/IntegerHolder;-><init>()V

    .line 6054
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x61c88647

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 6055
    :cond_0
    iput v1, v0, Lio/netty/util/internal/IntegerHolder;->value:I

    move-object/from16 v2, p1

    .line 6056
    invoke-virtual {v2, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->setCounterHashCode(Lio/netty/util/internal/IntegerHolder;)V

    goto :goto_0

    .line 6059
    :cond_1
    iget v1, v0, Lio/netty/util/internal/IntegerHolder;->value:I

    :goto_0
    const/4 v13, 0x0

    move/from16 v15, p5

    move v14, v1

    :goto_1
    const/16 v16, 0x0

    .line 6063
    :cond_2
    :goto_2
    iget-object v7, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    if-eqz v7, :cond_d

    array-length v8, v7

    if-lez v8, :cond_d

    add-int/lit8 v1, v8, -0x1

    and-int/2addr v1, v14

    .line 6064
    aget-object v1, v7, v1

    if-nez v1, :cond_5

    .line 6065
    iget v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v1, :cond_4

    .line 6066
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    invoke-direct {v7, v10, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;-><init>(J)V

    .line 6067
    iget v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v1, :cond_4

    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6072
    :try_start_0
    iget-object v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v14

    aget-object v3, v1, v2

    if-nez v3, :cond_3

    .line 6075
    aput-object v7, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 6079
    :goto_3
    iput v13, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-eqz v1, :cond_2

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    iput v13, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    throw v0

    :cond_4
    :goto_4
    const/16 v16, 0x0

    goto :goto_6

    :cond_5
    if-nez v15, :cond_6

    const/4 v15, 0x1

    goto :goto_6

    .line 6090
    :cond_6
    sget-object v17, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v19, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLVALUE:J

    iget-wide v2, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;->value:J

    add-long v23, v2, v10

    move-object/from16 v18, v1

    move-wide/from16 v21, v2

    invoke-virtual/range {v17 .. v24}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_8

    .line 6092
    :cond_7
    iget-object v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    if-ne v1, v7, :cond_4

    sget v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    if-lt v8, v1, :cond_8

    goto :goto_4

    :cond_8
    if-nez v16, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    .line 6096
    :cond_9
    iget v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v1, :cond_c

    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6099
    :try_start_1
    iget-object v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    if-ne v1, v7, :cond_b

    shl-int/lit8 v1, v8, 0x1

    .line 6100
    new-array v1, v1, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v8, :cond_a

    .line 6102
    aget-object v3, v7, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6103
    :cond_a
    iput-object v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6106
    :cond_b
    iput v13, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    iput v13, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    throw v0

    :cond_c
    :goto_6
    shl-int/lit8 v1, v14, 0xd

    xor-int/2addr v1, v14

    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    move v14, v1

    goto/16 :goto_2

    .line 6115
    :cond_d
    iget v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v1, :cond_f

    iget-object v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    if-ne v1, v7, :cond_f

    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6119
    :try_start_2
    iget-object v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    if-ne v1, v7, :cond_e

    const/4 v1, 0x2

    .line 6120
    new-array v1, v1, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    and-int/lit8 v2, v14, 0x1

    .line 6121
    new-instance v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    invoke-direct {v3, v10, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;-><init>(J)V

    aput-object v3, v1, v2

    .line 6122
    iput-object v1, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    .line 6126
    :goto_7
    iput v13, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-eqz v1, :cond_2

    goto :goto_8

    :catchall_2
    move-exception v0

    iput v13, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    throw v0

    .line 6131
    :cond_f
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->BASECOUNT:J

    iget-wide v5, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    add-long v7, v5, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6134
    :goto_8
    iput v14, v0, Lio/netty/util/internal/IntegerHolder;->value:I

    return-void
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    .line 6185
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6188
    :catch_0
    :try_start_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$1;

    invoke-direct {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 6201
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2207
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_6

    .line 2208
    :cond_1
    iget v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    if-gez v0, :cond_2

    .line 2209
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 2210
    :cond_2
    sget-object v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v7, -0x1

    move-object v3, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2212
    :try_start_0
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_5

    :cond_3
    if-lez v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/16 v1, 0x10

    .line 2215
    :goto_1
    new-array v2, v1, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    check-cast v2, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2216
    iput-object v2, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v0, v1, 0x2

    sub-int v0, v1, v0

    move-object v1, v2

    .line 2220
    :cond_5
    iput v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    move-object v0, v1

    :cond_6
    return-object v0

    :catchall_0
    move-exception v1

    iput v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    throw v1
.end method

.method public static newKeySet()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2111
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2127
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v1, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 1431
    iput v1, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 1432
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v6, 0x0

    .line 1436
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 1437
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v9, 0x1

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    .line 1439
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v12

    invoke-direct {v11, v12, v7, v8, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    add-long/2addr v4, v9

    move-object v6, v11

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    cmp-long v8, v4, v2

    if-nez v8, :cond_1

    .line 1446
    iput v7, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    goto/16 :goto_a

    :cond_1
    const-wide/32 v11, 0x20000000

    const/4 v8, 0x1

    cmp-long v13, v4, v11

    if-ltz v13, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_1

    :cond_2
    long-to-int v4, v4

    ushr-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v5

    add-int/2addr v4, v8

    .line 1453
    invoke-static {v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result v4

    .line 1456
    :goto_1
    new-array v5, v4, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    check-cast v5, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    add-int/lit8 v11, v4, -0x1

    :goto_2
    if-eqz v6, :cond_d

    .line 1461
    iget-object v12, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1462
    iget v13, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    and-int v14, v13, v11

    .line 1463
    invoke-static {v5, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v15

    if-nez v15, :cond_3

    const/4 v7, 0x1

    goto/16 :goto_8

    .line 1466
    :cond_3
    iget-object v1, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .line 1467
    iget v7, v15, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-gez v7, :cond_5

    .line 1468
    move-object v7, v15

    check-cast v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 1469
    iget-object v8, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-virtual {v7, v13, v1, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v1

    if-nez v1, :cond_4

    add-long/2addr v2, v9

    :cond_4
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_5
    move-object v7, v15

    const/4 v8, 0x0

    :goto_4
    if-eqz v7, :cond_8

    .line 1478
    iget v9, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v9, v13, :cond_7

    iget-object v9, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v9, v1, :cond_6

    if-eqz v9, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 1477
    iget-object v7, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const-wide/16 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_b

    const/16 v1, 0x8

    if-lt v8, v1, :cond_b

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 1489
    iput-object v15, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v1, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    if-eqz v1, :cond_a

    .line 1492
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    iget v10, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    iget-object v13, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move-wide/from16 v22, v2

    iget-object v2, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v13

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v21}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    .line 1494
    iput-object v7, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v7, :cond_9

    move-object v8, v9

    goto :goto_7

    .line 1497
    :cond_9
    iput-object v9, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1491
    :goto_7
    iget-object v1, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v7, v9

    move-wide/from16 v2, v22

    goto :goto_6

    :cond_a
    move-wide/from16 v22, v2

    .line 1500
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    invoke-direct {v1, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    invoke-static {v5, v14, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_3

    :cond_b
    :goto_8
    if-eqz v7, :cond_c

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    .line 1506
    iput-object v15, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1507
    invoke-static {v5, v14, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_9

    :cond_c
    const-wide/16 v7, 0x1

    :goto_9
    move-wide v9, v7

    move-object v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1511
    :cond_d
    iput-object v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    ushr-int/lit8 v1, v4, 0x2

    sub-int/2addr v4, v1

    .line 1512
    iput v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 1513
    iput-wide v2, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    :goto_a
    return-void
.end method

.method static final setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 758
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I

    shl-long/2addr v1, p1

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static final spread(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method static final tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;I)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 749
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget p1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I

    shl-long/2addr v1, p1

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    return-object p0
.end method

.method private static final tableSizeFor(I)I
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    ushr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    ushr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    if-lt p0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    add-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private final transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 2330
    array-length v8, v0

    .line 2331
    sget v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    const/4 v9, 0x1

    if-le v1, v9, :cond_0

    ushr-int/lit8 v1, v8, 0x3

    sget v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    const/16 v10, 0x10

    goto :goto_1

    :cond_1
    move v10, v1

    :goto_1
    if-nez p2, :cond_6

    shl-int/lit8 v1, v8, 0x1

    .line 2336
    :try_start_0
    new-array v1, v1, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    check-cast v1, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2342
    iput-object v1, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2343
    iput v8, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    .line 2344
    iput v8, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    .line 2345
    new-instance v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    invoke-direct {v2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move v3, v8

    :goto_2
    if-lez v3, :cond_5

    if-le v3, v10, :cond_2

    sub-int v4, v3, v10

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_3

    .line 2349
    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int v5, v8, v4

    :goto_5
    add-int v6, v8, v3

    if-ge v5, v6, :cond_4

    .line 2351
    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2352
    :cond_4
    sget-object v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERORIGIN:J

    invoke-virtual {v3, v7, v5, v6, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    move v3, v4

    goto :goto_2

    :cond_5
    move-object v12, v1

    goto :goto_6

    :catch_0
    const v0, 0x7fffffff

    .line 2339
    iput v0, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    return-void

    :cond_6
    move-object/from16 v12, p2

    .line 2355
    :goto_6
    array-length v13, v12

    .line 2356
    new-instance v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    invoke-direct {v14, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    const/4 v15, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_7
    if-eqz v16, :cond_c

    add-int/lit8 v5, v1, -0x1

    if-ge v5, v6, :cond_b

    if-eqz v17, :cond_7

    goto :goto_9

    .line 2364
    :cond_7
    iget v3, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    iget v1, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    if-gt v3, v1, :cond_8

    const/4 v1, -0x1

    goto :goto_a

    .line 2368
    :cond_8
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERINDEX:J

    if-le v3, v10, :cond_9

    sub-int v2, v3, v10

    move/from16 v20, v2

    goto :goto_8

    :cond_9
    const/16 v20, 0x0

    :goto_8
    move-object/from16 v2, p0

    move/from16 v21, v3

    move-wide/from16 v3, v18

    move/from16 v18, v5

    move/from16 v5, v21

    move/from16 v19, v6

    move/from16 v6, v20

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v1, v21, -0x1

    move/from16 v6, v20

    goto :goto_a

    :cond_a
    move/from16 v1, v18

    move/from16 v6, v19

    goto :goto_7

    :cond_b
    :goto_9
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v1, v18

    move/from16 v6, v19

    :goto_a
    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    move/from16 v19, v6

    const/4 v2, 0x0

    if-ltz v1, :cond_21

    if-ge v1, v8, :cond_21

    add-int v3, v1, v8

    if-lt v3, v13, :cond_d

    goto/16 :goto_19

    .line 2394
    :cond_d
    invoke-static {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v4

    if-nez v4, :cond_f

    .line 2395
    invoke-static {v0, v1, v2, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2396
    invoke-static {v12, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2397
    invoke-static {v12, v3, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :goto_b
    move v2, v1

    move-object v9, v7

    move/from16 v22, v10

    move/from16 v31, v13

    move-object v7, v14

    const/4 v1, -0x1

    const/4 v10, 0x1

    const/16 v16, 0x1

    goto/16 :goto_1a

    :cond_e
    move v2, v1

    move-object v9, v7

    move/from16 v22, v10

    move/from16 v31, v13

    move-object v7, v14

    const/4 v1, -0x1

    :goto_c
    const/4 v10, 0x1

    goto/16 :goto_1a

    .line 2401
    :cond_f
    iget v5, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v5, v15, :cond_10

    goto :goto_b

    .line 2404
    :cond_10
    monitor-enter v4

    .line 2405
    :try_start_1
    invoke-static {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v6

    if-ne v6, v4, :cond_1f

    if-ltz v5, :cond_16

    and-int/2addr v5, v8

    .line 2410
    iget-object v6, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v11, v4

    :goto_d
    if-eqz v6, :cond_12

    .line 2411
    iget v15, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    and-int/2addr v15, v8

    if-eq v15, v5, :cond_11

    move-object v11, v6

    move v5, v15

    .line 2410
    :cond_11
    iget-object v6, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v15, -0x1

    goto :goto_d

    :cond_12
    if-nez v5, :cond_13

    move-object v5, v2

    move-object v2, v11

    goto :goto_e

    :cond_13
    move-object v5, v11

    :goto_e
    move-object v6, v5

    move-object v5, v2

    move-object v2, v4

    :goto_f
    if-eq v2, v11, :cond_15

    .line 2426
    iget v15, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    iget-object v9, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move/from16 v22, v10

    iget-object v10, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    and-int v16, v15, v8

    if-nez v16, :cond_14

    move-object/from16 v23, v11

    .line 2428
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v11, v15, v9, v10, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object v5, v11

    goto :goto_10

    :cond_14
    move-object/from16 v23, v11

    .line 2430
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v11, v15, v9, v10, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object v6, v11

    .line 2425
    :goto_10
    iget-object v2, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move/from16 v10, v22

    move-object/from16 v11, v23

    const/4 v9, 0x1

    goto :goto_f

    :cond_15
    move/from16 v22, v10

    .line 2432
    invoke-static {v12, v1, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2433
    invoke-static {v12, v3, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2434
    invoke-static {v0, v1, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move/from16 v31, v13

    move-object v7, v14

    :goto_11
    const/16 v16, 0x1

    goto/16 :goto_18

    :cond_16
    move/from16 v22, v10

    .line 2437
    instance-of v5, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v5, :cond_20

    .line 2438
    move-object v5, v4

    check-cast v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 2442
    iget-object v6, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object v9, v2

    move-object v11, v9

    move-object v15, v11

    move-object/from16 v24, v5

    const/4 v10, 0x0

    move-object v5, v15

    const/4 v2, 0x0

    :goto_12
    if-eqz v6, :cond_1a

    move/from16 v31, v13

    .line 2443
    iget v13, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .line 2444
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    iget-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move-object/from16 v32, v14

    iget-object v14, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v7

    move/from16 v26, v13

    move-object/from16 v27, v0

    move-object/from16 v28, v14

    invoke-direct/range {v25 .. v30}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    and-int v0, v13, v8

    if-nez v0, :cond_18

    .line 2447
    iput-object v15, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v15, :cond_17

    move-object v9, v7

    goto :goto_13

    .line 2450
    :cond_17
    iput-object v7, v15, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    :goto_13
    add-int/lit8 v2, v2, 0x1

    move-object v15, v7

    goto :goto_15

    .line 2455
    :cond_18
    iput-object v5, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v5, :cond_19

    move-object v11, v7

    goto :goto_14

    .line 2458
    :cond_19
    iput-object v7, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    :goto_14
    add-int/lit8 v10, v10, 0x1

    move-object v5, v7

    .line 2442
    :goto_15
    iget-object v6, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move/from16 v13, v31

    move-object/from16 v14, v32

    move-object/from16 v0, p1

    move-object/from16 v7, p0

    goto :goto_12

    :cond_1a
    move/from16 v31, v13

    move-object/from16 v32, v14

    const/4 v0, 0x6

    if-gt v2, v0, :cond_1b

    .line 2463
    invoke-static {v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v5

    goto :goto_16

    :cond_1b
    if-eqz v10, :cond_1c

    new-instance v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    invoke-direct {v5, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    goto :goto_16

    :cond_1c
    move-object/from16 v5, v24

    :goto_16
    if-gt v10, v0, :cond_1d

    .line 2465
    invoke-static {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    goto :goto_17

    :cond_1d
    if-eqz v2, :cond_1e

    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    invoke-direct {v0, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    goto :goto_17

    :cond_1e
    move-object/from16 v0, v24

    .line 2467
    :goto_17
    invoke-static {v12, v1, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2468
    invoke-static {v12, v3, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v7, v32

    move-object/from16 v0, p1

    .line 2469
    invoke-static {v0, v1, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto/16 :goto_11

    :cond_1f
    move/from16 v22, v10

    :cond_20
    move/from16 v31, v13

    move-object v7, v14

    .line 2473
    :goto_18
    monitor-exit v4

    move v2, v1

    const/4 v1, -0x1

    move-object/from16 v9, p0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_21
    :goto_19
    move/from16 v22, v10

    move/from16 v31, v13

    move-object v7, v14

    if-eqz v17, :cond_22

    move-object/from16 v9, p0

    .line 2379
    iput-object v2, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2380
    iput-object v12, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    shl-int/lit8 v0, v8, 0x1

    const/4 v10, 0x1

    ushr-int/lit8 v1, v8, 0x1

    sub-int/2addr v0, v1

    .line 2381
    iput v0, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    return-void

    :cond_22
    move-object/from16 v9, p0

    const/4 v10, 0x1

    .line 2385
    :cond_23
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    iget v5, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v2, p0

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, -0x1

    if-eq v11, v1, :cond_24

    return-void

    :cond_24
    move v2, v8

    const/16 v16, 0x1

    const/16 v17, 0x1

    :goto_1a
    move v1, v2

    move-object v14, v7

    move-object v7, v9

    move/from16 v6, v19

    move/from16 v10, v22

    move/from16 v13, v31

    const/4 v9, 0x1

    const/4 v15, -0x1

    goto/16 :goto_7
.end method

.method private final treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2487
    array-length v0, p1

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2488
    iget-object p2, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne p1, p2, :cond_4

    iget v7, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    if-ltz v7, :cond_4

    sget-object v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v8, -0x2

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2490
    invoke-direct {p0, p1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_2

    .line 2492
    :cond_0
    invoke-static {p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ltz v1, :cond_4

    .line 2493
    monitor-enter v0

    .line 2494
    :try_start_0
    invoke-static {p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    if-ne v1, v0, :cond_3

    move-object v1, v0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 2497
    new-instance v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    iget v5, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    iget-object v6, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    iget-object v7, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    .line 2500
    iput-object v3, v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v3, :cond_1

    move-object v2, v10

    goto :goto_1

    .line 2503
    :cond_1
    iput-object v10, v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2496
    :goto_1
    iget-object v1, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v3, v10

    goto :goto_0

    .line 2506
    :cond_2
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    invoke-direct {v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    invoke-static {p1, p2, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2508
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private final tryPresize(I)V
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 2297
    invoke-static {p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result p1

    .line 2300
    :cond_1
    :goto_0
    iget v7, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    if-ltz v7, :cond_7

    .line 2301
    iget-object v8, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v8, :cond_4

    .line 2302
    array-length v1, v8

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-le p1, v7, :cond_7

    if-lt v1, v0, :cond_3

    goto :goto_3

    .line 2319
    :cond_3
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne v8, v1, :cond_1

    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v6, -0x2

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2321
    invoke-direct {p0, v8, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_0

    :cond_4
    :goto_1
    if-le v7, p1, :cond_5

    move v9, v7

    goto :goto_2

    :cond_5
    move v9, p1

    .line 2304
    :goto_2
    sget-object v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v6, -0x1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2306
    :try_start_0
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne v1, v8, :cond_6

    .line 2308
    new-array v1, v9, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    check-cast v1, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2309
    iput-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    ushr-int/lit8 v1, v9, 0x2

    sub-int v7, v9, v1

    .line 2313
    :cond_6
    iput v7, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    goto :goto_0

    :catchall_0
    move-exception p1

    iput v7, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    throw p1

    :cond_7
    :goto_3
    return-void
.end method

.method static untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 2519
    new-instance v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    iget v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    iget-object v6, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    if-nez v1, :cond_0

    move-object v2, v3

    goto :goto_1

    .line 2523
    :cond_0
    iput-object v3, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2518
    :goto_1
    iget-object p0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v3, v3, 0x20

    sub-int/2addr v2, v1

    .line 1396
    new-array v1, v4, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    check-cast v1, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    const/4 v4, 0x0

    .line 1398
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 1399
    new-instance v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v5, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;-><init>(F)V

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1400
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v4

    const-string v5, "segments"

    invoke-virtual {v4, v5, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1401
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v4, "segmentShift"

    invoke-virtual {v1, v4, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1402
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v3, "segmentMask"

    invoke-virtual {v1, v3, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1403
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1406
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v1, :cond_2

    .line 1407
    new-instance v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v2, v1, v3, v0, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1408
    :goto_2
    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1409
    iget-object v1, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1410
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1413
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1414
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final batchFor(J)I
    .locals 6

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 3430
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_1

    .line 3432
    :cond_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_2

    .line 3433
    div-long/2addr v0, p1

    int-to-long p1, v2

    cmp-long v3, v0, p1

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v2, v0

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 12

    .line 1181
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v5, v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v7, -0x1

    if-eqz v0, :cond_6

    .line 1182
    array-length v8, v0

    if-ge v4, v8, :cond_6

    .line 1184
    invoke-static {v0, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v8

    if-nez v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1187
    :cond_0
    iget v9, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v9, v7, :cond_1

    .line 1188
    invoke-virtual {p0, v0, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    goto :goto_0

    .line 1192
    :cond_1
    monitor-enter v8

    .line 1193
    :try_start_0
    invoke-static {v0, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    if-ne v7, v8, :cond_5

    const/4 v7, 0x0

    if-ltz v9, :cond_2

    move-object v9, v8

    goto :goto_2

    .line 1194
    :cond_2
    instance-of v9, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    iget-object v9, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    goto :goto_2

    :cond_3
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_4

    const-wide/16 v10, 0x1

    sub-long/2addr v5, v10

    .line 1199
    iget-object v9, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v4, 0x1

    .line 1201
    invoke-static {v0, v4, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move v4, v9

    .line 1203
    :cond_5
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    cmp-long v0, v5, v2

    if-eqz v0, :cond_7

    .line 1207
    invoke-direct {p0, v5, v6, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    :cond_7
    return-void
.end method

.method public compute(Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 1830
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v0

    .line 1834
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_16

    .line 1836
    array-length v6, v1

    if-nez v6, :cond_1

    goto/16 :goto_b

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    .line 1838
    invoke-static {v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    .line 1839
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;

    invoke-direct {v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;-><init>()V

    .line 1840
    monitor-enter v9

    .line 1841
    :try_start_0
    invoke-static {v1, v6, v3, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_3

    .line 1845
    :try_start_1
    invoke-interface {p2, p1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1847
    new-instance v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v2, v0, p1, v4, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 1850
    :goto_1
    :try_start_2
    invoke-static {v1, v6, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    const/4 v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v1, v6, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    throw p1

    .line 1853
    :cond_3
    :goto_2
    monitor-exit v9

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :catchall_1
    move-exception p1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 1857
    :cond_4
    iget v9, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 1858
    invoke-virtual {p0, v1, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    goto :goto_0

    .line 1860
    :cond_5
    monitor-enter v7

    .line 1861
    :try_start_3
    invoke-static {v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v11

    if-ne v11, v7, :cond_13

    if-ltz v9, :cond_c

    move-object v9, v3

    move-object v2, v7

    const/4 v4, 0x1

    .line 1866
    :goto_3
    iget v11, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v11, v0, :cond_9

    iget-object v11, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v11, p1, :cond_6

    if-eqz v11, :cond_9

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1869
    :cond_6
    iget-object v8, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1871
    iput-object v8, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_5

    .line 1874
    :cond_7
    iget-object v2, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v9, :cond_8

    .line 1876
    iput-object v2, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_4

    .line 1878
    :cond_8
    invoke-static {v1, v6, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :goto_4
    const/4 v5, -0x1

    goto :goto_5

    .line 1883
    :cond_9
    iget-object v9, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v9, :cond_b

    .line 1884
    invoke-interface {p2, p1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1887
    new-instance v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v5, v0, p1, v9, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    iput-object v5, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v8, v9

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    move-object v8, v9

    :goto_5
    move v2, v4

    move-object v4, v8

    goto :goto_9

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move-object v12, v9

    move-object v9, v2

    move-object v2, v12

    goto :goto_3

    .line 1894
    :cond_c
    instance-of v9, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v9, :cond_13

    .line 1896
    move-object v2, v7

    check-cast v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 1898
    iget-object v4, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-eqz v4, :cond_d

    .line 1899
    invoke-virtual {v4, v0, p1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v4

    goto :goto_6

    :cond_d
    move-object v4, v3

    :goto_6
    if-nez v4, :cond_e

    move-object v9, v3

    goto :goto_7

    .line 1902
    :cond_e
    iget-object v9, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    .line 1903
    :goto_7
    invoke-interface {p2, p1, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    if-eqz v4, :cond_f

    .line 1906
    iput-object v9, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    goto :goto_8

    .line 1909
    :cond_f
    invoke-virtual {v2, v0, p1, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object v4, v9

    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    if-eqz v4, :cond_12

    .line 1914
    invoke-virtual {v2, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1915
    iget-object v2, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    invoke-static {v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :cond_11
    move-object v4, v9

    const/4 v2, 0x1

    const/4 v5, -0x1

    goto :goto_9

    :cond_12
    :goto_8
    move-object v4, v9

    const/4 v2, 0x1

    .line 1919
    :cond_13
    :goto_9
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_0

    const/16 p1, 0x8

    if-lt v2, p1, :cond_14

    .line 1922
    invoke-direct {p0, v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    :cond_14
    :goto_a
    if-eqz v5, :cond_15

    int-to-long p1, v5

    .line 1928
    invoke-direct {p0, p1, p2, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    :cond_15
    return-object v4

    :catchall_2
    move-exception p1

    .line 1919
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 1837
    :cond_16
    :goto_b
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    goto/16 :goto_0

    .line 1829
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 1638
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v0

    .line 1641
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_11

    .line 1643
    array-length v6, v1

    if-nez v6, :cond_1

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    .line 1645
    invoke-static {v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    .line 1646
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;

    invoke-direct {v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;-><init>()V

    .line 1647
    monitor-enter v9

    .line 1648
    :try_start_0
    invoke-static {v1, v6, v3, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_3

    .line 1652
    :try_start_1
    invoke-interface {p2, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1653
    new-instance v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v4, v0, p1, v5, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 1655
    :goto_1
    :try_start_2
    invoke-static {v1, v6, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    const/4 v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v1, v6, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    throw p1

    .line 1658
    :cond_3
    :goto_2
    monitor-exit v9

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :catchall_1
    move-exception p1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 1662
    :cond_4
    iget v9, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 1663
    invoke-virtual {p0, v1, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    goto :goto_0

    .line 1666
    :cond_5
    monitor-enter v7

    .line 1667
    :try_start_3
    invoke-static {v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v10

    if-ne v10, v7, :cond_d

    if-ltz v9, :cond_a

    move-object v4, v7

    const/4 v5, 0x1

    .line 1672
    :goto_3
    iget v9, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v9, v0, :cond_8

    iget-object v9, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v9, p1, :cond_6

    if-eqz v9, :cond_8

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1675
    :cond_6
    iget-object v4, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object v9, v4

    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 1679
    :cond_8
    iget-object v9, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v9, :cond_9

    .line 1680
    invoke-interface {p2, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1682
    new-instance v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v10, v0, p1, v9, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    iput-object v10, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    :goto_4
    move v4, v5

    :goto_5
    move-object v5, v9

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object v4, v9

    goto :goto_3

    .line 1688
    :cond_a
    instance-of v9, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v9, :cond_d

    const/4 v4, 0x2

    .line 1690
    move-object v5, v7

    check-cast v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 1692
    iget-object v9, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-eqz v9, :cond_b

    invoke-virtual {v9, v0, p1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 1694
    iget-object v5, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    goto :goto_6

    .line 1695
    :cond_b
    invoke-interface {p2, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 1697
    invoke-virtual {v5, v0, p1, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    goto :goto_5

    :cond_c
    move-object v5, v9

    :cond_d
    :goto_6
    const/4 v8, 0x0

    .line 1701
    :goto_7
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    const/16 p1, 0x8

    if-lt v4, p1, :cond_e

    .line 1704
    invoke-direct {p0, v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    :cond_e
    if-nez v8, :cond_f

    return-object v5

    :cond_f
    :goto_8
    if-eqz v5, :cond_10

    const-wide/16 p1, 0x1

    .line 1712
    invoke-direct {p0, p1, p2, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    :cond_10
    return-object v5

    :catchall_2
    move-exception p1

    .line 1701
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 1644
    :cond_11
    :goto_9
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    goto/16 :goto_0

    .line 1637
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public computeIfPresent(Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 1739
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v0

    .line 1743
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_e

    .line 1745
    array-length v6, v1

    if-nez v6, :cond_1

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    .line 1747
    invoke-static {v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_5

    .line 1749
    :cond_2
    iget v8, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 1750
    invoke-virtual {p0, v1, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    goto :goto_0

    .line 1752
    :cond_3
    monitor-enter v7

    .line 1753
    :try_start_0
    invoke-static {v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v10

    if-ne v10, v7, :cond_c

    if-ltz v8, :cond_9

    const/4 v5, 0x1

    move-object v10, v3

    move-object v5, v7

    const/4 v8, 0x1

    .line 1758
    :goto_1
    iget v11, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v11, v0, :cond_7

    iget-object v11, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v11, p1, :cond_4

    if-eqz v11, :cond_7

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1761
    :cond_4
    iget-object v2, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1763
    iput-object v2, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_3

    .line 1766
    :cond_5
    iget-object v4, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v10, :cond_6

    .line 1768
    iput-object v4, v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_2

    .line 1770
    :cond_6
    invoke-static {v1, v6, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    .line 1775
    :cond_7
    iget-object v10, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v10, :cond_8

    :goto_3
    move v5, v8

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move-object v12, v10

    move-object v10, v5

    move-object v5, v12

    goto :goto_1

    .line 1779
    :cond_9
    instance-of v8, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v8, :cond_c

    const/4 v5, 0x2

    .line 1781
    move-object v8, v7

    check-cast v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 1783
    iget-object v10, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-eqz v10, :cond_c

    invoke-virtual {v10, v0, p1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 1785
    iget-object v2, v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1787
    iput-object v2, v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    goto :goto_4

    .line 1790
    :cond_a
    invoke-virtual {v8, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1791
    iget-object v4, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    invoke-static {v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v4

    invoke-static {v1, v6, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :cond_b
    const/4 v4, -0x1

    .line 1796
    :cond_c
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :goto_5
    if-eqz v4, :cond_d

    int-to-long p1, v4

    .line 1802
    invoke-direct {p0, p1, p2, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    :cond_d
    return-object v2

    :catchall_0
    move-exception p1

    .line 1796
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1746
    :cond_e
    :goto_6
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    goto/16 :goto_0

    .line 1738
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2059
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 963
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    if-eqz p1, :cond_3

    .line 980
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 981
    new-instance v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v3, v0

    array-length v4, v0

    invoke-direct {v2, v0, v3, v1, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 982
    :cond_0
    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 978
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 2082
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v1

    move v4, v0

    .line 2083
    :goto_0
    new-instance v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueIterator;

    const/4 v3, 0x0

    move-object v0, v6

    move v2, v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueIterator;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;IIILio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    return-object v6
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->entrySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    iput-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->entrySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p1, p0, :cond_7

    .line 1341
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1343
    :cond_0
    check-cast p1, Ljava/util/Map;

    .line 1345
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    array-length v2, v0

    .line 1346
    :goto_0
    new-instance v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    invoke-direct {v3, v0, v2, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1347
    :cond_2
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1348
    iget-object v2, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1349
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    .line 1350
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    return v1

    .line 1353
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1355
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eq v0, v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_6
    return v1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public forEach(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3447
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;)V

    invoke-virtual {v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3446
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEach(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TK;-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<",
            "-TU;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3469
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3468
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEach(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1586
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v0, :cond_0

    .line 1587
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v2, v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v0, v2, v3, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1588
    :goto_0
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1589
    iget-object v2, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    .line 1584
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEachEntry(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3977
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3976
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEachEntry(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<",
            "-TU;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3998
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3997
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEachKey(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<",
            "-TK;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3611
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3610
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEachKey(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "-TK;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<",
            "-TU;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3633
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3632
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEachValue(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<",
            "-TV;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3795
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3794
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public forEachValue(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<",
            "-TU;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3817
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    return-void

    .line 3816
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 935
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v0

    .line 936
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    invoke-static {v1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 938
    iget v3, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v3, v0, :cond_1

    .line 939
    iget-object v3, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_0

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 940
    :cond_0
    iget-object p1, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    return-object p1

    :cond_1
    if-gez v3, :cond_3

    .line 943
    invoke-virtual {v1, v0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->find(ILjava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    :cond_2
    return-object v2

    .line 944
    :cond_3
    iget-object v1, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v1, :cond_5

    .line 945
    iget v3, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 947
    :cond_4
    iget-object p1, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1580
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 1288
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1289
    new-instance v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v3, v0

    array-length v4, v0

    invoke-direct {v2, v0, v3, v1, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1290
    :goto_0
    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1291
    iget-object v3, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method final helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;)[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2280
    instance-of v0, p2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    if-eqz v0, :cond_1

    check-cast p2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    iget-object p2, p2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz p2, :cond_1

    .line 2282
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    if-le v0, v1, :cond_0

    iget v6, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    const/4 v0, -0x1

    if-ge v6, v0, :cond_0

    sget-object v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    add-int/lit8 v7, v6, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2285
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :cond_0
    return-object p2

    .line 2288
    :cond_1
    iget-object p1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 5

    .line 919
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->keySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->keySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    :goto_0
    return-object v0
.end method

.method public keySet(Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2145
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    return-object v0

    .line 2144
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->keySet()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 2070
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v1

    move v4, v0

    .line 2071
    :goto_0
    new-instance v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeyIterator;

    const/4 v3, 0x0

    move-object v0, v6

    move v2, v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeyIterator;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;IIILio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    return-object v6
.end method

.method public mappingCount()J
    .locals 5

    .line 2099
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_15

    if-eqz v2, :cond_15

    if-eqz v3, :cond_15

    .line 1955
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v4

    .line 1959
    iget-object v5, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v7

    const/4 v9, 0x0

    :cond_0
    :goto_0
    if-eqz v5, :cond_14

    .line 1961
    array-length v10, v5

    if-nez v10, :cond_1

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v4

    .line 1963
    invoke-static {v5, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v11

    const/4 v12, 0x1

    if-nez v11, :cond_2

    .line 1964
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v11, v4, v0, v2, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    invoke-static {v5, v10, v7, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v15, v2

    goto/16 :goto_8

    .line 1970
    :cond_2
    iget v13, v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 1971
    invoke-virtual {v1, v5, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v5

    goto :goto_0

    .line 1973
    :cond_3
    monitor-enter v11

    .line 1974
    :try_start_0
    invoke-static {v5, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v15

    if-ne v15, v11, :cond_f

    if-ltz v13, :cond_9

    move-object v13, v7

    move-object v6, v11

    const/4 v8, 0x1

    .line 1979
    :goto_1
    iget v15, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v15, v4, :cond_7

    iget-object v15, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v15, v0, :cond_4

    if-eqz v15, :cond_7

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1982
    :cond_4
    iget-object v12, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-interface {v3, v12, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1984
    iput-object v12, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_3

    .line 1987
    :cond_5
    iget-object v6, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v13, :cond_6

    .line 1989
    iput-object v6, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_2

    .line 1991
    :cond_6
    invoke-static {v5, v10, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :goto_2
    const/4 v9, -0x1

    goto :goto_3

    .line 1996
    :cond_7
    iget-object v13, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v13, :cond_8

    .line 1999
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v9, v4, v0, v2, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    iput-object v9, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v12, v2

    const/4 v9, 0x1

    :goto_3
    move v6, v8

    move-object v15, v12

    goto :goto_6

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v16, v13

    move-object v13, v6

    move-object/from16 v6, v16

    goto :goto_1

    .line 2005
    :cond_9
    instance-of v13, v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v13, :cond_f

    const/4 v6, 0x2

    .line 2007
    move-object v8, v11

    check-cast v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 2008
    iget-object v13, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v13, :cond_a

    move-object v13, v7

    goto :goto_4

    .line 2009
    :cond_a
    invoke-virtual {v13, v4, v0, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v13

    :goto_4
    if-nez v13, :cond_b

    move-object v15, v2

    goto :goto_5

    .line 2011
    :cond_b
    iget-object v15, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {v3, v15, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    :goto_5
    if-eqz v15, :cond_d

    if-eqz v13, :cond_c

    .line 2015
    iput-object v15, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    goto :goto_6

    .line 2018
    :cond_c
    invoke-virtual {v8, v4, v0, v15}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    goto :goto_7

    :cond_d
    if-eqz v13, :cond_10

    .line 2023
    invoke-virtual {v8, v13}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2024
    iget-object v8, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    invoke-static {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v8

    invoke-static {v5, v10, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    :cond_e
    const/4 v12, -0x1

    goto :goto_7

    :cond_f
    move-object v15, v8

    :cond_10
    :goto_6
    move v12, v9

    .line 2028
    :goto_7
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_13

    const/16 v0, 0x8

    if-lt v6, v0, :cond_11

    .line 2031
    invoke-direct {v1, v5, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    :cond_11
    :goto_8
    if-eqz v12, :cond_12

    int-to-long v2, v12

    .line 2037
    invoke-direct {v1, v2, v3, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    :cond_12
    return-object v15

    :cond_13
    move v9, v12

    move-object v8, v15

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 2028
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1962
    :cond_14
    :goto_9
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v5

    goto/16 :goto_0

    .line 1954
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1005
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1081
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tryPresize(I)V

    .line 1082
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1083
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1527
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1013
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    :cond_0
    :goto_0
    if-eqz v2, :cond_d

    .line 1015
    array-length v3, v2

    if-nez v3, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    .line 1017
    invoke-static {v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1018
    new-instance v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v4, v0, p1, p2, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    invoke-static {v2, v3, v5, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 1022
    :cond_2
    iget v6, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 1023
    invoke-virtual {p0, v2, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v2

    goto :goto_0

    .line 1026
    :cond_3
    monitor-enter v4

    .line 1027
    :try_start_0
    invoke-static {v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    if-ne v7, v4, :cond_9

    if-ltz v6, :cond_8

    const/4 v1, 0x1

    move-object v1, v4

    const/4 v6, 0x1

    .line 1032
    :goto_1
    iget v7, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v7, v0, :cond_5

    iget-object v7, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v7, p1, :cond_4

    if-eqz v7, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1035
    :cond_4
    iget-object v7, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    if-nez p3, :cond_6

    .line 1037
    iput-object p2, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_2

    .line 1041
    :cond_5
    iget-object v7, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v7, :cond_7

    .line 1042
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-direct {v7, v0, p1, p2, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    iput-object v7, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object v7, v5

    :cond_6
    :goto_2
    move v1, v6

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move-object v1, v7

    goto :goto_1

    .line 1048
    :cond_8
    instance-of v6, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v6, :cond_9

    const/4 v1, 0x2

    .line 1051
    move-object v6, v4

    check-cast v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    invoke-virtual {v6, v0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1053
    iget-object v7, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    if-nez p3, :cond_a

    .line 1055
    iput-object p2, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_3

    :cond_9
    move-object v7, v5

    .line 1059
    :cond_a
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_b

    .line 1062
    invoke-direct {p0, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    :cond_b
    if-eqz v7, :cond_c

    return-object v7

    :cond_c
    :goto_4
    const-wide/16 p1, 0x1

    .line 1069
    invoke-direct {p0, p1, p2, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    return-object v5

    :catchall_0
    move-exception p1

    .line 1059
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1016
    :cond_d
    :goto_5
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v2

    goto/16 :goto_0

    .line 1010
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduce(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TK;-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3517
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3516
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduceEntries(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 4064
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4063
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduceEntries(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/util/Map$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 4039
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1

    .line 4038
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduceEntriesToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 4090
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 4089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntriesToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 4142
    new-instance v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    move-object v11, p0

    .line 4141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntriesToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 4116
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 4115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeys(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3675
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3674
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduceKeys(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "-TK;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3700
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3699
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduceKeysToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble<",
            "-TK;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3726
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 3725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeysToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt<",
            "-TK;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 3778
    new-instance v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    move-object v11, p0

    .line 3777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeysToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong<",
            "-TK;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3752
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 3751
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble<",
            "-TK;-TV;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3543
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 3542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt<",
            "-TK;-TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 3595
    new-instance v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    move-object v11, p0

    .line 3594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong<",
            "-TK;-TV;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3569
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 3568
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValues(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3858
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3857
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduceValues(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3883
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3882
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public reduceValuesToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble<",
            "-TV;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3909
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 3908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValuesToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt<",
            "-TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 3961
    new-instance v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    move-object v11, p0

    .line 3960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValuesToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong<",
            "-TV;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 3935
    new-instance v11, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object v12, p0

    .line 3934
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1096
    invoke-virtual {p0, p1, v0, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1538
    invoke-virtual {p0, p1, v0, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1537
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1562
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1561
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1549
    invoke-virtual {p0, p1, p3, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1548
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public replaceAll(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1597
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v0, :cond_3

    .line 1598
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v2, v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v0, v2, v3, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1599
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1600
    iget-object v2, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1601
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .line 1602
    :cond_1
    invoke-interface {p1, v0, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1605
    invoke-virtual {p0, v0, v3, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1604
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_3
    return-void

    .line 1595
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1105
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v0

    .line 1106
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 1108
    array-length v3, v1

    if-eqz v3, :cond_10

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    invoke-static {v1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 1111
    :cond_1
    iget v5, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1112
    invoke-virtual {p0, v1, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 1116
    monitor-enter v4

    .line 1117
    :try_start_0
    invoke-static {v1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v8, v4, :cond_d

    if-ltz v5, :cond_9

    move-object v7, v2

    move-object v5, v4

    .line 1122
    :goto_1
    iget v8, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v8, v0, :cond_7

    iget-object v8, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    if-eq v8, p1, :cond_3

    if-eqz v8, :cond_7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1125
    :cond_3
    iget-object v8, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    if-eqz p3, :cond_4

    if-eq p3, v8, :cond_4

    if-eqz v8, :cond_c

    .line 1126
    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_4
    if-eqz p2, :cond_5

    .line 1130
    iput-object p2, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    .line 1132
    iget-object v3, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    iput-object v3, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_3

    .line 1134
    :cond_6
    iget-object v5, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-static {v1, v3, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_3

    .line 1139
    :cond_7
    iget-object v7, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    move-object v11, v7

    move-object v7, v5

    move-object v5, v11

    goto :goto_1

    .line 1143
    :cond_9
    instance-of v5, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v5, :cond_d

    .line 1145
    move-object v5, v4

    check-cast v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 1147
    iget-object v7, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v0, p1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1149
    iget-object v8, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    if-eqz p3, :cond_a

    if-eq p3, v8, :cond_a

    if-eqz v8, :cond_c

    .line 1150
    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_a
    if-eqz p2, :cond_b

    .line 1154
    iput-object p2, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    goto :goto_3

    .line 1155
    :cond_b
    invoke-virtual {v5, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1156
    iget-object v5, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    invoke-static {v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_3

    :cond_c
    :goto_2
    move-object v8, v2

    goto :goto_3

    :cond_d
    move-object v8, v2

    const/4 v9, 0x0

    .line 1161
    :cond_e
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    if-eqz v8, :cond_10

    if-nez p2, :cond_f

    const-wide/16 p1, -0x1

    .line 1165
    invoke-direct {p0, p1, p2, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    :cond_f
    return-object v8

    :catchall_0
    move-exception p1

    .line 1161
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_10
    :goto_4
    return-object v2
.end method

.method public search(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<",
            "-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3492
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3491
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public searchEntries(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 4021
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4020
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public searchKeys(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "-TK;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3656
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3655
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public searchValues(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<",
            "-TV;+TU;>;)TU;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3840
    new-instance v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3839
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 5

    .line 909
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method final sumCount()J
    .locals 6

    .line 6036
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    .line 6037
    iget-wide v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 6039
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 6040
    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 6041
    iget-wide v4, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;->value:J

    add-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1309
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 1310
    :goto_0
    new-instance v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    invoke-direct {v3, v0, v2, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 1312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1316
    :goto_1
    iget-object v2, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .line 1317
    iget-object v1, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    if-ne v2, p0, :cond_1

    const-string v2, "(this Map)"

    .line 1318
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 1319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_2

    const-string v1, "(this Map)"

    .line 1320
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x2c

    .line 1323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_2
    const/16 v1, 0x7d

    .line 1326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->values:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    iput-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->values:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;

    :goto_0
    return-object v0
.end method
