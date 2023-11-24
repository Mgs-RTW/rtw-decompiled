.class Lcom/netease/mpay/oversea/h/i$c;
.super Lcom/netease/mpay/oversea/h/d;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/d<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/netease/mpay/oversea/h/e<",
        "TData;>;>;"
    }
.end annotation


# instance fields
.field final synthetic p:Lcom/netease/mpay/oversea/h/i;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/h/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i$c;->p:Lcom/netease/mpay/oversea/h/i;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/h/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/h/i;Lcom/netease/mpay/oversea/h/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/h/i$c;-><init>(Lcom/netease/mpay/oversea/h/i;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/netease/mpay/oversea/h/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/netease/mpay/oversea/h/e<",
            "TData;>;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/h/i$c;->p:Lcom/netease/mpay/oversea/h/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->e()Lcom/netease/mpay/oversea/h/e;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i$c;->a([Ljava/lang/Void;)Lcom/netease/mpay/oversea/h/e;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/netease/mpay/oversea/h/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/h/e<",
            "TData;>;)V"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/h/d;->c(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$c;->p:Lcom/netease/mpay/oversea/h/i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$c;->p:Lcom/netease/mpay/oversea/h/i;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->a()V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$c;->p:Lcom/netease/mpay/oversea/h/i;

    iget-object v1, v0, Lcom/netease/mpay/oversea/h/i;->e:Lcom/netease/mpay/oversea/h/h;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i$c;->a(Lcom/netease/mpay/oversea/h/e;)V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/mpay/oversea/h/d;->e()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$c;->p:Lcom/netease/mpay/oversea/h/i;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->i()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$c;->p:Lcom/netease/mpay/oversea/h/i;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->d()V

    return-void
.end method
