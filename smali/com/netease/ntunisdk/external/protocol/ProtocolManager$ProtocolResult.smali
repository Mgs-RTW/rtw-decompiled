.class public Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;
.super Ljava/lang/Object;
.source "ProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolResult"
.end annotation


# instance fields
.field result:I

.field scene:Lcom/netease/ntunisdk/external/protocol/Scene;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/external/protocol/Scene;I)V
    .locals 0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;->result:I

    .line 759
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$ProtocolResult;->scene:Lcom/netease/ntunisdk/external/protocol/Scene;

    return-void
.end method
