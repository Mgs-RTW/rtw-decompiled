.class Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$2;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$TypeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType(Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParserUtils$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;->getType(Ljava/nio/ByteBuffer;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method
