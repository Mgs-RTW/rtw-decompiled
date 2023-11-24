.class public Lcom/netease/lotr/ObbDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "ObbDownloaderService.java"


# static fields
.field public static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAksf0DFdlAHug6YzL4UkWuLvjtLUTA/Neqd+NAGqFL4tuYluqbepLWUojYzrdXT6f9efBqo+bpBttW+ml2p0J4SDa4nY6uS0N1tVcWPiIDLDPrGQ0j3jRYV1HN8v1lXTCWcdfa8sJ4pYuApN38Mc/hioeQ5o29UkBaKrw/zREoFjZk5XVL/xulzXAHWKNEGtUMt4LyeqTSTESb1ehAI2V3RTIYaDQ5mcQJweO3FuPVKAuLUzFZm/CLpZydL39W5viI2xjgHTS1FeKw75W20iZRti7JJA+xPMA/gkHnfdfainPlxaOfIKujYB1ng57pXsOw4hrokU32j+PSVsyWo4V+wIDAQAB"

.field public static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 8
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/lotr/ObbDownloaderService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x2at
        -0xct
        -0x1t
        0x20t
        0x62t
        -0x4et
        -0xct
        0x2bt
        0x17t
        -0x8t
        -0x4t
        0x9t
        0x5t
        -0x6at
        -0x6bt
        0x25t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .line 24
    const-class v0, Lcom/netease/lotr/ObbAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAksf0DFdlAHug6YzL4UkWuLvjtLUTA/Neqd+NAGqFL4tuYluqbepLWUojYzrdXT6f9efBqo+bpBttW+ml2p0J4SDa4nY6uS0N1tVcWPiIDLDPrGQ0j3jRYV1HN8v1lXTCWcdfa8sJ4pYuApN38Mc/hioeQ5o29UkBaKrw/zREoFjZk5XVL/xulzXAHWKNEGtUMt4LyeqTSTESb1ehAI2V3RTIYaDQ5mcQJweO3FuPVKAuLUzFZm/CLpZydL39W5viI2xjgHTS1FeKw75W20iZRti7JJA+xPMA/gkHnfdfainPlxaOfIKujYB1ng57pXsOw4hrokU32j+PSVsyWo4V+wIDAQAB"

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/lotr/ObbDownloaderService;->SALT:[B

    return-object v0
.end method
