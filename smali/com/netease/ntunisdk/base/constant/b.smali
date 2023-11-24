.class public final enum Lcom/netease/ntunisdk/base/constant/b;
.super Ljava/lang/Enum;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/base/constant/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/ntunisdk/base/constant/b;

.field public static final enum b:Lcom/netease/ntunisdk/base/constant/b;

.field public static final enum c:Lcom/netease/ntunisdk/base/constant/b;

.field public static final enum d:Lcom/netease/ntunisdk/base/constant/b;

.field private static final synthetic g:[Lcom/netease/ntunisdk/base/constant/b;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/netease/ntunisdk/base/constant/b;

    const-string v1, "Logout"

    const-string v2, "logout"

    const-string v3, "FEATURE_HAS_LOGOUT"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/b;->a:Lcom/netease/ntunisdk/base/constant/b;

    .line 7
    new-instance v0, Lcom/netease/ntunisdk/base/constant/b;

    const-string v1, "Manager"

    const-string v2, "manager"

    const-string v3, "FEATURE_HAS_MANAGER"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/b;->b:Lcom/netease/ntunisdk/base/constant/b;

    .line 8
    new-instance v0, Lcom/netease/ntunisdk/base/constant/b;

    const-string v1, "Exit"

    const-string v2, "exit"

    const-string v3, "FEATURE_EXIT_VIEW"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/b;->c:Lcom/netease/ntunisdk/base/constant/b;

    .line 9
    new-instance v0, Lcom/netease/ntunisdk/base/constant/b;

    const-string v1, "Share"

    const-string v2, "share"

    const-string v3, "FEATURE_HAS_SHARE"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/netease/ntunisdk/base/constant/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/base/constant/b;->d:Lcom/netease/ntunisdk/base/constant/b;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/netease/ntunisdk/base/constant/b;

    sget-object v1, Lcom/netease/ntunisdk/base/constant/b;->a:Lcom/netease/ntunisdk/base/constant/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/base/constant/b;->b:Lcom/netease/ntunisdk/base/constant/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/ntunisdk/base/constant/b;->c:Lcom/netease/ntunisdk/base/constant/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/ntunisdk/base/constant/b;->d:Lcom/netease/ntunisdk/base/constant/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netease/ntunisdk/base/constant/b;->g:[Lcom/netease/ntunisdk/base/constant/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/netease/ntunisdk/base/constant/b;->e:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/netease/ntunisdk/base/constant/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/base/constant/b;
    .locals 1

    .line 5
    const-class v0, Lcom/netease/ntunisdk/base/constant/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/constant/b;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/base/constant/b;
    .locals 1

    .line 5
    sget-object v0, Lcom/netease/ntunisdk/base/constant/b;->g:[Lcom/netease/ntunisdk/base/constant/b;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/base/constant/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/base/constant/b;

    return-object v0
.end method
