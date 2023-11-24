.class public Lcom/netease/mpay/oversea/ui/h$g;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/oversea/ui/h$o;

.field public b:Lcom/netease/mpay/oversea/n/h;

.field public c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h$g;-><init>(Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/netease/mpay/oversea/ui/h$o;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    return-void
.end method
