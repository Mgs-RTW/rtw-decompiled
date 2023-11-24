.class Lcom/netease/mpay/oversea/ui/h$b;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/h;->b(ZLcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netease/mpay/oversea/ui/h$k;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/e;

.field final synthetic e:Lcom/netease/mpay/oversea/ui/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h;ZLcom/netease/mpay/oversea/ui/h$k;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$b;->e:Lcom/netease/mpay/oversea/ui/h;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/h$b;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/h$b;->b:Lcom/netease/mpay/oversea/ui/h$k;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/h$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/h$b;->d:Lcom/netease/mpay/oversea/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/h$b;->a:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$b;->b:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$b;->b:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$b;->c:Ljava/lang/String;

    const/16 v2, 0x2713

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    .line 5
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$b;->e:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 6
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$b;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$b;->d:Lcom/netease/mpay/oversea/e;

    const/16 v1, 0x66

    invoke-static {p2, p1, v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$b;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$b;->b:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$b;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$b;->b:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$b;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$b;->b:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$b;->d:Lcom/netease/mpay/oversea/e;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method
