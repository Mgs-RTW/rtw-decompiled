.class public Lcom/netease/mpay/oversea/k/e$a;
.super Ljava/lang/Object;
.source "EventHub.java"

# interfaces
.implements Lcom/netease/mpay/oversea/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/oversea/k/e;

.field public b:Lcom/netease/mpay/oversea/k/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/k/g<",
            "Lcom/netease/mpay/oversea/k/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/k/e;Lcom/netease/mpay/oversea/k/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/k/e;",
            "Lcom/netease/mpay/oversea/k/g<",
            "Lcom/netease/mpay/oversea/k/j;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/k/e$a;->c:Z

    .line 6
    iput-object p1, p0, Lcom/netease/mpay/oversea/k/e$a;->a:Lcom/netease/mpay/oversea/k/e;

    .line 7
    iput-object p2, p0, Lcom/netease/mpay/oversea/k/e$a;->b:Lcom/netease/mpay/oversea/k/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/k/e;Lcom/netease/mpay/oversea/k/g;Lcom/netease/mpay/oversea/k/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/k/e$a;-><init>(Lcom/netease/mpay/oversea/k/e;Lcom/netease/mpay/oversea/k/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/k/e$a;->c:Z

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/k/e$a;->a:Lcom/netease/mpay/oversea/k/e;

    iget-object v1, p0, Lcom/netease/mpay/oversea/k/e$a;->b:Lcom/netease/mpay/oversea/k/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/k/e;->c(Lcom/netease/mpay/oversea/k/g;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/k/e$a;->b:Lcom/netease/mpay/oversea/k/g;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/k/g;->a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/k/j;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/k/e$a;->a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/k/e$a;->c:Z

    return v0
.end method

.method public c(Lcom/netease/mpay/oversea/k/c;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:send :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Invoker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    const-class v1, Lcom/netease/mpay/oversea/k/e$a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/k/e$a;->a:Lcom/netease/mpay/oversea/k/e;

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/oversea/k/e;->a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)V

    return-void
.end method
