.class public final Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorBitmapDecoder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/ResourceDecoder<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;->downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;

    return-void
.end method


# virtual methods
.method public decode(Landroid/os/ParcelFileDescriptor;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II",
            "Lcom/netease/ntunisdk/glide/load/Options;",
            ")",
            "Lcom/netease/ntunisdk/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;->downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->decode(Landroid/os/ParcelFileDescriptor;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

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

    .line 16
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;->decode(Landroid/os/ParcelFileDescriptor;IILcom/netease/ntunisdk/glide/load/Options;)Lcom/netease/ntunisdk/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Landroid/os/ParcelFileDescriptor;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0

    .line 28
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;->downsampler:Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/Downsampler;->handles(Landroid/os/ParcelFileDescriptor;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/netease/ntunisdk/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;->handles(Landroid/os/ParcelFileDescriptor;Lcom/netease/ntunisdk/glide/load/Options;)Z

    move-result p1

    return p1
.end method
