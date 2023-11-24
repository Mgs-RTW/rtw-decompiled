.class Lcom/netease/mcount/listener/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/listener/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/netease/mcount/listener/e;


# direct methods
.method constructor <init>(Lcom/netease/mcount/listener/e;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/listener/e$1;->d:Lcom/netease/mcount/listener/e;

    iput-object p2, p0, Lcom/netease/mcount/listener/e$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mcount/listener/e$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mcount/listener/e$1;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mcount/listener/e$1;->d:Lcom/netease/mcount/listener/e;

    iget-object v1, p0, Lcom/netease/mcount/listener/e$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/listener/e$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mcount/listener/e$1;->c:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mcount/listener/e;->a(Lcom/netease/mcount/listener/e;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method
