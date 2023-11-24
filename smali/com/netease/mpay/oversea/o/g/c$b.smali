.class Lcom/netease/mpay/oversea/o/g/c$b;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/o/g/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/o/g/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$b;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/o/a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", country:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/netease/mpay/oversea/o/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$b;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v0, p2}, Lcom/netease/mpay/oversea/o/g/c;->a(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/a;)Lcom/netease/mpay/oversea/o/a;

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/c$b;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/o/g/c;->a(Lcom/netease/mpay/oversea/o/g/c;I)I

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$b;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->r(Lcom/netease/mpay/oversea/o/g/c;)V

    return-void
.end method
