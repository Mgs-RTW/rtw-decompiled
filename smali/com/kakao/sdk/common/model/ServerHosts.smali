.class public Lcom/kakao/sdk/common/model/ServerHosts;
.super Ljava/lang/Object;
.source "ServerHosts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/ServerHosts$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0016\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ServerHosts;",
        "",
        "()V",
        "account",
        "",
        "getAccount",
        "()Ljava/lang/String;",
        "channel",
        "getChannel",
        "kapi",
        "getKapi",
        "kauth",
        "getKauth",
        "mobileAccount",
        "getMobileAccount",
        "navi",
        "getNavi",
        "sharer",
        "getSharer",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;


# instance fields
.field private final account:Ljava/lang/String;

.field private final channel:Ljava/lang/String;

.field private final kapi:Ljava/lang/String;

.field private final kauth:Ljava/lang/String;

.field private final mobileAccount:Ljava/lang/String;

.field private final navi:Ljava/lang/String;

.field private final sharer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/ServerHosts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/ServerHosts;->Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kauth.kakao.com"

    .line 22
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kauth:Ljava/lang/String;

    const-string v0, "kapi.kakao.com"

    .line 23
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kapi:Ljava/lang/String;

    const-string v0, "accounts.kakao.com"

    .line 24
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->account:Ljava/lang/String;

    const-string v0, "auth.kakao.com"

    .line 25
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->mobileAccount:Ljava/lang/String;

    const-string v0, "sharer.kakao.com"

    .line 26
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->sharer:Ljava/lang/String;

    const-string v0, "kakaonavi-wguide.kakao.com"

    .line 27
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->navi:Ljava/lang/String;

    const-string v0, "pf.kakao.com"

    .line 28
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getKapi()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kapi:Ljava/lang/String;

    return-object v0
.end method

.method public getKauth()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kauth:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileAccount()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->mobileAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getNavi()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->navi:Ljava/lang/String;

    return-object v0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->sharer:Ljava/lang/String;

    return-object v0
.end method
