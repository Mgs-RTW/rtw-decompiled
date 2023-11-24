.class public final enum Lcom/netease/mpay/oversea/h/d$h;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/h/d$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/oversea/h/d$h;

.field public static final enum b:Lcom/netease/mpay/oversea/h/d$h;

.field public static final enum c:Lcom/netease/mpay/oversea/h/d$h;

.field private static final synthetic d:[Lcom/netease/mpay/oversea/h/d$h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/h/d$h;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/d$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/h/d$h;->a:Lcom/netease/mpay/oversea/h/d$h;

    .line 5
    new-instance v2, Lcom/netease/mpay/oversea/h/d$h;

    const/4 v3, 0x1

    const-string v4, "RUNNING"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/h/d$h;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/netease/mpay/oversea/h/d$h;->b:Lcom/netease/mpay/oversea/h/d$h;

    .line 9
    new-instance v4, Lcom/netease/mpay/oversea/h/d$h;

    const/4 v5, 0x2

    const-string v6, "FINISHED"

    invoke-direct {v4, v6, v5}, Lcom/netease/mpay/oversea/h/d$h;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/netease/mpay/oversea/h/d$h;->c:Lcom/netease/mpay/oversea/h/d$h;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/netease/mpay/oversea/h/d$h;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    .line 10
    sput-object v6, Lcom/netease/mpay/oversea/h/d$h;->d:[Lcom/netease/mpay/oversea/h/d$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/h/d$h;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/h/d$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/h/d$h;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/h/d$h;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/h/d$h;->d:[Lcom/netease/mpay/oversea/h/d$h;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/h/d$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/h/d$h;

    return-object v0
.end method
