.class public final enum Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/load/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum GIF:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum JPEG:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG_A:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum RAW:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum UNKNOWN:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP_A:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;


# instance fields
.field private final hasAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 23
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "GIF"

    invoke-direct {v0, v3, v2, v1}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const-string v3, "JPEG"

    invoke-direct {v0, v3, v1, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 25
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/4 v3, 0x2

    const-string v4, "RAW"

    invoke-direct {v0, v4, v3, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->RAW:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 27
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/4 v4, 0x3

    const-string v5, "PNG_A"

    invoke-direct {v0, v5, v4, v1}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 29
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/4 v5, 0x4

    const-string v6, "PNG"

    invoke-direct {v0, v6, v5, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 31
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/4 v6, 0x5

    const-string v7, "WEBP_A"

    invoke-direct {v0, v7, v6, v1}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 33
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/4 v7, 0x6

    const-string v8, "WEBP"

    invoke-direct {v0, v8, v7, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 35
    new-instance v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN"

    invoke-direct {v0, v9, v8, v2}, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    .line 22
    sget-object v9, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v9, v0, v2

    sget-object v2, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->RAW:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-boolean p3, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->hasAlpha:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    .line 22
    const-class v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/ImageHeaderParser$ImageType;->hasAlpha:Z

    return v0
.end method