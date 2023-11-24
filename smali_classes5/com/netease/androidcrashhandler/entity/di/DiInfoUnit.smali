.class public Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;
.super Ljava/lang/Object;
.source "DiInfoUnit.java"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mKey:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mValue:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mKey:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getmKey()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setmKey(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setmValue(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiInfoUnit;->mValue:Ljava/lang/String;

    return-void
.end method
