.class Lcom/netease/mpay/oversea/m/b$c;
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
.field final synthetic a:Lcom/netease/mpay/oversea/m/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m/b;Lcom/netease/mpay/oversea/m/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/m/b$c;->a:Lcom/netease/mpay/oversea/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/m/b$c;->a:Lcom/netease/mpay/oversea/m/a;

    sget p2, Lcom/netease/mpay/oversea/ErrorCode;->ERR_NOT_SUPPORT_LINK:I

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/netease/mpay/oversea/m/a;->onFailed(ILjava/lang/String;)V

    return-void
.end method
