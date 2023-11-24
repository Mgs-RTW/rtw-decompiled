.class public Lcom/netease/ybuax/UniNetProxyJni;
.super Ljava/lang/Object;
.source "UniNetProxyJni.java"


# static fields
.field public static useUniNetProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static get_netProxyCallback(Ljava/lang/String;)Lcom/netease/unisdk/netproxy/NetProxyCallback;
    .locals 1

    .line 12
    new-instance v0, Lcom/netease/ybuax/UniNetProxyJni$1;

    invoke-direct {v0, p0}, Lcom/netease/ybuax/UniNetProxyJni$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
