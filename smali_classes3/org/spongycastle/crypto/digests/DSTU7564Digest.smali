.class public Lorg/spongycastle/crypto/digests/DSTU7564Digest;
.super Ljava/lang/Object;
.source "DSTU7564Digest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8

.field private static final NB_1024:I = 0x10

.field private static final NB_512:I = 0x8

.field private static final NR_1024:I = 0xe

.field private static final NR_512:I = 0xa

.field private static final REDUCTIONAL_POLYNOMIAL:I = 0x11d

.field private static final ROWS:I = 0x8

.field private static final STATE_BYTES_SIZE_1024:I = 0x80

.field private static final STATE_BYTES_SIZE_512:I = 0x40

.field private static final mds_matrix:[[B

.field private static final sBoxes:[[B


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private columns:I

.field private hashSize:I

.field private inputLength:J

.field private mixColumnsResult:[B

.field private padded:[B

.field private rounds:I

.field private state:[[B

.field private tempBuffer:[B

.field private tempLongBuffer:[J

.field private tempState1:[[B

.field private tempState2:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x8

    .line 549
    new-array v1, v0, [[B

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [B

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [B

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [B

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v2, v0, [B

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-array v2, v0, [B

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v1, v8

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    .line 560
    new-array v0, v7, [[B

    const/16 v1, 0x100

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v4

    new-array v2, v1, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    sput-object v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
        0x8t
    .end array-data

    :array_4
    .array-data 1
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
        0x5t
    .end array-data

    :array_6
    .array-data 1
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x5t
        0x1t
        0x8t
        0x6t
        0x7t
        0x4t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        -0x58t
        0x43t
        0x5ft
        0x6t
        0x6bt
        0x75t
        0x6ct
        0x59t
        0x71t
        -0x21t
        -0x79t
        -0x6bt
        0x17t
        -0x10t
        -0x28t
        0x9t
        0x6dt
        -0xdt
        0x1dt
        -0x35t
        -0x37t
        0x4dt
        0x2ct
        -0x51t
        0x79t
        -0x20t
        -0x69t
        -0x3t
        0x6ft
        0x4bt
        0x45t
        0x39t
        0x3et
        -0x23t
        -0x5dt
        0x4ft
        -0x4ct
        -0x4at
        -0x66t
        0xet
        0x1ft
        -0x41t
        0x15t
        -0x1ft
        0x49t
        -0x2et
        -0x6dt
        -0x3at
        -0x6et
        0x72t
        -0x62t
        0x61t
        -0x2ft
        0x63t
        -0x6t
        -0x12t
        -0xct
        0x19t
        -0x2bt
        -0x53t
        0x58t
        -0x5ct
        -0x45t
        -0x5ft
        -0x24t
        -0xet
        -0x7dt
        0x37t
        0x42t
        -0x1ct
        0x7at
        0x32t
        -0x64t
        -0x34t
        -0x55t
        0x4at
        -0x71t
        0x6et
        0x4t
        0x27t
        0x2et
        -0x19t
        -0x1et
        0x5at
        -0x6at
        0x16t
        0x23t
        0x2bt
        -0x3et
        0x65t
        0x66t
        0xft
        -0x44t
        -0x57t
        0x47t
        0x41t
        0x34t
        0x48t
        -0x4t
        -0x49t
        0x6at
        -0x78t
        -0x5bt
        0x53t
        -0x7at
        -0x7t
        0x5bt
        -0x25t
        0x38t
        0x7bt
        -0x3dt
        0x1et
        0x22t
        0x33t
        0x24t
        0x28t
        0x36t
        -0x39t
        -0x4et
        0x3bt
        -0x72t
        0x77t
        -0x46t
        -0xbt
        0x14t
        -0x61t
        0x8t
        0x55t
        -0x65t
        0x4ct
        -0x2t
        0x60t
        0x5ct
        -0x26t
        0x18t
        0x46t
        -0x33t
        0x7dt
        0x21t
        -0x50t
        0x3ft
        0x1bt
        -0x77t
        -0x1t
        -0x15t
        -0x7ct
        0x69t
        0x3at
        -0x63t
        -0x29t
        -0x2dt
        0x70t
        0x67t
        0x40t
        -0x4bt
        -0x22t
        0x5dt
        0x30t
        -0x6ft
        -0x4ft
        0x78t
        0x11t
        0x1t
        -0x1bt
        0x0t
        0x68t
        -0x68t
        -0x60t
        -0x3bt
        0x2t
        -0x5at
        0x74t
        0x2dt
        0xbt
        -0x5et
        0x76t
        -0x4dt
        -0x42t
        -0x32t
        -0x43t
        -0x52t
        -0x17t
        -0x76t
        0x31t
        0x1ct
        -0x14t
        -0xft
        -0x67t
        -0x6ct
        -0x56t
        -0xat
        0x26t
        0x2ft
        -0x11t
        -0x18t
        -0x74t
        0x35t
        0x3t
        -0x2ct
        0x7ft
        -0x5t
        0x5t
        -0x3ft
        0x5et
        -0x70t
        0x20t
        0x3dt
        -0x7et
        -0x9t
        -0x16t
        0xat
        0xdt
        0x7et
        -0x8t
        0x50t
        0x1at
        -0x3ct
        0x7t
        0x57t
        -0x48t
        0x3ct
        0x62t
        -0x1dt
        -0x38t
        -0x54t
        0x52t
        0x64t
        0x10t
        -0x30t
        -0x27t
        0x13t
        0xct
        0x12t
        0x29t
        0x51t
        -0x47t
        -0x31t
        -0x2at
        0x73t
        -0x73t
        -0x7ft
        0x54t
        -0x40t
        -0x13t
        0x4et
        0x44t
        -0x59t
        0x2at
        -0x7bt
        0x25t
        -0x1at
        -0x36t
        0x7ct
        -0x75t
        0x56t
        -0x80t
    .end array-data

    :array_9
    .array-data 1
        -0x32t
        -0x45t
        -0x15t
        -0x6et
        -0x16t
        -0x35t
        0x13t
        -0x3ft
        -0x17t
        0x3at
        -0x2at
        -0x4et
        -0x2et
        -0x70t
        0x17t
        -0x8t
        0x42t
        0x15t
        0x56t
        -0x4ct
        0x65t
        0x1ct
        -0x78t
        0x43t
        -0x3bt
        0x5ct
        0x36t
        -0x46t
        -0xbt
        0x57t
        0x67t
        -0x73t
        0x31t
        -0xat
        0x64t
        0x58t
        -0x62t
        -0xct
        0x22t
        -0x56t
        0x75t
        0xft
        0x2t
        -0x4ft
        -0x21t
        0x6dt
        0x73t
        0x4dt
        0x7ct
        0x26t
        0x2et
        -0x9t
        0x8t
        0x5dt
        0x44t
        0x3et
        -0x61t
        0x14t
        -0x38t
        -0x52t
        0x54t
        0x10t
        -0x28t
        -0x44t
        0x1at
        0x6bt
        0x69t
        -0xdt
        -0x43t
        0x33t
        -0x55t
        -0x6t
        -0x2ft
        -0x65t
        0x68t
        0x4et
        0x16t
        -0x6bt
        -0x6ft
        -0x12t
        0x4ct
        0x63t
        -0x72t
        0x5bt
        -0x34t
        0x3ct
        0x19t
        -0x5ft
        -0x7ft
        0x49t
        0x7bt
        -0x27t
        0x6ft
        0x37t
        0x60t
        -0x36t
        -0x19t
        0x2bt
        0x48t
        -0x3t
        -0x6at
        0x45t
        -0x4t
        0x41t
        0x12t
        0xdt
        0x79t
        -0x1bt
        -0x77t
        -0x74t
        -0x1dt
        0x20t
        0x30t
        -0x24t
        -0x49t
        0x6ct
        0x4at
        -0x4bt
        0x3ft
        -0x69t
        -0x2ct
        0x62t
        0x2dt
        0x6t
        -0x5ct
        -0x5bt
        -0x7dt
        0x5ft
        0x2at
        -0x26t
        -0x37t
        0x0t
        0x7et
        -0x5et
        0x55t
        -0x41t
        0x11t
        -0x2bt
        -0x64t
        -0x31t
        0xet
        0xat
        0x3dt
        0x51t
        0x7dt
        -0x6dt
        0x1bt
        -0x2t
        -0x3ct
        0x47t
        0x9t
        -0x7at
        0xbt
        -0x71t
        -0x63t
        0x6at
        0x7t
        -0x47t
        -0x50t
        -0x68t
        0x18t
        0x32t
        0x71t
        0x4bt
        -0x11t
        0x3bt
        0x70t
        -0x60t
        -0x1ct
        0x40t
        -0x1t
        -0x3dt
        -0x57t
        -0x1at
        0x78t
        -0x7t
        -0x75t
        0x46t
        -0x80t
        0x1et
        0x38t
        -0x1ft
        -0x48t
        -0x58t
        -0x20t
        0xct
        0x23t
        0x76t
        0x1dt
        0x25t
        0x24t
        0x5t
        -0xft
        0x6et
        -0x6ct
        0x28t
        -0x66t
        -0x7ct
        -0x18t
        -0x5dt
        0x4ft
        0x77t
        -0x2dt
        -0x7bt
        -0x1et
        0x52t
        -0xet
        -0x7et
        0x50t
        0x7at
        0x2ft
        0x74t
        0x53t
        -0x4dt
        0x61t
        -0x51t
        0x39t
        0x35t
        -0x22t
        -0x33t
        0x1ft
        -0x67t
        -0x54t
        -0x53t
        0x72t
        0x2ct
        -0x23t
        -0x30t
        -0x79t
        -0x42t
        0x5et
        -0x5at
        -0x14t
        0x4t
        -0x3at
        0x3t
        0x34t
        -0x5t
        -0x25t
        0x59t
        -0x4at
        -0x3et
        0x1t
        -0x10t
        0x5at
        -0x13t
        -0x59t
        0x66t
        0x21t
        0x7ft
        -0x76t
        0x27t
        -0x39t
        -0x40t
        0x29t
        -0x29t
    .end array-data

    :array_a
    .array-data 1
        -0x6dt
        -0x27t
        -0x66t
        -0x4bt
        -0x68t
        0x22t
        0x45t
        -0x4t
        -0x46t
        0x6at
        -0x21t
        0x2t
        -0x61t
        -0x24t
        0x51t
        0x59t
        0x4at
        0x17t
        0x2bt
        -0x3et
        -0x6ct
        -0xct
        -0x45t
        -0x5dt
        0x62t
        -0x1ct
        0x71t
        -0x2ct
        -0x33t
        0x70t
        0x16t
        -0x1ft
        0x49t
        0x3ct
        -0x40t
        -0x28t
        0x5ct
        -0x65t
        -0x53t
        -0x7bt
        0x53t
        -0x5ft
        0x7at
        -0x38t
        0x2dt
        -0x20t
        -0x2ft
        0x72t
        -0x5at
        0x2ct
        -0x3ct
        -0x1dt
        0x76t
        0x78t
        -0x49t
        -0x4ct
        0x9t
        0x3bt
        0xet
        0x41t
        0x4ct
        -0x22t
        -0x4et
        -0x70t
        0x25t
        -0x5bt
        -0x29t
        0x3t
        0x11t
        0x0t
        -0x3dt
        0x2et
        -0x6et
        -0x11t
        0x4et
        0x12t
        -0x63t
        0x7dt
        -0x35t
        0x35t
        0x10t
        -0x2bt
        0x4ft
        -0x62t
        0x4dt
        -0x57t
        0x55t
        -0x3at
        -0x30t
        0x7bt
        0x18t
        -0x69t
        -0x2dt
        0x36t
        -0x1at
        0x48t
        0x56t
        -0x7ft
        -0x71t
        0x77t
        -0x34t
        -0x64t
        -0x47t
        -0x1et
        -0x54t
        -0x48t
        0x2ft
        0x15t
        -0x5ct
        0x7ct
        -0x26t
        0x38t
        0x1et
        0xbt
        0x5t
        -0x2at
        0x14t
        0x6et
        0x6ct
        0x7et
        0x66t
        -0x3t
        -0x4ft
        -0x1bt
        0x60t
        -0x51t
        0x5et
        0x33t
        -0x79t
        -0x37t
        -0x10t
        0x5dt
        0x6dt
        0x3ft
        -0x78t
        -0x73t
        -0x39t
        -0x9t
        0x1dt
        -0x17t
        -0x14t
        -0x13t
        -0x80t
        0x29t
        0x27t
        -0x31t
        -0x67t
        -0x58t
        0x50t
        0xft
        0x37t
        0x24t
        0x28t
        0x30t
        -0x6bt
        -0x2et
        0x3et
        0x5bt
        0x40t
        -0x7dt
        -0x4dt
        0x69t
        0x57t
        0x1ft
        0x7t
        0x1ct
        -0x76t
        -0x44t
        0x20t
        -0x15t
        -0x32t
        -0x72t
        -0x55t
        -0x12t
        0x31t
        -0x5et
        0x73t
        -0x7t
        -0x36t
        0x3at
        0x1at
        -0x5t
        0xdt
        -0x3ft
        -0x2t
        -0x6t
        -0xet
        0x6ft
        -0x43t
        -0x6at
        -0x23t
        0x43t
        0x52t
        -0x4at
        0x8t
        -0xdt
        -0x52t
        -0x42t
        0x19t
        -0x77t
        0x32t
        0x26t
        -0x50t
        -0x16t
        0x4bt
        0x64t
        -0x7ct
        -0x7et
        0x6bt
        -0xbt
        0x79t
        -0x41t
        0x1t
        0x5ft
        0x75t
        0x63t
        0x1bt
        0x23t
        0x3dt
        0x68t
        0x2at
        0x65t
        -0x18t
        -0x6ft
        -0xat
        -0x1t
        0x13t
        0x58t
        -0xft
        0x47t
        0xat
        0x7ft
        -0x3bt
        -0x59t
        -0x19t
        0x61t
        0x5at
        0x6t
        0x46t
        0x44t
        0x42t
        0x4t
        -0x60t
        -0x25t
        0x39t
        -0x7at
        0x54t
        -0x56t
        -0x74t
        0x34t
        0x21t
        -0x75t
        -0x8t
        0xct
        0x74t
        0x67t
    .end array-data

    :array_b
    .array-data 1
        0x68t
        -0x73t
        -0x36t
        0x4dt
        0x73t
        0x4bt
        0x4et
        0x2at
        -0x2ct
        0x52t
        0x26t
        -0x4dt
        0x54t
        0x1et
        0x19t
        0x1ft
        0x22t
        0x3t
        0x46t
        0x3dt
        0x2dt
        0x4at
        0x53t
        -0x7dt
        0x13t
        -0x76t
        -0x49t
        -0x2bt
        0x25t
        0x79t
        -0xbt
        -0x43t
        0x58t
        0x2ft
        0xdt
        0x2t
        -0x13t
        0x51t
        -0x62t
        0x11t
        -0xet
        0x3et
        0x55t
        0x5et
        -0x2ft
        0x16t
        0x3ct
        0x66t
        0x70t
        0x5dt
        -0xdt
        0x45t
        0x40t
        -0x34t
        -0x18t
        -0x6ct
        0x56t
        0x8t
        -0x32t
        0x1at
        0x3at
        -0x2et
        -0x1ft
        -0x21t
        -0x4bt
        0x38t
        0x6et
        0xet
        -0x1bt
        -0xct
        -0x7t
        -0x7at
        -0x17t
        0x4ft
        -0x2at
        -0x7bt
        0x23t
        -0x31t
        0x32t
        -0x67t
        0x31t
        0x14t
        -0x52t
        -0x12t
        -0x38t
        0x48t
        -0x2dt
        0x30t
        -0x5ft
        -0x6et
        0x41t
        -0x4ft
        0x18t
        -0x3ct
        0x2ct
        0x71t
        0x72t
        0x44t
        0x15t
        -0x3t
        0x37t
        -0x42t
        0x5ft
        -0x56t
        -0x65t
        -0x78t
        -0x28t
        -0x55t
        -0x77t
        -0x64t
        -0x6t
        0x60t
        -0x16t
        -0x44t
        0x62t
        0xct
        0x24t
        -0x5at
        -0x58t
        -0x14t
        0x67t
        0x20t
        -0x25t
        0x7ct
        0x28t
        -0x23t
        -0x54t
        0x5bt
        0x34t
        0x7et
        0x10t
        -0xft
        0x7bt
        -0x71t
        0x63t
        -0x60t
        0x5t
        -0x66t
        0x43t
        0x77t
        0x21t
        -0x41t
        0x27t
        0x9t
        -0x3dt
        -0x61t
        -0x4at
        -0x29t
        0x29t
        -0x3et
        -0x15t
        -0x40t
        -0x5ct
        -0x75t
        -0x74t
        0x1dt
        -0x5t
        -0x1t
        -0x3ft
        -0x4et
        -0x69t
        0x2et
        -0x8t
        0x65t
        -0xat
        0x75t
        0x7t
        0x4t
        0x49t
        0x33t
        -0x1ct
        -0x27t
        -0x47t
        -0x30t
        0x42t
        -0x39t
        0x6ct
        -0x70t
        0x0t
        -0x72t
        0x6ft
        0x50t
        0x1t
        -0x3bt
        -0x26t
        0x47t
        0x3ft
        -0x33t
        0x69t
        -0x5et
        -0x1et
        0x7at
        -0x59t
        -0x3at
        -0x6dt
        0xft
        0xat
        0x6t
        -0x1at
        0x2bt
        -0x6at
        -0x5dt
        0x1ct
        -0x51t
        0x6at
        0x12t
        -0x7ct
        0x39t
        -0x19t
        -0x50t
        -0x7et
        -0x9t
        -0x2t
        -0x63t
        -0x79t
        0x5ct
        -0x7ft
        0x35t
        -0x22t
        -0x4ct
        -0x5bt
        -0x4t
        -0x80t
        -0x11t
        -0x35t
        -0x45t
        0x6bt
        0x76t
        -0x46t
        0x5at
        0x7dt
        0x78t
        0xbt
        -0x6bt
        -0x1dt
        -0x53t
        0x74t
        -0x68t
        0x3bt
        0x36t
        0x64t
        0x6dt
        -0x24t
        -0x10t
        0x59t
        -0x57t
        0x4ct
        0x17t
        0x7ft
        -0x6ft
        -0x48t
        -0x37t
        0x57t
        0x1bt
        -0x20t
        0x61t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v1, 0x180

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hash size is not recommended. Use 256/384/512 instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    :goto_0
    div-int/lit8 v1, p1, 0x8

    iput v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    const/16 v1, 0x10

    const/16 v2, 0x80

    const/16 v3, 0x8

    if-le p1, v0, :cond_2

    .line 99
    iput v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 100
    iput v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 p1, 0xe

    .line 101
    iput p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 102
    new-array p1, v2, [[B

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    goto :goto_1

    :cond_2
    const/16 p1, 0x40

    .line 106
    iput p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 107
    iput v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 v0, 0xa

    .line 108
    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 109
    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    :goto_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 111
    :goto_2
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 113
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    iget v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v5, v5, [B

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v0, v0, p1

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, p1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    .line 119
    new-array v0, v2, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    .line 120
    new-array v0, v2, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    .line 122
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_4

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    new-array v2, v3, [B

    aput-object v2, v0, p1

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    new-array v2, v3, [B

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 128
    :cond_4
    new-array p1, v1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    .line 129
    new-array p1, v3, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    .line 130
    iget p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    .line 131
    iget p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V

    return-void
.end method

.method private P()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 434
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v1, v2, :cond_b

    const/4 v2, 0x0

    .line 438
    :goto_1
    iget v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v3, :cond_0

    .line 441
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v3, v3, v2

    aget-byte v4, v3, v0

    mul-int/lit8 v5, v2, 0x10

    xor-int/2addr v5, v1

    int-to-byte v5, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 447
    :goto_3
    iget v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v4, :cond_1

    .line 449
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v4, v4, v3

    sget-object v5, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    rem-int/lit8 v6, v2, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v3

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    :goto_4
    const/4 v5, 0x7

    if-ge v2, v3, :cond_6

    if-ne v2, v5, :cond_3

    .line 456
    iget v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_3

    const/16 v4, 0xb

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :goto_5
    const/4 v5, 0x0

    .line 465
    :goto_6
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v5, v6, :cond_4

    .line 467
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    add-int v7, v5, v4

    iget v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    rem-int/2addr v7, v8

    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v8, v8, v5

    aget-byte v8, v8, v2

    aput-byte v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    .line 469
    :goto_7
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v5, v6, :cond_5

    .line 471
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 478
    :goto_8
    iget v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v4, :cond_a

    .line 481
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    const/4 v4, 0x7

    :goto_9
    if-ltz v4, :cond_8

    const/4 v6, 0x7

    const/4 v7, 0x0

    :goto_a
    if-ltz v6, :cond_7

    .line 488
    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v8, v8, v2

    aget-byte v8, v8, v6

    sget-object v9, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    aget-object v9, v9, v4

    aget-byte v9, v9, v6

    invoke-direct {p0, v8, v9}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->multiplyGF(BB)B

    move-result v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 491
    :cond_7
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aput-byte v7, v6, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_8
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_9

    .line 495
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aget-byte v7, v7, v4

    aput-byte v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private Q()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 360
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v1, v2, :cond_b

    const/4 v2, 0x0

    .line 364
    :goto_1
    iget v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v3, :cond_0

    .line 366
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v4, v4, v2

    invoke-static {v4, v0}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 368
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    aget-wide v4, v3, v2

    const-wide v6, 0xf0f0f0f0f0f0f3L    # 3.860005775059271E-304

    iget v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    sub-int/2addr v8, v2

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    const-wide/16 v10, 0x10

    mul-long v8, v8, v10

    int-to-long v10, v1

    xor-long/2addr v8, v10

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    add-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 370
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    aget-wide v4, v3, v2

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v3, v3, v2

    invoke-static {v4, v5, v3, v0}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 376
    :goto_3
    iget v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v4, :cond_1

    .line 378
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v4, v4, v3

    sget-object v5, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    rem-int/lit8 v6, v2, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v6, v6, v3

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    :goto_4
    const/4 v5, 0x7

    if-ge v2, v3, :cond_6

    if-ne v2, v5, :cond_3

    .line 386
    iget v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_3

    const/16 v4, 0xb

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :goto_5
    const/4 v5, 0x0

    .line 395
    :goto_6
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v5, v6, :cond_4

    .line 397
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    add-int v7, v5, v4

    iget v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    rem-int/2addr v7, v8

    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v8, v8, v5

    aget-byte v8, v8, v2

    aput-byte v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    .line 399
    :goto_7
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v5, v6, :cond_5

    .line 401
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 408
    :goto_8
    iget v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v4, :cond_a

    .line 411
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    const/4 v4, 0x7

    :goto_9
    if-ltz v4, :cond_8

    const/4 v6, 0x7

    const/4 v7, 0x0

    :goto_a
    if-ltz v6, :cond_7

    .line 418
    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v8, v8, v2

    aget-byte v8, v8, v6

    sget-object v9, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    aget-object v9, v9, v4

    aget-byte v9, v9, v6

    invoke-direct {p0, v8, v9}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->multiplyGF(BB)B

    move-result v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 421
    :cond_7
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aput-byte v7, v6, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_8
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_9

    .line 425
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aget-byte v7, v7, v4

    aput-byte v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V
    .locals 2

    .line 64
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    .line 65
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    .line 67
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    .line 68
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    .line 70
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    .line 71
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    .line 73
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    .line 74
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    .line 76
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    .line 77
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    .line 79
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempLongBuffer:[J

    .line 81
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    .line 82
    iget v0, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 83
    iget-object p1, p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    return-void
.end method

.method private multiplyGF(BB)B
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    const/4 p1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    xor-int/2addr p1, v1

    int-to-byte p1, p1

    :cond_0
    and-int/lit8 v2, v1, -0x80

    int-to-byte v2, v2

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    const/16 v3, -0x80

    if-ne v2, v3, :cond_1

    xor-int/lit16 v1, v1, 0x11d

    int-to-byte v1, v1

    :cond_1
    shr-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private pad([BII)[B
    .locals 3

    .line 530
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    sub-int/2addr v0, p3

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 532
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_0

    .line 536
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    .line 539
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, -0x80

    .line 541
    aput-byte p1, v0, p3

    .line 543
    iget-wide p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    const-wide/16 v1, 0x8

    mul-long p1, p1, v1

    array-length p3, v0

    add-int/lit8 p3, p3, -0xc

    invoke-static {p1, p2, v0, p3}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-object v0
.end method

.method private processBlock([BI)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 331
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 333
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v2, v2, v1

    invoke-static {v2, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 334
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v2, v2, v1

    invoke-static {v2, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 339
    :goto_2
    iget v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v3, :cond_1

    .line 341
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v4, v4, v2

    aget-byte v4, v4, v1

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v1

    add-int/2addr v5, p2

    aget-byte v6, p1, v5

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 342
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v3, v3, v2

    aget-byte v4, p1, v5

    aput-byte v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    :cond_2
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->P()V

    .line 347
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->Q()V

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v2, :cond_4

    const/4 p2, 0x0

    .line 351
    :goto_4
    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge p2, v1, :cond_3

    .line 353
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v1, v1, p2

    aget-byte v3, v1, p1

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState1:[[B

    aget-object v4, v4, p2

    aget-byte v4, v4, p1

    iget-object v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempState2:[[B

    aget-object v5, v5, p2

    aget-byte v5, v5, p1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 638
    new-instance v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;-><init>(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 11

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->pad([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 195
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    invoke-direct {p0, v3, v1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 196
    iget v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/2addr v1, v3

    .line 197
    iget v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    .line 200
    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 202
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v3, v3

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    .line 205
    new-array v3, v4, [B

    aput-object v3, v0, v1

    .line 213
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v3, v3, v1

    aget-object v5, v0, v1

    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 216
    :goto_2
    iget v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v1, v3, :cond_d

    const/4 v3, 0x0

    .line 220
    :goto_3
    iget v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v5, :cond_2

    .line 222
    aget-object v5, v0, v3

    aget-byte v6, v5, v2

    mul-int/lit8 v7, v3, 0x10

    xor-int/2addr v7, v1

    int-to-byte v7, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_4

    const/4 v5, 0x0

    .line 228
    :goto_5
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v5, v6, :cond_3

    .line 230
    aget-object v6, v0, v5

    sget-object v7, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->sBoxes:[[B

    rem-int/lit8 v8, v3, 0x4

    aget-object v7, v7, v8

    aget-object v8, v0, v5

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_6
    const/4 v6, 0x7

    if-ge v3, v4, :cond_8

    if-ne v3, v6, :cond_5

    .line 237
    iget v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5

    const/16 v5, 0xb

    goto :goto_7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :goto_7
    const/4 v6, 0x0

    .line 246
    :goto_8
    iget v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v6, v7, :cond_6

    .line 248
    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    add-int v8, v6, v5

    iget v9, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    rem-int/2addr v8, v9

    aget-object v9, v0, v6

    aget-byte v9, v9, v3

    aput-byte v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_6
    const/4 v6, 0x0

    .line 250
    :goto_9
    iget v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v6, v7, :cond_7

    .line 252
    aget-object v7, v0, v6

    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->tempBuffer:[B

    aget-byte v8, v8, v6

    aput-byte v8, v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    .line 259
    :goto_a
    iget v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v5, :cond_c

    .line 262
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    invoke-static {v5, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    const/4 v5, 0x7

    :goto_b
    if-ltz v5, :cond_a

    const/4 v7, 0x7

    const/4 v8, 0x0

    :goto_c
    if-ltz v7, :cond_9

    .line 269
    aget-object v9, v0, v3

    aget-byte v9, v9, v7

    sget-object v10, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mds_matrix:[[B

    aget-object v10, v10, v5

    aget-byte v10, v10, v7

    invoke-direct {p0, v9, v10}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->multiplyGF(BB)B

    move-result v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .line 272
    :cond_9
    iget-object v7, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aput-byte v8, v7, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_a
    const/4 v5, 0x0

    :goto_d
    if-ge v5, v4, :cond_b

    .line 276
    aget-object v7, v0, v3

    iget-object v8, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->mixColumnsResult:[B

    aget-byte v8, v8, v5

    aput-byte v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v4, :cond_f

    const/4 v3, 0x0

    .line 283
    :goto_f
    iget v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v5, :cond_e

    .line 285
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v5, v5, v3

    aget-byte v6, v5, v1

    aget-object v7, v0, v3

    aget-byte v7, v7, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 289
    :cond_f
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 292
    :goto_10
    iget v5, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v1, v5, :cond_11

    move v5, v3

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v4, :cond_10

    .line 297
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v6, v6, v1

    aget-byte v6, v6, v3

    aput-byte v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_10

    .line 302
    :cond_11
    array-length v1, v0

    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->reset()V

    .line 306
    iget p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DSTU7564"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return v0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 311
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 313
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    iget v3, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v3, v3, [B

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->state:[[B

    array-length v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const-wide/16 v1, 0x0

    .line 318
    iput-wide v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    .line 319
    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 321
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 323
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->padded:[B

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    :cond_1
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 0

    .line 643
    check-cast p1, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    .line 645
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/spongycastle/crypto/digests/DSTU7564Digest;)V

    return-void
.end method

.method public update(B)V
    .locals 4

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte p1, v0, v1

    .line 152
    iget p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-ne p1, v0, :cond_0

    .line 154
    iget-object p1, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->buf:[B

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 155
    iput v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    .line 157
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    return-void
.end method

.method public update([BII)V
    .locals 4

    .line 162
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 164
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update(B)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_2

    .line 170
    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-le p3, v0, :cond_1

    .line 172
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    .line 173
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/2addr p2, v0

    .line 174
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    iget v2, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->inputLength:J

    .line 175
    iget v0, p0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 180
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update(B)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_2

    :cond_2
    return-void
.end method
