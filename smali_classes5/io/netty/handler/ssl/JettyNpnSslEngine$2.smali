.class Lio/netty/handler/ssl/JettyNpnSslEngine$2;
.super Ljava/lang/Object;
.source "JettyNpnSslEngine.java"

# interfaces
.implements Lorg/eclipse/jetty/npn/NextProtoNego$ClientProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/JettyNpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

.field final synthetic val$fallback:Ljava/lang/String;

.field final synthetic val$list:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/JettyNpnSslEngine;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

    iput-object p2, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$list:[Ljava/lang/String;

    iput-object p3, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$fallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectProtocol(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$list:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 104
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->val$fallback:Ljava/lang/String;

    return-object p1
.end method

.method public supports()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unsupported()V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;->this$0:Lio/netty/handler/ssl/JettyNpnSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/JettyNpnSslEngine;->access$000(Lio/netty/handler/ssl/JettyNpnSslEngine;)Lio/netty/handler/ssl/JettyNpnSslSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/handler/ssl/JettyNpnSslSession;->setApplicationProtocol(Ljava/lang/String;)V

    return-void
.end method
