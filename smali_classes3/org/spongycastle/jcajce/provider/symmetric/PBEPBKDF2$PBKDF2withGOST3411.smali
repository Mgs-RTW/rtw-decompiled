.class public Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2withGOST3411;
.super Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.source "PBEPBKDF2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBKDF2withGOST3411"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "PBKDF2"

    const/4 v1, 0x5

    const/4 v2, 0x6

    .line 279
    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method
