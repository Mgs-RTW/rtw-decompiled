.class public final Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;
.super Lcom/netease/ntunisdk/okhttp3/ResponseBody;


# instance fields
.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lcom/netease/ntunisdk/okio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/netease/ntunisdk/okio/BufferedSource;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    iput-wide p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;->contentLength:J

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;->source:Lcom/netease/ntunisdk/okio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/netease/ntunisdk/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public source()Lcom/netease/ntunisdk/okio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealResponseBody;->source:Lcom/netease/ntunisdk/okio/BufferedSource;

    return-object v0
.end method
