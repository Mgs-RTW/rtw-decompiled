.class Lcom/netease/mpay/oversea/ui/m$e;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m;->b(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/c;

.field final synthetic b:Lcom/netease/mpay/oversea/n/h;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$e;->c:Lcom/netease/mpay/oversea/ui/m;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/m$e;->a:Lcom/netease/mpay/oversea/h/c;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/m$e;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$e;->a:Lcom/netease/mpay/oversea/h/c;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m$e;->c:Lcom/netease/mpay/oversea/ui/m;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m$e;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$e;->c:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
