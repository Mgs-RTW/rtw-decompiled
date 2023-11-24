.class Lcom/netease/mpay/oversea/ui/k$g;
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

.field final synthetic b:Lcom/netease/mpay/oversea/t/c/g;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/k;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/k$g;->c:Lcom/netease/mpay/oversea/ui/k;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/k$g;->a:Lcom/netease/mpay/oversea/h/c;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/k$g;->b:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$g;->a:Lcom/netease/mpay/oversea/h/c;

    sget-object p2, Lcom/netease/mpay/oversea/h/a;->a:Lcom/netease/mpay/oversea/h/a;

    iput-object p2, p1, Lcom/netease/mpay/oversea/h/c;->d:Lcom/netease/mpay/oversea/h/a;

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$g;->c:Lcom/netease/mpay/oversea/ui/k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$g;->b:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/k$g;->c:Lcom/netease/mpay/oversea/ui/k;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/k$g;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p2, v0, v2, v1, v3}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$g;->c:Lcom/netease/mpay/oversea/ui/k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
