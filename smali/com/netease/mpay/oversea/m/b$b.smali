.class Lcom/netease/mpay/oversea/m/b$b;
.super Ljava/lang/Object;
.source "LinkAccountService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/m/b;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/m/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/m/a;

.field final synthetic c:Lcom/netease/mpay/oversea/m/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m/b;Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/m/b$b;->c:Lcom/netease/mpay/oversea/m/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/m/b$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/m/b$b;->b:Lcom/netease/mpay/oversea/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/m/b$b;->c:Lcom/netease/mpay/oversea/m/b;

    iget-object p2, p0, Lcom/netease/mpay/oversea/m/b$b;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$b;->b:Lcom/netease/mpay/oversea/m/a;

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/m/b;->a(Lcom/netease/mpay/oversea/m/b;Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V

    return-void
.end method
