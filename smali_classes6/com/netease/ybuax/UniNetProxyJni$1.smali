.class final Lcom/netease/ybuax/UniNetProxyJni$1;
.super Ljava/lang/Object;
.source "UniNetProxyJni.java"

# interfaces
.implements Lcom/netease/unisdk/netproxy/NetProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ybuax/UniNetProxyJni;->get_netProxyCallback(Ljava/lang/String;)Lcom/netease/unisdk/netproxy/NetProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/netease/ybuax/UniNetProxyJni$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/ybuax/UniNetProxyJni$1;->val$path:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/netease/ybuax/UniNetProxyJni;->getResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
