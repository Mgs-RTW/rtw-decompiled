.class public final enum Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum CONNECT_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum ENHANCE_YOUR_CALM:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum HTTP_1_1_REQUIRED:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum INADEQUATE_SECURITY:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "REFUSED_STREAM"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "CANCEL"

    const/4 v8, 0x5

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "COMPRESSION_ERROR"

    const/4 v10, 0x6

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->COMPRESSION_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "CONNECT_ERROR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v7, v12}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->CONNECT_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v9, v13}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->ENHANCE_YOUR_CALM:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "INADEQUATE_SECURITY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v11, v14}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->INADEQUATE_SECURITY:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v12, v14}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->HTTP_1_1_REQUIRED:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    new-array v0, v13, [Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->COMPRESSION_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->CONNECT_ERROR:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->ENHANCE_YOUR_CALM:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->INADEQUATE_SECURITY:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->HTTP_1_1_REQUIRED:Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v12

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->$VALUES:[Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->httpCode:I

    return-void
.end method

.method public static fromHttp2(I)Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;
    .locals 5

    invoke-static {}, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->values()[Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;
    .locals 1

    const-class v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->$VALUES:[Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/okhttp3/internal/http2/ErrorCode;

    return-object v0
.end method
