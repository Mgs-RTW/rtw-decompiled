.class public Lcom/netease/ntunisdk/cutout/RespUtil;
.super Ljava/lang/Object;
.source "RespUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/cutout/RespUtil$RespCode;,
        Lcom/netease/ntunisdk/cutout/RespUtil$UniSdkField;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseRespCode(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e7

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :cond_1
    const-string p0, "\u65b9\u6cd5\u4e0d\u5b58\u5728"

    goto :goto_0

    :cond_2
    const-string p0, "success"

    :goto_0
    return-object p0
.end method
