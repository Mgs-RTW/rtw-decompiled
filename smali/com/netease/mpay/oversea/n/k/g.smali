.class public abstract Lcom/netease/mpay/oversea/n/k/g;
.super Ljava/lang/Object;
.source "ServerApiWithLoginCallback.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "TData;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/oversea/n/h;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/n/k/g;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/n/k/g;->c:Lcom/netease/mpay/oversea/n/h;

    return-void
.end method

.method private a()V
    .locals 15

    .line 26
    new-instance v6, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/g;->b:Ljava/lang/String;

    sget-object v7, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v13, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/oversea/n/k/g$b;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/n/k/g$b;-><init>(Lcom/netease/mpay/oversea/n/k/g;)V

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 58
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/k/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/k/g;->a()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/k/g;)Lcom/netease/mpay/oversea/n/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/k/g;->c:Lcom/netease/mpay/oversea/n/h;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/e;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/n/k/g$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/n/k/g$a;-><init>(Lcom/netease/mpay/oversea/n/k/g;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/e;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/n/k/g;->a(Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/e;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/n/k/g;->b(Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/n/k/g;->b(ILcom/netease/mpay/oversea/h/c;)V

    :goto_0
    return-void
.end method

.method public abstract a(Lcom/netease/mpay/oversea/h/c;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
.end method

.method public abstract b(ILcom/netease/mpay/oversea/h/c;)V
.end method

.method public abstract b(Lcom/netease/mpay/oversea/h/c;)V
.end method
