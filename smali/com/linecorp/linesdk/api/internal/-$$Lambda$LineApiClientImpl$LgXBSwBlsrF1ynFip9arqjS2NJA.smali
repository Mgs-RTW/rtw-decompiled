.class public final synthetic Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$LgXBSwBlsrF1ynFip9arqjS2NJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$LgXBSwBlsrF1ynFip9arqjS2NJA;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$LgXBSwBlsrF1ynFip9arqjS2NJA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$LgXBSwBlsrF1ynFip9arqjS2NJA;->f$0:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$LgXBSwBlsrF1ynFip9arqjS2NJA;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->lambda$getOpenChatRoomStatus$9(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
