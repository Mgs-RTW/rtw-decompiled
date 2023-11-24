.class Lcom/netease/mpay/oversea/thirdapi/d$c;
.super Ljava/lang/Object;
.source "ApiImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/d;->e()Lcom/netease/mpay/oversea/thirdapi/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/c/g;->a(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceSpecLoginStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "cancel"

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceSpecLoginDone(Ljava/lang/String;Ljava/lang/String;II)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->b:Lcom/netease/mpay/oversea/thirdapi/e;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/g$a;->b:Lcom/netease/mpay/oversea/thirdapi/g$a;

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/d;->b:Lcom/netease/mpay/oversea/thirdapi/e;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Lcom/netease/mpay/oversea/thirdapi/g;Lcom/netease/mpay/oversea/thirdapi/e;)V

    :cond_1
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceSpecLoginDone(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, p2}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, p2}, Lcom/netease/mpay/oversea/trackers/b;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 17
    :goto_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object p2, p2, Lcom/netease/mpay/oversea/thirdapi/d;->b:Lcom/netease/mpay/oversea/thirdapi/e;

    if-eqz p2, :cond_2

    .line 18
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/g$a;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/d;->b:Lcom/netease/mpay/oversea/thirdapi/e;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Lcom/netease/mpay/oversea/thirdapi/g;Lcom/netease/mpay/oversea/thirdapi/e;)V

    :cond_2
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
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
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/c/g;->a(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/d;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceSpecLoginDone(Ljava/lang/String;Ljava/lang/String;II)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d$c;->a:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->b:Lcom/netease/mpay/oversea/thirdapi/e;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1, p2, p3, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/thirdapi/e;)V

    :cond_1
    return-void
.end method
