.class public final synthetic Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljava/util/List;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$3:Z

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$2:Ljava/util/List;

    iget-boolean v3, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->lambda$sendMessageToMultipleUsers$5(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/util/List;Ljava/util/List;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
