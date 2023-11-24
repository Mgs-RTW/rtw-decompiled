.class public Lcom/netease/mpay/oversea/ui/h$l;
.super Lcom/netease/mpay/oversea/ui/h$j;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/ui/h$o;->c:Lcom/netease/mpay/oversea/ui/h$o;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/netease/mpay/oversea/ui/h$j;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/ui/h$l;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/h$o;->c:Lcom/netease/mpay/oversea/ui/h$o;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/netease/mpay/oversea/ui/h$j;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
