.class public Lorg/spongycastle/jcajce/provider/symmetric/RC6$OFB;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "RC6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/RC6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OFB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 73
    new-instance v0, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/OFBBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/engines/RC6Engine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/RC6Engine;-><init>()V

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;I)V

    return-void
.end method
