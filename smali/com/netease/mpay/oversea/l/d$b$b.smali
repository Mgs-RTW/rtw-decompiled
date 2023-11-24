.class Lcom/netease/mpay/oversea/l/d$b$b;
.super Ljava/lang/Object;
.source "InitImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/l/d$b;->a(ILcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/oversea/h/c;

.field final synthetic c:Lcom/netease/mpay/oversea/l/d$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l/d$b;ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/l/d$b$b;->c:Lcom/netease/mpay/oversea/l/d$b;

    iput p2, p0, Lcom/netease/mpay/oversea/l/d$b$b;->a:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/l/d$b$b;->b:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/d$b$b;->c:Lcom/netease/mpay/oversea/l/d$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/d$b;->c:Lcom/netease/mpay/oversea/r/d$a;

    iget v1, p0, Lcom/netease/mpay/oversea/l/d$b$b;->a:I

    const/16 v2, 0x2714

    if-ne v2, v1, :cond_0

    const/16 v1, 0x3e9

    goto :goto_0

    :cond_0
    const/16 v1, 0x3ea

    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/l/d$b$b;->b:Lcom/netease/mpay/oversea/h/c;

    iget-object v2, v2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/r/d$a;->onFailure(ILjava/lang/String;)V

    return-void
.end method
