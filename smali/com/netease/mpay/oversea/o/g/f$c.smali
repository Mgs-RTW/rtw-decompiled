.class Lcom/netease/mpay/oversea/o/g/f$c;
.super Ljava/lang/Object;
.source "SimpleDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/o/g/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f$c;->a:Lcom/netease/mpay/oversea/o/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/f$c;->a:Lcom/netease/mpay/oversea/o/g/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/f;->e(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/a;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/o/g/e;

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/f$c;->a:Lcom/netease/mpay/oversea/o/g/f;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/f;->d(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/f$c;->a:Lcom/netease/mpay/oversea/o/g/f;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/f;->c(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/o/g/f$c;->a:Lcom/netease/mpay/oversea/o/g/f;

    invoke-static {v3}, Lcom/netease/mpay/oversea/o/g/f;->a(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/o/g/e;-><init>(Lcom/netease/mpay/oversea/o/g/b;Lcom/netease/mpay/oversea/o/g/b;Lcom/netease/mpay/oversea/o/g/b;)V

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/o/g/a;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
