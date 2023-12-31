.class public Lcom/netease/mpay/oversea/GameConfig;
.super Ljava/lang/Object;
.source "GameConfig.java"


# instance fields
.field public final appChannel:Ljava/lang/String;

.field public debug:Z

.field public forbidChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final gameId:Ljava/lang/String;

.field public hiddenCloseBtn:Z

.field public hiddenGuest:Z

.field public final host:Ljava/lang/String;

.field public jfGameId:Ljava/lang/String;

.field public language:Lcom/netease/mpay/oversea/GameLanguage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/GameConfig;->hiddenGuest:Z

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/GameConfig;->hiddenCloseBtn:Z

    .line 6
    iput-object p2, p0, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/netease/mpay/oversea/GameConfig;->language:Lcom/netease/mpay/oversea/GameLanguage;

    .line 10
    iput-boolean p5, p0, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    .line 11
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    return-void
.end method

.method public static genDefaultConfig(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)Lcom/netease/mpay/oversea/GameConfig;
    .locals 7

    .line 1
    new-instance v6, Lcom/netease/mpay/oversea/GameConfig;

    const-string v3, "https://sdk-os.mpsdk.easebar.com"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    return-object v6
.end method

.method public static updateMpayHosts(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    sput-object p0, Lcom/netease/mpay/oversea/trackers/TrackerConsts;->TRACKER_URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isHiddenCloseBtn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/GameConfig;->hiddenCloseBtn:Z

    return v0
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    return-void
.end method

.method public varargs setForbidChannels([Ljava/lang/Integer;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/GameConfig;->hiddenGuest:Z

    .line 2
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    .line 3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/netease/mpay/oversea/GameConfig;->hiddenGuest:Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v4

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setHiddenCloseBtn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/GameConfig;->hiddenCloseBtn:Z

    return-void
.end method

.method public setJfGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/GameConfig;->jfGameId:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/GameConfig;->language:Lcom/netease/mpay/oversea/GameLanguage;

    return-void
.end method
