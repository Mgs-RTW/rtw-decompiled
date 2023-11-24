.class Lcom/netease/mpay/oversea/ui/i$b;
.super Ljava/lang/Object;
.source "GoogleLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/h/c;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->a:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->a:Lcom/netease/mpay/oversea/h/c;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    iget v0, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
