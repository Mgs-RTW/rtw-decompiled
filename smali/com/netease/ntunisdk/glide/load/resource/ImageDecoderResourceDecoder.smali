.class public abstract Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageDecoder"


# instance fields
.field final hardwareConfigState:Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder;->hardwareConfigState:Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    return-void
.end method


# virtual methods
.method protected abstract decode(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final decode(Landroid/graphics/ImageDecoder$Source;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/netease/ntunisdk/glide/load/DecodeFormat;

    .line 61
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;

    .line 62
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/netease/ntunisdk/glide/load/Option;

    .line 63
    invoke-virtual {p4, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/netease/ntunisdk/glide/load/Option;

    .line 64
    invoke-virtual {p4, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 65
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/netease/ntunisdk/glide/load/Option;

    invoke-virtual {p4, v0}, Lcom/netease/ntunisdk/glide/load/Options;->get(Lcom/netease/ntunisdk/glide/load/Option;)Ljava/lang/Object;

    move-result-object p4

    move-object v8, p4

    check-cast v8, Lcom/netease/ntunisdk/glide/load/PreferredColorSpace;

    .line 67
    new-instance p4, Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder$1;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder$1;-><init>(Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder;IIZLcom/netease/ntunisdk/glide/load/DecodeFormat;Lcom/netease/ntunisdk/glide/load/resource/bitmap/DownsampleStrategy;Lcom/netease/ntunisdk/glide/load/PreferredColorSpace;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public final handles(Landroid/graphics/ImageDecoder$Source;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/ImageDecoderResourceDecoder;->handles(Landroid/graphics/ImageDecoder$Source;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method
