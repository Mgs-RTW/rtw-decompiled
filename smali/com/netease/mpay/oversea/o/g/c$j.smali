.class Lcom/netease/mpay/oversea/o/g/c$j;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/o/g/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$j;->b:Lcom/netease/mpay/oversea/o/g/c;

    iput-object p2, p0, Lcom/netease/mpay/oversea/o/g/c$j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string p2, "child_protection_confirm_confirm"

    const-string v0, "child_protection_confirm"

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$j;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/c;->k(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$j;->b:Lcom/netease/mpay/oversea/o/g/c;

    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/c$j;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/o/g/c;->a(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;)V

    return-void
.end method
