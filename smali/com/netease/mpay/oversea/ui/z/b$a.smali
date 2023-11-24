.class public Lcom/netease/mpay/oversea/ui/z/b$a;
.super Ljava/lang/Object;
.source "ContentViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/oversea/ui/z/e;

.field private b:Lcom/netease/mpay/oversea/ui/z/c;

.field private c:Lcom/netease/mpay/oversea/p/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/p/b<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/p/b;)Lcom/netease/mpay/oversea/ui/z/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/p/b<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/netease/mpay/oversea/ui/z/b$a;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/b$a;->c:Lcom/netease/mpay/oversea/p/b;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/ui/z/c;)Lcom/netease/mpay/oversea/ui/z/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/b$a;->b:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/ui/z/e;)Lcom/netease/mpay/oversea/ui/z/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/b$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method public a(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/mpay/oversea/ui/z/b;
    .locals 4

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/ui/z/b;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/b$a;->b:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/b$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/b$a;->c:Lcom/netease/mpay/oversea/p/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/ui/z/b;->a(Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/p/b;)Lcom/netease/mpay/oversea/ui/z/b;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ui/z/b;->a(Lcom/netease/mpay/oversea/ui/z/b;Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method
