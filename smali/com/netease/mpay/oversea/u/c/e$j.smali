.class Lcom/netease/mpay/oversea/u/c/e$j;
.super Ljava/lang/Object;
.source "SwitchView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/e;->a(Lcom/netease/mpay/oversea/t/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/e$j;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/e$j;->a:Lcom/netease/mpay/oversea/u/c/e;

    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/e;->m(Lcom/netease/mpay/oversea/u/c/e;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "delete_canceled"

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
