.class public final synthetic Lcom/linecorp/linesdk/api/internal/-$$Lambda$0WsmcWoxqpPz6Zxdwz0Q_w5b3wE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$0WsmcWoxqpPz6Zxdwz0Q_w5b3wE;->f$0:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$0WsmcWoxqpPz6Zxdwz0Q_w5b3wE;->f$0:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getProfile(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
