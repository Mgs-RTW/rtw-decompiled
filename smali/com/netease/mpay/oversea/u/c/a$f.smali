.class Lcom/netease/mpay/oversea/u/c/a$f;
.super Ljava/lang/Object;
.source "BindView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/a;->b(Lcom/netease/mpay/oversea/t/c/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/t/c/g;

.field final synthetic b:Lcom/netease/mpay/oversea/u/c/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/a;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/a$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/u/b/c;

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/a;->E(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    .line 2
    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/a;->G(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    iget-object v3, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/a;->G(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    iget-object v4, p2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/u/c/a$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    new-instance v6, Lcom/netease/mpay/oversea/u/c/a$f$a;

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    .line 3
    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/a;->H(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v7}, Lcom/netease/mpay/oversea/u/c/a;->I(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v6, p0, p2, v0, v7}, Lcom/netease/mpay/oversea/u/c/a$f$a;-><init>(Lcom/netease/mpay/oversea/u/c/a$f;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/u/b/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/k/g;)V

    .line 51
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method
