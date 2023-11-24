.class Lcom/netease/mpay/oversea/ui/h$c;
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
.field final synthetic a:Lcom/netease/mpay/oversea/ui/h$k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/e;

.field final synthetic d:Z

.field final synthetic e:Lcom/netease/mpay/oversea/ui/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$k;Ljava/lang/String;Lcom/netease/mpay/oversea/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/h$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/h$c;->c:Lcom/netease/mpay/oversea/e;

    iput-boolean p5, p0, Lcom/netease/mpay/oversea/ui/h$c;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h;->a:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$c;->b:Ljava/lang/String;

    :goto_1
    new-instance v2, Lcom/netease/mpay/oversea/ui/h$c$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/h$c$a;-><init>(Lcom/netease/mpay/oversea/ui/h$c;)V

    invoke-direct {p2, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    .line 39
    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/a;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method
