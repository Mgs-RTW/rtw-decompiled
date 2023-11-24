.class public final synthetic Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$EAP4DYVGkazaZjUOnsGwNG1jLxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$EAP4DYVGkazaZjUOnsGwNG1jLxo;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$EAP4DYVGkazaZjUOnsGwNG1jLxo;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->lambda$EAP4DYVGkazaZjUOnsGwNG1jLxo(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
