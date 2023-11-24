.class Lcom/netease/mpay/oversea/u/c/d$a$a;
.super Ljava/lang/Object;
.source "NewGuestView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/d$a;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/d$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/d$a$a;->a:Lcom/netease/mpay/oversea/u/c/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/d$a$a;->a:Lcom/netease/mpay/oversea/u/c/d$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/d;->a(Lcom/netease/mpay/oversea/u/c/d;)Lcom/netease/mpay/oversea/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/k/h;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    const/16 v4, 0x1b

    invoke-direct {v1, v4, v2, v3}, Lcom/netease/mpay/oversea/k/h;-><init>(ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/k/f;->c(Lcom/netease/mpay/oversea/k/c;)V

    return-void
.end method
