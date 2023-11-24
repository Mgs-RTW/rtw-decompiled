.class Lcom/netease/mpay/oversea/ui/y/f$b$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "PassportMoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/y/f$b;->a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/ui/y/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/y/f$a;

.field final synthetic e:Lcom/netease/mpay/oversea/ui/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/y/f$b;Lcom/netease/mpay/oversea/ui/y/f$a;Lcom/netease/mpay/oversea/ui/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/y/f$b$a;->d:Lcom/netease/mpay/oversea/ui/y/f$a;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/y/f$b$a;->e:Lcom/netease/mpay/oversea/ui/b;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/f$b$a;->d:Lcom/netease/mpay/oversea/ui/y/f$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/f$b$a;->e:Lcom/netease/mpay/oversea/ui/b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/y/f$a;->a(Lcom/netease/mpay/oversea/t/c/g;)V

    :cond_0
    return-void
.end method
