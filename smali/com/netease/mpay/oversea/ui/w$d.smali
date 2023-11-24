.class Lcom/netease/mpay/oversea/ui/w$d;
.super Ljava/lang/Object;
.source "WebViewLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/n/i/b/d;Lcom/netease/mpay/oversea/t/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/t/c/c;

.field final synthetic b:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/w;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/c;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w$d;->c:Lcom/netease/mpay/oversea/ui/w;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/w$d;->a:Lcom/netease/mpay/oversea/t/c/c;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/w$d;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$d;->c:Lcom/netease/mpay/oversea/ui/w;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$d;->a:Lcom/netease/mpay/oversea/t/c/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/w$d;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$d;->c:Lcom/netease/mpay/oversea/ui/w;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
