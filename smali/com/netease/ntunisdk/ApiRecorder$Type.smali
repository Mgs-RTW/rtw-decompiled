.class public final enum Lcom/netease/ntunisdk/ApiRecorder$Type;
.super Ljava/lang/Enum;
.source "ApiRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/ApiRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/ApiRecorder$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum exit:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum getAnnouncementInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum inAppPurchase:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum init:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum login:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum logout:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum manager:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onActivityResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onCreate:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onNewIntent:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onPause:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onRequestPermissionsResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onRestart:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onResume:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onSaveInstanceState:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onStart:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onStop:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum onWindowFocusChanged:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum openExitView:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum uploadUserInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

.field public static final enum userProtocol:Lcom/netease/ntunisdk/ApiRecorder$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->init:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 17
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "login"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->login:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 18
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "inAppPurchase"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->inAppPurchase:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 19
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "manager"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->manager:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 20
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "logout"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->logout:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 21
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "uploadUserInfo"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->uploadUserInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 22
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "openExitView"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->openExitView:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 23
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "exit"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->exit:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "userProtocol"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->userProtocol:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 25
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "getAnnouncementInfo"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->getAnnouncementInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 27
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onCreate"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onCreate:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 28
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onPause"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onPause:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 29
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onResume"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onResume:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 30
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onStart"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onStart:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 31
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onRestart"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onRestart:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 32
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onStop"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onStop:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 34
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onNewIntent"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onNewIntent:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 35
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onActivityResult"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onActivityResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 36
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onRequestPermissionsResult"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onRequestPermissionsResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 37
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onWindowFocusChanged"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onWindowFocusChanged:Lcom/netease/ntunisdk/ApiRecorder$Type;

    .line 38
    new-instance v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    const-string v1, "onSaveInstanceState"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/netease/ntunisdk/ApiRecorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->onSaveInstanceState:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v0, 0x15

    .line 15
    new-array v0, v0, [Lcom/netease/ntunisdk/ApiRecorder$Type;

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->init:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->login:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->inAppPurchase:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->manager:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->logout:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->uploadUserInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->openExitView:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->exit:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->userProtocol:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->getAnnouncementInfo:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onCreate:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onPause:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v13

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onResume:Lcom/netease/ntunisdk/ApiRecorder$Type;

    aput-object v1, v0, v14

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onStart:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onRestart:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onStop:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onNewIntent:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onActivityResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onRequestPermissionsResult:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onWindowFocusChanged:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/ApiRecorder$Type;->onSaveInstanceState:Lcom/netease/ntunisdk/ApiRecorder$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->$VALUES:[Lcom/netease/ntunisdk/ApiRecorder$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/ApiRecorder$Type;
    .locals 1

    .line 15
    const-class v0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/ApiRecorder$Type;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/ApiRecorder$Type;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/ntunisdk/ApiRecorder$Type;->$VALUES:[Lcom/netease/ntunisdk/ApiRecorder$Type;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/ApiRecorder$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/ApiRecorder$Type;

    return-object v0
.end method
