.class Lcom/netease/mpay/oversea/s/c/g$h$a;
.super Ljava/lang/Object;
.source "SecuritySetPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/g$h;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic c:Lcom/netease/mpay/oversea/s/c/g$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/g$h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/g$h$a;->c:Lcom/netease/mpay/oversea/s/c/g$h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/g$h$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/s/c/g$h$a;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/g$h$a;->c:Lcom/netease/mpay/oversea/s/c/g$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/g;->d(Lcom/netease/mpay/oversea/s/c/g;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$k;

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/c/g$h$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/g$h$a;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {p2, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/g$h$a;->c:Lcom/netease/mpay/oversea/s/c/g$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/g$h;->a:Lcom/netease/mpay/oversea/s/c/g;

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/g;->c(Lcom/netease/mpay/oversea/s/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
