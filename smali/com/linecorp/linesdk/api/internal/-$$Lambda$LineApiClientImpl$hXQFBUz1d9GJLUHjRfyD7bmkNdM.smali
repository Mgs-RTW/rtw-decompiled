.class public final synthetic Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->lambda$sendMessage$4(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/util/List;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
