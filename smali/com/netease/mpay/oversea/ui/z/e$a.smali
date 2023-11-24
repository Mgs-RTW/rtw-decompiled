.class Lcom/netease/mpay/oversea/ui/z/e$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/z/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e$a;->d:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/e$a;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/z/e;->m:Lcom/netease/mpay/oversea/ui/z/e$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/z/e$b;->a(Lcom/netease/mpay/oversea/ui/z/e;)V

    :cond_0
    return-void
.end method
