.class Lcom/netease/mpay/oversea/ui/k$e;
.super Ljava/lang/Object;
.source "GuestLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/k;->c(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/c;

.field final synthetic b:Lcom/netease/mpay/oversea/n/h;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/k;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/k$e;->c:Lcom/netease/mpay/oversea/ui/k;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/k$e;->a:Lcom/netease/mpay/oversea/h/c;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/k$e;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$e;->a:Lcom/netease/mpay/oversea/h/c;

    sget-object p2, Lcom/netease/mpay/oversea/h/a;->a:Lcom/netease/mpay/oversea/h/a;

    iput-object p2, p1, Lcom/netease/mpay/oversea/h/c;->d:Lcom/netease/mpay/oversea/h/a;

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$e;->c:Lcom/netease/mpay/oversea/ui/k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$e;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p2, v0}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$e;->c:Lcom/netease/mpay/oversea/ui/k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
