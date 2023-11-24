.class Lcom/netease/mpay/oversea/n/l/g$h;
.super Ljava/lang/Object;
.source "PassportLoginHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/t/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/t/d/b;

.field final synthetic b:Lcom/netease/mpay/oversea/n/l/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$h;->b:Lcom/netease/mpay/oversea/n/l/g;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/g$h;->a:Lcom/netease/mpay/oversea/t/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$h;->b:Lcom/netease/mpay/oversea/n/l/g;

    iget-object p2, p0, Lcom/netease/mpay/oversea/n/l/g$h;->a:Lcom/netease/mpay/oversea/t/d/b;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/n/l/g;->b(Lcom/netease/mpay/oversea/n/l/g;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$h;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->c(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/n/l/g;->b(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/n/l/g$h;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p2}, Lcom/netease/mpay/oversea/n/l/g;->g(Lcom/netease/mpay/oversea/n/l/g;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "remember_account_list_confirm"

    const-string v1, "remember_account_list_confirm_yes"

    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
