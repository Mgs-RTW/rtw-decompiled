.class public Lorg/spongycastle/crypto/engines/ARIAEngine;
.super Ljava/lang/Object;
.source "ARIAEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field private static final C:[[B

.field private static final SB1_sbox:[B

.field private static final SB2_sbox:[B

.field private static final SB3_sbox:[B

.field private static final SB4_sbox:[B


# instance fields
.field private roundKeys:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [[B

    const-string v1, "517cc1b727220a94fe13abe8fa9a6ee0"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "6db14acc9e21c820ff28b1d5ef5de2b0"

    .line 19
    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "db92371d2126e9700324977504e8c90e"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    const/16 v0, 0x100

    .line 21
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    .line 51
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    .line 81
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    .line 111
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        -0x1et
        0x4et
        0x54t
        -0x4t
        -0x6ct
        -0x3et
        0x4at
        -0x34t
        0x62t
        0xdt
        0x6at
        0x46t
        0x3ct
        0x4dt
        -0x75t
        -0x2ft
        0x5et
        -0x6t
        0x64t
        -0x35t
        -0x4ct
        -0x69t
        -0x42t
        0x2bt
        -0x44t
        0x77t
        0x2et
        0x3t
        -0x2dt
        0x19t
        0x59t
        -0x3ft
        0x1dt
        0x6t
        0x41t
        0x6bt
        0x55t
        -0x10t
        -0x67t
        0x69t
        -0x16t
        -0x64t
        0x18t
        -0x52t
        0x63t
        -0x21t
        -0x19t
        -0x45t
        0x0t
        0x73t
        0x66t
        -0x5t
        -0x6at
        0x4ct
        -0x7bt
        -0x1ct
        0x3at
        0x9t
        0x45t
        -0x56t
        0xft
        -0x12t
        0x10t
        -0x15t
        0x2dt
        0x7ft
        -0xct
        0x29t
        -0x54t
        -0x31t
        -0x53t
        -0x6ft
        -0x73t
        0x78t
        -0x38t
        -0x6bt
        -0x7t
        0x2ft
        -0x32t
        -0x33t
        0x8t
        0x7at
        -0x78t
        0x38t
        0x5ct
        -0x7dt
        0x2at
        0x28t
        0x47t
        -0x25t
        -0x48t
        -0x39t
        -0x6dt
        -0x5ct
        0x12t
        0x53t
        -0x1t
        -0x79t
        0xet
        0x31t
        0x36t
        0x21t
        0x58t
        0x48t
        0x1t
        -0x72t
        0x37t
        0x74t
        0x32t
        -0x36t
        -0x17t
        -0x4ft
        -0x49t
        -0x55t
        0xct
        -0x29t
        -0x3ct
        0x56t
        0x42t
        0x26t
        0x7t
        -0x68t
        0x60t
        -0x27t
        -0x4at
        -0x47t
        0x11t
        0x40t
        -0x14t
        0x20t
        -0x74t
        -0x43t
        -0x60t
        -0x37t
        -0x7ct
        0x4t
        0x49t
        0x23t
        -0xft
        0x4ft
        0x50t
        0x1ft
        0x13t
        -0x24t
        -0x28t
        -0x40t
        -0x62t
        0x57t
        -0x1dt
        -0x3dt
        0x7bt
        0x65t
        0x3bt
        0x2t
        -0x71t
        0x3et
        -0x18t
        0x25t
        -0x6et
        -0x1bt
        0x15t
        -0x23t
        -0x3t
        0x17t
        -0x57t
        -0x41t
        -0x2ct
        -0x66t
        0x7et
        -0x3bt
        0x39t
        0x67t
        -0x2t
        0x76t
        -0x63t
        0x43t
        -0x59t
        -0x1ft
        -0x30t
        -0xbt
        0x68t
        -0xet
        0x1bt
        0x34t
        0x70t
        0x5t
        -0x5dt
        -0x76t
        -0x2bt
        0x79t
        -0x7at
        -0x58t
        0x30t
        -0x3at
        0x51t
        0x4bt
        0x1et
        -0x5at
        0x27t
        -0xat
        0x35t
        -0x2et
        0x6et
        0x24t
        0x16t
        -0x7et
        0x5ft
        -0x26t
        -0x1at
        0x75t
        -0x5et
        -0x11t
        0x2ct
        -0x4et
        0x1ct
        -0x61t
        0x5dt
        0x6ft
        -0x80t
        0xat
        0x72t
        0x44t
        -0x65t
        0x6ct
        -0x70t
        0xbt
        0x5bt
        0x33t
        0x7dt
        0x5at
        0x52t
        -0xdt
        0x61t
        -0x5ft
        -0x9t
        -0x50t
        -0x2at
        0x3ft
        0x7ct
        0x6dt
        -0x13t
        0x14t
        -0x20t
        -0x5bt
        0x3dt
        0x22t
        -0x4dt
        -0x8t
        -0x77t
        -0x22t
        0x71t
        0x1at
        -0x51t
        -0x46t
        -0x4bt
        -0x7ft
    .end array-data

    :array_2
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x68t
        -0x67t
        0x1bt
        -0x79t
        -0x47t
        0x21t
        0x78t
        0x50t
        0x39t
        -0x25t
        -0x1ft
        0x72t
        0x9t
        0x62t
        0x3ct
        0x3et
        0x7et
        0x5et
        -0x72t
        -0xft
        -0x60t
        -0x34t
        -0x5dt
        0x2at
        0x1dt
        -0x5t
        -0x4at
        -0x2at
        0x20t
        -0x3ct
        -0x73t
        -0x7ft
        0x65t
        -0xbt
        -0x77t
        -0x35t
        -0x63t
        0x77t
        -0x3at
        0x57t
        0x43t
        0x56t
        0x17t
        -0x2ct
        0x40t
        0x1at
        0x4dt
        -0x40t
        0x63t
        0x6ct
        -0x1dt
        -0x49t
        -0x38t
        0x64t
        0x6at
        0x53t
        -0x56t
        0x38t
        -0x68t
        0xct
        -0xct
        -0x65t
        -0x13t
        0x7ft
        0x22t
        0x76t
        -0x51t
        -0x23t
        0x3at
        0xbt
        0x58t
        0x67t
        -0x78t
        0x6t
        -0x3dt
        0x35t
        0xdt
        0x1t
        -0x75t
        -0x74t
        -0x3et
        -0x1at
        0x5ft
        0x2t
        0x24t
        0x75t
        -0x6dt
        0x66t
        0x1et
        -0x1bt
        -0x1et
        0x54t
        -0x28t
        0x10t
        -0x32t
        0x7at
        -0x18t
        0x8t
        0x2ct
        0x12t
        -0x69t
        0x32t
        -0x55t
        -0x4ct
        0x27t
        0xat
        0x23t
        -0x21t
        -0x11t
        -0x36t
        -0x27t
        -0x48t
        -0x6t
        -0x24t
        0x31t
        0x6bt
        -0x2ft
        -0x53t
        0x19t
        0x49t
        -0x43t
        0x51t
        -0x6at
        -0x12t
        -0x1ct
        -0x58t
        0x41t
        -0x26t
        -0x1t
        -0x33t
        0x55t
        -0x7at
        0x36t
        -0x42t
        0x61t
        0x52t
        -0x8t
        -0x45t
        0xet
        -0x7et
        0x48t
        0x69t
        -0x66t
        -0x20t
        0x47t
        -0x62t
        0x5ct
        0x4t
        0x4bt
        0x34t
        0x15t
        0x79t
        0x26t
        -0x59t
        -0x22t
        0x29t
        -0x52t
        -0x6et
        -0x29t
        -0x7ct
        -0x17t
        -0x2et
        -0x46t
        0x5dt
        -0xdt
        -0x3bt
        -0x50t
        -0x41t
        -0x5ct
        0x3bt
        0x71t
        0x44t
        0x46t
        0x2bt
        -0x4t
        -0x15t
        0x6ft
        -0x2bt
        -0xat
        0x14t
        -0x2t
        0x7ct
        0x70t
        0x5at
        0x7dt
        -0x3t
        0x2ft
        0x18t
        -0x7dt
        0x16t
        -0x5bt
        -0x6ft
        0x1ft
        0x5t
        -0x6bt
        0x74t
        -0x57t
        -0x3ft
        0x5bt
        0x4at
        -0x7bt
        0x6dt
        0x13t
        0x7t
        0x4ft
        0x4et
        0x45t
        -0x4et
        0xft
        -0x37t
        0x1ct
        -0x5at
        -0x44t
        -0x14t
        0x73t
        -0x70t
        0x7bt
        -0x31t
        0x59t
        -0x71t
        -0x5ft
        -0x7t
        0x2dt
        -0xet
        -0x4ft
        0x0t
        -0x6ct
        0x37t
        -0x61t
        -0x30t
        0x2et
        -0x64t
        0x6et
        0x28t
        0x3ft
        -0x80t
        -0x10t
        0x3dt
        -0x2dt
        0x25t
        -0x76t
        -0x4bt
        -0x19t
        0x42t
        -0x4dt
        -0x39t
        -0x16t
        -0x9t
        0x4ct
        0x11t
        0x33t
        0x3t
        -0x5et
        -0x54t
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static A([B)V
    .locals 32

    const/4 v0, 0x0

    .line 211
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    const/4 v4, 0x2

    aget-byte v5, p0, v4

    const/4 v6, 0x3

    aget-byte v7, p0, v6

    const/4 v8, 0x4

    aget-byte v9, p0, v8

    const/4 v10, 0x5

    aget-byte v11, p0, v10

    const/4 v12, 0x6

    aget-byte v13, p0, v12

    const/4 v14, 0x7

    aget-byte v15, p0, v14

    const/16 v16, 0x8

    aget-byte v17, p0, v16

    const/16 v18, 0x9

    .line 212
    aget-byte v19, p0, v18

    const/16 v20, 0xa

    aget-byte v21, p0, v20

    const/16 v22, 0xb

    aget-byte v23, p0, v22

    const/16 v24, 0xc

    aget-byte v25, p0, v24

    const/16 v26, 0xd

    aget-byte v27, p0, v26

    const/16 v28, 0xe

    aget-byte v29, p0, v28

    const/16 v30, 0xf

    aget-byte v30, p0, v30

    xor-int v31, v7, v9

    xor-int v31, v31, v13

    xor-int v31, v31, v17

    xor-int v31, v31, v19

    xor-int v31, v31, v27

    xor-int v14, v31, v29

    int-to-byte v14, v14

    .line 214
    aput-byte v14, p0, v0

    xor-int v0, v5, v11

    xor-int/2addr v0, v15

    xor-int v0, v0, v17

    xor-int v0, v0, v19

    xor-int v0, v0, v25

    xor-int v0, v0, v30

    int-to-byte v0, v0

    .line 215
    aput-byte v0, p0, v2

    xor-int v0, v3, v9

    xor-int/2addr v0, v13

    xor-int v0, v0, v21

    xor-int v0, v0, v23

    xor-int v0, v0, v25

    xor-int v0, v0, v30

    int-to-byte v0, v0

    .line 216
    aput-byte v0, p0, v4

    xor-int v0, v1, v11

    xor-int/2addr v0, v15

    xor-int v0, v0, v21

    xor-int v0, v0, v23

    xor-int v0, v0, v27

    xor-int v0, v0, v29

    int-to-byte v0, v0

    .line 217
    aput-byte v0, p0, v6

    xor-int v0, v1, v5

    xor-int v2, v0, v11

    xor-int v2, v2, v17

    xor-int v2, v2, v23

    xor-int v2, v2, v29

    xor-int v2, v2, v30

    int-to-byte v2, v2

    .line 218
    aput-byte v2, p0, v8

    xor-int v2, v3, v7

    xor-int v4, v2, v9

    xor-int v4, v4, v19

    xor-int v4, v4, v21

    xor-int v4, v4, v29

    xor-int v4, v4, v30

    int-to-byte v4, v4

    .line 219
    aput-byte v4, p0, v10

    xor-int/2addr v0, v15

    xor-int v0, v0, v19

    xor-int v0, v0, v21

    xor-int v0, v0, v25

    xor-int v0, v0, v27

    int-to-byte v0, v0

    .line 220
    aput-byte v0, p0, v12

    xor-int v0, v2, v13

    xor-int v0, v0, v17

    xor-int v0, v0, v23

    xor-int v0, v0, v25

    xor-int v0, v0, v27

    int-to-byte v0, v0

    const/4 v2, 0x7

    .line 221
    aput-byte v0, p0, v2

    xor-int v0, v1, v3

    xor-int v2, v0, v9

    xor-int/2addr v2, v15

    xor-int v2, v2, v21

    xor-int v2, v2, v27

    xor-int v2, v2, v30

    int-to-byte v2, v2

    .line 222
    aput-byte v2, p0, v16

    xor-int/2addr v0, v11

    xor-int/2addr v0, v13

    xor-int v0, v0, v23

    xor-int v0, v0, v25

    xor-int v0, v0, v29

    int-to-byte v0, v0

    .line 223
    aput-byte v0, p0, v18

    xor-int v0, v5, v7

    xor-int v2, v0, v11

    xor-int/2addr v2, v13

    xor-int v2, v2, v17

    xor-int v2, v2, v27

    xor-int v2, v2, v30

    int-to-byte v2, v2

    .line 224
    aput-byte v2, p0, v20

    xor-int/2addr v0, v9

    xor-int/2addr v0, v15

    xor-int v0, v0, v19

    xor-int v0, v0, v25

    xor-int v0, v0, v29

    int-to-byte v0, v0

    .line 225
    aput-byte v0, p0, v22

    xor-int v0, v3, v5

    xor-int v2, v0, v13

    xor-int/2addr v2, v15

    xor-int v2, v2, v19

    xor-int v2, v2, v23

    xor-int v2, v2, v25

    int-to-byte v2, v2

    .line 226
    aput-byte v2, p0, v24

    xor-int/2addr v1, v7

    xor-int v2, v1, v13

    xor-int/2addr v2, v15

    xor-int v2, v2, v17

    xor-int v2, v2, v21

    xor-int v2, v2, v27

    int-to-byte v2, v2

    .line 227
    aput-byte v2, p0, v26

    xor-int/2addr v1, v9

    xor-int/2addr v1, v11

    xor-int v1, v1, v19

    xor-int v1, v1, v23

    xor-int v1, v1, v29

    int-to-byte v1, v1

    .line 228
    aput-byte v1, p0, v28

    xor-int/2addr v0, v9

    xor-int/2addr v0, v11

    xor-int v0, v0, v17

    xor-int v0, v0, v21

    xor-int v0, v0, v30

    int-to-byte v0, v0

    const/16 v1, 0xf

    .line 229
    aput-byte v0, p0, v1

    return-void
.end method

.method protected static FE([B[B)V
    .locals 0

    .line 234
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 235
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SL2([B)V

    .line 236
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->A([B)V

    return-void
.end method

.method protected static FO([B[B)V
    .locals 0

    .line 241
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 242
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SL1([B)V

    .line 243
    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->A([B)V

    return-void
.end method

.method protected static SB1(B)B
    .locals 1

    .line 359
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v0, p0

    return p0
.end method

.method protected static SB2(B)B
    .locals 1

    .line 364
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v0, p0

    return p0
.end method

.method protected static SB3(B)B
    .locals 1

    .line 369
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v0, p0

    return p0
.end method

.method protected static SB4(B)B
    .locals 1

    .line 374
    sget-object v0, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v0, p0

    return p0
.end method

.method protected static SL1([B)V
    .locals 2

    const/4 v0, 0x0

    .line 379
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    .line 380
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x2

    .line 381
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x3

    .line 382
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x4

    .line 383
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x5

    .line 384
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    .line 385
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    .line 386
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x8

    .line 387
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x9

    .line 388
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xa

    .line 389
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xb

    .line 390
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xc

    .line 391
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xd

    .line 392
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xe

    .line 393
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xf

    .line 394
    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v0

    const/16 v1, 0xf

    aput-byte v0, p0, v1

    return-void
.end method

.method protected static SL2([B)V
    .locals 2

    const/4 v0, 0x0

    .line 399
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    .line 400
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x2

    .line 401
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x3

    .line 402
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x4

    .line 403
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x5

    .line 404
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    .line 405
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    .line 406
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x8

    .line 407
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x9

    .line 408
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xa

    .line 409
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xb

    .line 410
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xc

    .line 411
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xd

    .line 412
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xe

    .line 413
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xf

    .line 414
    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v0

    const/16 v1, 0xf

    aput-byte v0, p0, v1

    return-void
.end method

.method protected static keySchedule(Z[B)[[B
    .locals 13

    .line 248
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_2

    ushr-int/lit8 v2, v0, 0x3

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    .line 256
    sget-object v4, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    aget-object v4, v4, v2

    .line 257
    sget-object v5, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x3

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    .line 258
    sget-object v6, Lorg/spongycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v8, v2, 0x2

    rem-int/2addr v8, v7

    aget-object v6, v6, v8

    .line 260
    new-array v8, v1, [B

    new-array v9, v1, [B

    const/4 v10, 0x0

    .line 261
    invoke-static {p1, v10, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    .line 262
    invoke-static {p1, v1, v9, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    new-array p1, v1, [B

    .line 265
    new-array v0, v1, [B

    .line 266
    new-array v11, v1, [B

    .line 267
    new-array v12, v1, [B

    .line 269
    invoke-static {v8, v10, p1, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    invoke-static {p1, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    invoke-static {v0, v4}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 273
    invoke-static {v0, v9}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 275
    invoke-static {v0, v10, v11, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    invoke-static {v11, v5}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    .line 277
    invoke-static {v11, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 279
    invoke-static {v11, v10, v12, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    invoke-static {v12, v6}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 281
    invoke-static {v12, v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    mul-int/lit8 v2, v2, 0x2

    const/16 v4, 0xc

    add-int/2addr v2, v4

    add-int/lit8 v5, v2, 0x1

    .line 284
    filled-new-array {v5, v1}, [I

    move-result-object v5

    const-class v6, B

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    .line 286
    aget-object v6, v5, v10

    const/16 v8, 0x13

    invoke-static {v6, p1, v0, v8}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v6, 0x1

    .line 287
    aget-object v9, v5, v6

    invoke-static {v9, v0, v11, v8}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 288
    aget-object v3, v5, v3

    invoke-static {v3, v11, v12, v8}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 289
    aget-object v3, v5, v7

    invoke-static {v3, v12, p1, v8}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v3, 0x4

    .line 291
    aget-object v3, v5, v3

    const/16 v7, 0x1f

    invoke-static {v3, p1, v0, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v3, 0x5

    .line 292
    aget-object v3, v5, v3

    invoke-static {v3, v0, v11, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v3, 0x6

    .line 293
    aget-object v3, v5, v3

    invoke-static {v3, v11, v12, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v3, 0x7

    .line 294
    aget-object v3, v5, v3

    invoke-static {v3, v12, p1, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v3, 0x8

    .line 296
    aget-object v3, v5, v3

    const/16 v7, 0x43

    invoke-static {v3, p1, v0, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v3, 0x9

    .line 297
    aget-object v3, v5, v3

    invoke-static {v3, v0, v11, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v3, 0xa

    .line 298
    aget-object v3, v5, v3

    invoke-static {v3, v11, v12, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v3, 0xb

    .line 299
    aget-object v3, v5, v3

    invoke-static {v3, v12, p1, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 301
    aget-object v3, v5, v4

    const/16 v7, 0x61

    invoke-static {v3, p1, v0, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    if-le v2, v4, :cond_0

    const/16 v3, 0xd

    .line 304
    aget-object v3, v5, v3

    invoke-static {v3, v0, v11, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v3, 0xe

    .line 305
    aget-object v4, v5, v3

    invoke-static {v4, v11, v12, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    if-le v2, v3, :cond_0

    const/16 v3, 0xf

    .line 308
    aget-object v3, v5, v3

    invoke-static {v3, v12, p1, v7}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    .line 310
    aget-object v1, v5, v1

    const/16 v3, 0x6d

    invoke-static {v1, p1, v0, v3}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    :cond_0
    if-nez p0, :cond_1

    .line 316
    invoke-static {v5}, Lorg/spongycastle/crypto/engines/ARIAEngine;->reverseKeys([[B)V

    :goto_0
    if-ge v6, v2, :cond_1

    .line 320
    aget-object p0, v5, v6

    invoke-static {p0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->A([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v5

    .line 251
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key length not 128/192/256 bits."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static keyScheduleRound([B[B[BI)V
    .locals 6

    ushr-int/lit8 v0, p3, 0x3

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 v1, p3, 0x8

    rsub-int/lit8 v2, v0, 0xf

    .line 331
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    sub-int v4, v3, v0

    and-int/lit8 v4, v4, 0xf

    .line 335
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v2, v1

    ushr-int v5, v4, p3

    or-int/2addr v2, v5

    .line 338
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    .line 340
    aput-byte v2, p0, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static reverseKeys([[B)V
    .locals 6

    .line 348
    array-length v0, p0

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 351
    aget-object v3, p0, v2

    sub-int v4, v0, v2

    .line 352
    aget-object v5, p0, v4

    aput-object v5, p0, v2

    .line 353
    aput-object v3, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static xor([B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 421
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "ARIA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 148
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 155
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/crypto/engines/ARIAEngine;->keySchedule(Z[B)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to ARIA init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    if-eqz v0, :cond_3

    .line 175
    array-length v0, p1

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_2

    .line 179
    array-length v0, p3

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1

    .line 184
    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 185
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length p1, p1

    add-int/lit8 p1, p1, -0x3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 190
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v4, p2, 0x1

    aget-object p2, v3, p2

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 191
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v3, v4, 0x1

    aget-object p2, p2, v4

    invoke-static {v0, p2}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    move p2, v3

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v3, p2, 0x1

    aget-object p1, p1, p2

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    .line 195
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 p2, v3, 0x1

    aget-object p1, p1, v3

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 196
    invoke-static {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;->SL2([B)V

    .line 197
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    aget-object p1, p1, p2

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    .line 199
    invoke-static {v0, v2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1

    .line 181
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ARIA engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
