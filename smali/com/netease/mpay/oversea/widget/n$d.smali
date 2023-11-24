.class Lcom/netease/mpay/oversea/widget/n$d;
.super Ljava/lang/Object;
.source "SecondConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/n;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/widget/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/n;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/n$d;->b:Lcom/netease/mpay/oversea/widget/n;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/n$d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/widget/n$d;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/n$d;->b:Lcom/netease/mpay/oversea/widget/n;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/n;->a(Lcom/netease/mpay/oversea/widget/n;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/n$d;->b:Lcom/netease/mpay/oversea/widget/n;

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/n;->c(Lcom/netease/mpay/oversea/widget/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
