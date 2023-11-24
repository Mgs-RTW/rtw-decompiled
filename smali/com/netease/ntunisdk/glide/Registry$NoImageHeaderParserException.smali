.class public final Lcom/netease/ntunisdk/glide/Registry$NoImageHeaderParserException;
.super Lcom/netease/ntunisdk/glide/Registry$MissingComponentException;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/Registry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoImageHeaderParserException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Failed to find image header parser."

    .line 665
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/glide/Registry$MissingComponentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
