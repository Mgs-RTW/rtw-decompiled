.class public final enum Lcom/netease/ntunisdk/okhttp3/TlsVersion;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/okhttp3/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/okhttp3/TlsVersion;

.field public static final enum SSL_3_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

.field public static final enum TLS_1_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

.field public static final enum TLS_1_1:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

.field public static final enum TLS_1_2:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

.field public static final enum TLS_1_3:Lcom/netease/ntunisdk/okhttp3/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    const-string v1, "TLS_1_3"

    const-string v2, "TLSv1.3"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_3:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    const-string v1, "TLS_1_2"

    const-string v2, "TLSv1.2"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_2:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    const-string v1, "TLS_1_1"

    const-string v2, "TLSv1.1"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_1:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    const-string v1, "TLS_1_0"

    const-string v2, "TLSv1"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    const-string v1, "SSL_3_0"

    const-string v2, "SSLv3"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->SSL_3_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_3:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_2:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_1:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->SSL_3_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->$VALUES:[Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/TlsVersion;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4b88569

    if-eq v0, v1, :cond_1

    const v1, 0x4c38896

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->SSL_3_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_0:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_1:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_2:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->TLS_1_3:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1dfc3f27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/TlsVersion;
    .locals 1

    const-class v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/okhttp3/TlsVersion;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->$VALUES:[Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/okhttp3/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
