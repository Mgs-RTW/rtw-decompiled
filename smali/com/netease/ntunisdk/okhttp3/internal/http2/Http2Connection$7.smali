.class Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;
.super Lcom/netease/ntunisdk/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iput-object p5, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->val$errorCode:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/netease/ntunisdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;->pushObserver:Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;

    iget v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->val$errorCode:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;->onReset(ILcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method