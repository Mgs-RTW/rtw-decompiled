.class public Lcom/netease/mpay/oversea/ui/h$h;
.super Lcom/netease/mpay/oversea/ui/h$j;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private f:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/n/h;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    const/16 v1, 0x2713

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    const/16 v1, 0x66

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 6

    .line 2
    sget-object v2, Lcom/netease/mpay/oversea/ui/h$o;->a:Lcom/netease/mpay/oversea/ui/h$o;

    const/4 v1, 0x0

    const/16 v5, 0x66

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;I)V
    .locals 6

    .line 3
    sget-object v2, Lcom/netease/mpay/oversea/ui/h$o;->a:Lcom/netease/mpay/oversea/ui/h$o;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/ui/h$j;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    .line 5
    iput p5, p0, Lcom/netease/mpay/oversea/ui/h$h;->f:I

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/h$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/ui/h$h;->f:I

    return p0
.end method
