.class public Lcom/netease/androidcrashhandler/net/NetResponse;
.super Ljava/lang/Object;
.source "NetResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetResponse"


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mRequest:Lcom/netease/androidcrashhandler/net/NetRequest;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILcom/netease/androidcrashhandler/net/NetRequest;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mStatusCode:I

    .line 29
    iput-object p2, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mRequest:Lcom/netease/androidcrashhandler/net/NetRequest;

    return-void
.end method

.method public constructor <init>(ILcom/netease/androidcrashhandler/net/NetRequest;Ljava/io/InputStream;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mStatusCode:I

    .line 23
    iput-object p2, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mRequest:Lcom/netease/androidcrashhandler/net/NetRequest;

    .line 24
    iput-object p3, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getmInputStream()Ljava/io/InputStream;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getmRequest()Lcom/netease/androidcrashhandler/net/NetRequest;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mRequest:Lcom/netease/androidcrashhandler/net/NetRequest;

    return-object v0
.end method

.method public getmStatusCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mStatusCode:I

    return v0
.end method

.method public setmInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setmRequest(Lcom/netease/androidcrashhandler/net/NetRequest;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mRequest:Lcom/netease/androidcrashhandler/net/NetRequest;

    return-void
.end method

.method public setmStatusCode(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/netease/androidcrashhandler/net/NetResponse;->mStatusCode:I

    return-void
.end method
