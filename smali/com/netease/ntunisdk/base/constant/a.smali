.class public final enum Lcom/netease/ntunisdk/base/constant/a;
.super Ljava/lang/Enum;
.source "CommonCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/base/constant/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum b:Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum c:Lcom/netease/ntunisdk/base/constant/a;

.field private static final synthetic e:[Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum f:Lcom/netease/ntunisdk/base/constant/a;

.field public static final enum g:Lcom/netease/ntunisdk/base/constant/a;


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/netease/ntunisdk/base/constant/a;

    const-string v1, "Suc"

    const-string v2, "suc"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    .line 5
    new-instance v0, Lcom/netease/ntunisdk/base/constant/a;

    const-string v1, "Fail"

    const-string v2, "fail"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    .line 6
    new-instance v0, Lcom/netease/ntunisdk/base/constant/a;

    const-string v1, "Cancel"

    const-string v2, "cancel"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/a;->c:Lcom/netease/ntunisdk/base/constant/a;

    .line 7
    new-instance v0, Lcom/netease/ntunisdk/base/constant/a;

    const-string v1, "Checking"

    const-string v2, "checking"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/a;->f:Lcom/netease/ntunisdk/base/constant/a;

    .line 8
    new-instance v0, Lcom/netease/ntunisdk/base/constant/a;

    const-string v1, "NeedRelogin"

    const-string v2, "needRelogin"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/netease/ntunisdk/base/constant/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/a;->g:Lcom/netease/ntunisdk/base/constant/a;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/netease/ntunisdk/base/constant/a;

    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->c:Lcom/netease/ntunisdk/base/constant/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->f:Lcom/netease/ntunisdk/base/constant/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->g:Lcom/netease/ntunisdk/base/constant/a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netease/ntunisdk/base/constant/a;->e:[Lcom/netease/ntunisdk/base/constant/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/base/constant/a;
    .locals 1

    .line 3
    const-class v0, Lcom/netease/ntunisdk/base/constant/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/constant/a;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/base/constant/a;
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/ntunisdk/base/constant/a;->e:[Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/base/constant/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/base/constant/a;

    return-object v0
.end method
