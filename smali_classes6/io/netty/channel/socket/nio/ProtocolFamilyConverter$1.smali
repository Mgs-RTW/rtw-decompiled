.class synthetic Lio/netty/channel/socket/nio/ProtocolFamilyConverter$1;
.super Ljava/lang/Object;
.source "ProtocolFamilyConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/socket/nio/ProtocolFamilyConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$netty$channel$socket$InternetProtocolFamily:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lio/netty/channel/socket/InternetProtocolFamily;->values()[Lio/netty/channel/socket/InternetProtocolFamily;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/netty/channel/socket/nio/ProtocolFamilyConverter$1;->$SwitchMap$io$netty$channel$socket$InternetProtocolFamily:[I

    :try_start_0
    sget-object v0, Lio/netty/channel/socket/nio/ProtocolFamilyConverter$1;->$SwitchMap$io$netty$channel$socket$InternetProtocolFamily:[I

    sget-object v1, Lio/netty/channel/socket/InternetProtocolFamily;->IPv4:Lio/netty/channel/socket/InternetProtocolFamily;

    invoke-virtual {v1}, Lio/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/netty/channel/socket/nio/ProtocolFamilyConverter$1;->$SwitchMap$io$netty$channel$socket$InternetProtocolFamily:[I

    sget-object v1, Lio/netty/channel/socket/InternetProtocolFamily;->IPv6:Lio/netty/channel/socket/InternetProtocolFamily;

    invoke-virtual {v1}, Lio/netty/channel/socket/InternetProtocolFamily;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
