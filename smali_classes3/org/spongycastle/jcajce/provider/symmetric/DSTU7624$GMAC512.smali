.class public Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$GMAC512;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DSTU7624.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMAC512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 339
    new-instance v0, Lorg/spongycastle/crypto/macs/KGMac;

    new-instance v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/crypto/macs/KGMac;-><init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    return-void
.end method
