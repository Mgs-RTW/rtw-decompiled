.class public Lcom/netease/mpay/oversea/ui/m$g;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "g"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/oversea/ui/m;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$g;->a:Lcom/netease/mpay/oversea/ui/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/thirdapi/g;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/thirdapi/g;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/g$a;->b:Lcom/netease/mpay/oversea/thirdapi/g$a;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$g;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/m;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$g;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/thirdapi/g;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m$g;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-static {p3, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/ui/m;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m$g;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-static {p3, p2}, Lcom/netease/mpay/oversea/ui/m;->b(Lcom/netease/mpay/oversea/ui/m;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/m$g;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {p3, p1, p2}, Lcom/netease/mpay/oversea/ui/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
