.class Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;-><init>(Lcom/netease/ntunisdk/okhttp3/Request;Lcom/netease/ntunisdk/okhttp3/WebSocketListener;Ljava/util/Random;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$1;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$1;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->writeOneFrame()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$1;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/netease/ntunisdk/okhttp3/Response;)V

    :cond_0
    return-void
.end method
