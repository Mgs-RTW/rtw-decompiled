.class Lcom/netease/mpay/oversea/n/k/f$c;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/k/f;->b(ILcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/h/h;

.field final synthetic c:Lcom/netease/mpay/oversea/n/k/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/k/f;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$c;->c:Lcom/netease/mpay/oversea/n/k/f;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/k/f$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/n/k/f$c;->b:Lcom/netease/mpay/oversea/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$c;->c:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->h(Lcom/netease/mpay/oversea/n/k/f;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/f$c;->c:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/n/k/f;->m:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, v1, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/n/h;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/h;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/f$c;->a:Ljava/lang/String;

    new-instance v2, Lcom/netease/mpay/oversea/n/k/f$c$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/n/k/f$c$a;-><init>(Lcom/netease/mpay/oversea/n/k/f$c;)V

    const/4 v3, 0x1

    .line 29
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/e;->a(Z)Lcom/netease/mpay/oversea/e;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 30
    invoke-virtual {p2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/a;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method
