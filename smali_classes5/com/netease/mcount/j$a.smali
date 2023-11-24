.class Lcom/netease/mcount/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mcount/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/View;

.field final synthetic c:Lcom/netease/mcount/j;


# direct methods
.method public constructor <init>(Lcom/netease/mcount/j;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/j$a;->c:Lcom/netease/mcount/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mcount/j$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/netease/mcount/j$a;->b:Landroid/view/View;

    return-void
.end method
