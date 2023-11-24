.class public Lio/netty/handler/codec/http/DefaultHttpHeaders;
.super Lio/netty/handler/codec/http/HttpHeaders;
.source "DefaultHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;,
        Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x11


# instance fields
.field private final entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

.field private final head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

.field protected final validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpHeaders;-><init>()V

    const/16 v0, 0x11

    .line 40
    new-array v0, v0, [Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 41
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 49
    iput-boolean p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    .line 50
    iget-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    return-void
.end method

.method static synthetic access$0(Lio/netty/handler/codec/http/DefaultHttpHeaders;)Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
    .locals 0

    .line 41
    iget-object p0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    return-object p0
.end method

.method private add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v0, v0, p2

    .line 135
    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    invoke-direct {v2, p0, p1, p3, p4}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v2, v1, p2

    .line 136
    iput-object v0, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 139
    iget-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    invoke-virtual {v2, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->addBefore(Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;)V

    return-void
.end method

.method private static index(I)I
    .locals 0

    .line 37
    rem-int/lit8 p0, p0, 0x11

    return p0
.end method

.method private remove0(IILjava/lang/CharSequence;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    :goto_0
    iget v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p3, v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->remove()V

    .line 167
    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aput-object v0, v1, p2

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    const/4 p3, 0x0

    aput-object p3, p1, p2

    return-void

    .line 181
    :cond_2
    :goto_1
    iget-object p2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-nez p2, :cond_3

    return-void

    .line 185
    :cond_3
    iget v1, p2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v1, p1, :cond_4

    iget-object v1, p2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p3, v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 187
    invoke-virtual {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->remove()V

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_1
.end method

.method private static toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 388
    :cond_0
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 389
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    .line 391
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 394
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 395
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v0

    check-cast p0, Ljava/util/Date;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 397
    :cond_3
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_4

    .line 398
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v0

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 3

    .line 59
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v0, :cond_1

    .line 60
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    .line 61
    iget-object p1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object p1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 62
    :goto_0
    iget-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne p1, v1, :cond_0

    return-object p0

    .line 63
    :cond_0
    iget-object v1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    iget-object v2, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 64
    iget-object p1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 68
    :cond_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 120
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 121
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 122
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 123
    iget-boolean v3, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v3, :cond_2

    .line 124
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    .line 96
    iget-boolean v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 99
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 103
    :goto_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 104
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 105
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public clear()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 3

    .line 250
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v2, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    return-object p0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 334
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 4

    if-eqz p1, :cond_3

    .line 353
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 354
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 355
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v1, v2, v1

    :goto_0
    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 357
    :cond_0
    iget v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v2, v0, :cond_2

    iget-object v2, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 359
    iget-object v3, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-static {v3, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 363
    :cond_1
    iget-object v3, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 368
    :cond_2
    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 350
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 329
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 344
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 404
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 405
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v0, v1, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 407
    iget-object v0, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0
.end method

.method public entries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 314
    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 315
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 316
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_3

    .line 266
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 267
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 268
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v1, v2, v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-nez v1, :cond_1

    if-nez v3, :cond_0

    return-object v2

    .line 281
    :cond_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_1
    iget v4, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v4, v0, :cond_2

    iget-object v4, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    iget-object v3, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    .line 276
    :cond_2
    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 263
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 295
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 297
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v1

    .line 298
    invoke-static {v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v2

    .line 299
    iget-object v3, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->entries:[Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    aget-object v2, v3, v2

    :goto_0
    if-nez v2, :cond_0

    return-object v0

    .line 301
    :cond_0
    iget v3, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    invoke-virtual {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 304
    :cond_1
    iget-object v2, v2, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 292
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 339
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 324
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderIterator;)V

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 376
    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 377
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 378
    :cond_0
    invoke-virtual {v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0
.end method

.method public remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    if-eqz p1, :cond_0

    .line 152
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 153
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 154
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove0(IILjava/lang/CharSequence;)V

    return-object p0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 3

    .line 74
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    .line 76
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    .line 77
    iget-object p1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object p1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 78
    :goto_0
    iget-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->head:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    if-ne p1, v1, :cond_0

    return-object p0

    .line 79
    :cond_0
    iget-object v1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    iget-object v2, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 80
    iget-object p1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    goto :goto_0

    .line 84
    :cond_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 226
    iget-boolean v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 231
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 233
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove0(IILjava/lang/CharSequence;)V

    .line 234
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return-object p0

    .line 238
    :cond_2
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 239
    iget-boolean v3, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v3, :cond_3

    .line 240
    invoke-static {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 242
    :cond_3
    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "values"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    .line 202
    iget-boolean v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validate:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName0(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 205
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 209
    :goto_0
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v0

    .line 210
    invoke-static {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->index(I)I

    move-result v1

    .line 211
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->remove0(IILjava/lang/CharSequence;)V

    .line 212
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add0(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    return-object p1
.end method

.method validateHeaderName0(Ljava/lang/CharSequence;)V
    .locals 0

    .line 54
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderName(Ljava/lang/CharSequence;)V

    return-void
.end method
