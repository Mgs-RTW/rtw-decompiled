.class final Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;
.super Ljava/lang/Object;
.source "DefaultHttpHeaders.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/DefaultHttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeaderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

.field before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

.field final hash:I

.field final key:Ljava/lang/CharSequence;

.field next:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

.field final synthetic this$0:Lio/netty/handler/codec/http/DefaultHttpHeaders;

.field value:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->this$0:Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 451
    iput p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    const/4 p1, 0x0

    .line 452
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    .line 453
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->this$0:Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput p2, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->hash:I

    .line 446
    iput-object p3, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    .line 447
    iput-object p4, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method addBefore(Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 463
    iget-object p1, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 464
    iget-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object p0, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 465
    iget-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object p0, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    return-void
.end method

.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-static {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->encode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method remove()V
    .locals 2

    .line 457
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    .line 458
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->after:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    iput-object v1, v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->before:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 483
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderValue(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    .line 485
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    .line 486
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 481
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->key:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderEntry;->value:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
