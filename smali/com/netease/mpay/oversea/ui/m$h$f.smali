.class Lcom/netease/mpay/oversea/ui/m$h$f;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$h;->a(ILcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/m$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h$f;->a:Lcom/netease/mpay/oversea/ui/m$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$h$f;->a:Lcom/netease/mpay/oversea/ui/m$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m$h;->b:Lcom/netease/mpay/oversea/ui/m;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/ui/m$h$f$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/m$h$f$a;-><init>(Lcom/netease/mpay/oversea/ui/m$h$f;)V

    invoke-virtual {p2, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
