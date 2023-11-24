.class final Lio/netty/util/internal/logging/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# static fields
.field static final DELIM_START:C = '{'

.field static final DELIM_STOP:C = '}'

.field static final DELIM_STR:Ljava/lang/String; = "{}"

.field private static final ESCAPE_CHAR:C = '\\'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;
    .locals 7

    .line 187
    invoke-static {p1}, Lio/netty/util/internal/logging/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 190
    new-instance p0, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-direct {p0, v1, p1, v0}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 194
    new-instance p1, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-direct {p1, p0}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 199
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 202
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_6

    const-string v5, "{}"

    .line 204
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    if-nez v4, :cond_2

    .line 209
    new-instance v1, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-direct {v1, p0, p1, v0}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1

    .line 213
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    new-instance p0, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 218
    :cond_3
    invoke-static {p0, v5}, Lio/netty/util/internal/logging/MessageFormatter;->isEscapedDelimeter(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    invoke-static {p0, v5}, Lio/netty/util/internal/logging/MessageFormatter;->isDoubleEscaped(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v6, v5, -0x1

    .line 221
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x7b

    .line 222
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v5, -0x1

    .line 228
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    aget-object v4, p1, v3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v4, v6}, Lio/netty/util/internal/logging/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 234
    :cond_5
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    aget-object v4, p1, v3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v4, v6}, Lio/netty/util/internal/logging/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v5, v5, 0x2

    :goto_1
    move v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    if-ge v3, p0, :cond_7

    .line 243
    new-instance p0, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 245
    :cond_7
    new-instance p0, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static booleanArrayAppend(Ljava/lang/StringBuffer;[Z)V
    .locals 3

    const/16 v0, 0x5b

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 332
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 334
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 336
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 339
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static byteArrayAppend(Ljava/lang/StringBuffer;[B)V
    .locals 3

    const/16 v0, 0x5b

    .line 343
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 346
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 348
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static charArrayAppend(Ljava/lang/StringBuffer;[C)V
    .locals 3

    const/16 v0, 0x5b

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 358
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 360
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 363
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_1
    instance-of v0, p1, [Z

    if-eqz v0, :cond_2

    .line 276
    check-cast p1, [Z

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuffer;[Z)V

    goto :goto_0

    .line 277
    :cond_2
    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    .line 278
    check-cast p1, [B

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuffer;[B)V

    goto :goto_0

    .line 279
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 280
    check-cast p1, [C

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuffer;[C)V

    goto :goto_0

    .line 281
    :cond_4
    instance-of v0, p1, [S

    if-eqz v0, :cond_5

    .line 282
    check-cast p1, [S

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuffer;[S)V

    goto :goto_0

    .line 283
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 284
    check-cast p1, [I

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuffer;[I)V

    goto :goto_0

    .line 285
    :cond_6
    instance-of v0, p1, [J

    if-eqz v0, :cond_7

    .line 286
    check-cast p1, [J

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuffer;[J)V

    goto :goto_0

    .line 287
    :cond_7
    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 288
    check-cast p1, [F

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuffer;[F)V

    goto :goto_0

    .line 289
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 290
    check-cast p1, [D

    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuffer;[D)V

    goto :goto_0

    .line 292
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private static doubleArrayAppend(Ljava/lang/StringBuffer;[D)V
    .locals 4

    const/16 v0, 0x5b

    .line 415
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 418
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 420
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static floatArrayAppend(Ljava/lang/StringBuffer;[F)V
    .locals 3

    const/16 v0, 0x5b

    .line 403
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 406
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 408
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;
    .locals 2

    const/4 v0, 0x1

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;
    .locals 2

    const/4 v0, 0x2

    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method static getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 163
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    .line 168
    instance-of v1, p0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 169
    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static intArrayAppend(Ljava/lang/StringBuffer;[I)V
    .locals 3

    const/16 v0, 0x5b

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 382
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 384
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 387
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method static isDoubleEscaped(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x5c

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isEscapedDelimeter(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x5c

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static longArrayAppend(Ljava/lang/StringBuffer;[J)V
    .locals 4

    const/16 v0, 0x5b

    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 394
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 396
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 399
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static objectArrayAppend(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x5b

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 314
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 317
    aget-object v2, p1, v1

    invoke-static {p0, v2, p2}, Lio/netty/util/internal/logging/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 319
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p1, "..."

    .line 325
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/16 p1, 0x5d

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static safeObjectAppend(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 4

    .line 299
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 302
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "[FAILED toString()]"

    .line 306
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method private static shortArrayAppend(Ljava/lang/StringBuffer;[S)V
    .locals 3

    const/16 v0, 0x5b

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 370
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 372
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
