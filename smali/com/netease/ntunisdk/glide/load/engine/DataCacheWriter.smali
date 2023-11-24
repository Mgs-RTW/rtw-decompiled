.class Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;
.super Ljava/lang/Object;
.source "DataCacheWriter.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/netease/ntunisdk/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/load/Encoder<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final options:Lcom/netease/ntunisdk/glide/load/Options;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/load/Encoder;Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/load/Encoder<",
            "TDataType;>;TDataType;",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;->encoder:Lcom/netease/ntunisdk/glide/load/Encoder;

    .line 26
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;->data:Ljava/lang/Object;

    .line 27
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;->options:Lcom/netease/ntunisdk/glide/load/Options;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;->encoder:Lcom/netease/ntunisdk/glide/load/Encoder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;->data:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/load/engine/DataCacheWriter;->options:Lcom/netease/ntunisdk/glide/load/Options;

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/ntunisdk/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method
