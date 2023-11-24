.class Lcom/netease/mpay/oversea/n/k/f$d;
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
.field final synthetic a:Lcom/netease/mpay/oversea/h/h;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/k/f;Lcom/netease/mpay/oversea/h/h;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/n/k/f$d;->a:Lcom/netease/mpay/oversea/h/h;

    iput p3, p0, Lcom/netease/mpay/oversea/n/k/f$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$d;->a:Lcom/netease/mpay/oversea/h/h;

    iget p2, p0, Lcom/netease/mpay/oversea/n/k/f$d;->b:I

    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    const/16 v1, 0x2713

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/netease/mpay/oversea/h/h;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
