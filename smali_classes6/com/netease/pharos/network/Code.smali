.class public Lcom/netease/pharos/network/Code;
.super Ljava/lang/Object;
.source "Code.java"


# static fields
.field public static final Cancel:I = 0xc

.field public static final CfgFileDownloadFaild:I = 0x10

.field public static final InvalidDomain:I = 0xf

.field public static final InvalidParams:I = 0xe

.field public static final InvalidTimeZone:I = 0x11

.field public static final LinkError:I = 0x1

.field public static final MD5Error:I = 0x3

.field public static final ReadContentTimeout:I = 0xd

.field public static final SizeError:I = 0x2

.field public static final SpaceNotEnough:I = 0x5

.field public static final Success:I = 0x0

.field public static final UnknownError:I = 0xb

.field public static final WriteFileError:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 32
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
