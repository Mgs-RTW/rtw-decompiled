.class public final synthetic Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# instance fields
.field private final synthetic f$0:Lcom/facebook/AccessTokenManager$RefreshResult;

.field private final synthetic f$1:Lcom/facebook/AccessToken;

.field private final synthetic f$2:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field private final synthetic f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic f$4:Ljava/util/Set;

.field private final synthetic f$5:Ljava/util/Set;

.field private final synthetic f$6:Ljava/util/Set;

.field private final synthetic f$7:Lcom/facebook/AccessTokenManager;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/AccessTokenManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$0:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p2, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$1:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$2:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p4, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$4:Ljava/util/Set;

    iput-object p6, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$5:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$6:Ljava/util/Set;

    iput-object p8, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$7:Lcom/facebook/AccessTokenManager;

    return-void
.end method


# virtual methods
.method public final onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 9

    iget-object v0, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$0:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$1:Lcom/facebook/AccessToken;

    iget-object v2, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$2:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iget-object v3, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$4:Ljava/util/Set;

    iget-object v5, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$5:Ljava/util/Set;

    iget-object v6, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$6:Ljava/util/Set;

    iget-object v7, p0, Lcom/facebook/-$$Lambda$AccessTokenManager$1e08RsfxcSZVS7wtNV0wPmp-XMU;->f$7:Lcom/facebook/AccessTokenManager;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/facebook/AccessTokenManager;->lambda$1e08RsfxcSZVS7wtNV0wPmp-XMU(Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/AccessTokenManager;Lcom/facebook/GraphRequestBatch;)V

    return-void
.end method
