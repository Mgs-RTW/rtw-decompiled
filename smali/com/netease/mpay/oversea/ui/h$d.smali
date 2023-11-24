.class Lcom/netease/mpay/oversea/ui/h$d;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/h;->a(ZLcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/h$k;

.field final synthetic d:Lcom/netease/mpay/oversea/e;

.field final synthetic e:Lcom/netease/mpay/oversea/ui/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h;ZLjava/lang/String;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$d;->e:Lcom/netease/mpay/oversea/ui/h;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/h$d;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/h$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/h$d;->c:Lcom/netease/mpay/oversea/ui/h$k;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/h$d;->d:Lcom/netease/mpay/oversea/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/h$d;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$d;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$d;->c:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$d;->d:Lcom/netease/mpay/oversea/e;

    const/16 v2, 0x3e8

    invoke-static {p1, v2, p2, v0, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;ILjava/lang/String;Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$d;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$d;->c:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$d;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$d;->c:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$d;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/h$d;->c:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$d;->d:Lcom/netease/mpay/oversea/e;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method
