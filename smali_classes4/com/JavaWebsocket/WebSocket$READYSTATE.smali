.class public final enum Lcom/JavaWebsocket/WebSocket$READYSTATE;
.super Ljava/lang/Enum;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JavaWebsocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "READYSTATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/JavaWebsocket/WebSocket$READYSTATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/JavaWebsocket/WebSocket$READYSTATE;

.field public static final enum CLOSED:Lcom/JavaWebsocket/WebSocket$READYSTATE;

.field public static final enum CLOSING:Lcom/JavaWebsocket/WebSocket$READYSTATE;

.field public static final enum CONNECTING:Lcom/JavaWebsocket/WebSocket$READYSTATE;

.field public static final enum NOT_YET_CONNECTED:Lcom/JavaWebsocket/WebSocket$READYSTATE;

.field public static final enum OPEN:Lcom/JavaWebsocket/WebSocket$READYSTATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;

    const-string v1, "NOT_YET_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/JavaWebsocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;

    const-string v1, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/JavaWebsocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;->CONNECTING:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;

    const-string v1, "OPEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/JavaWebsocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;->OPEN:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;

    const-string v1, "CLOSING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/JavaWebsocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;->CLOSING:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    new-instance v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;

    const-string v1, "CLOSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/JavaWebsocket/WebSocket$READYSTATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;->CLOSED:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    const/4 v0, 0x5

    .line 16
    new-array v0, v0, [Lcom/JavaWebsocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/JavaWebsocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/JavaWebsocket/WebSocket$READYSTATE;->CONNECTING:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/JavaWebsocket/WebSocket$READYSTATE;->OPEN:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/JavaWebsocket/WebSocket$READYSTATE;->CLOSING:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/JavaWebsocket/WebSocket$READYSTATE;->CLOSED:Lcom/JavaWebsocket/WebSocket$READYSTATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;->$VALUES:[Lcom/JavaWebsocket/WebSocket$READYSTATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/JavaWebsocket/WebSocket$READYSTATE;
    .locals 1

    .line 16
    const-class v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/JavaWebsocket/WebSocket$READYSTATE;

    return-object p0
.end method

.method public static values()[Lcom/JavaWebsocket/WebSocket$READYSTATE;
    .locals 1

    .line 16
    sget-object v0, Lcom/JavaWebsocket/WebSocket$READYSTATE;->$VALUES:[Lcom/JavaWebsocket/WebSocket$READYSTATE;

    invoke-virtual {v0}, [Lcom/JavaWebsocket/WebSocket$READYSTATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/JavaWebsocket/WebSocket$READYSTATE;

    return-object v0
.end method
