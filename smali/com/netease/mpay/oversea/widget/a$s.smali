.class Lcom/netease/mpay/oversea/widget/a$s;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/a$s;->a:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/netease/mpay/oversea/widget/a$s;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/a$s;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$s;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/a$s;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/f;->c(I)V

    return-void
.end method
