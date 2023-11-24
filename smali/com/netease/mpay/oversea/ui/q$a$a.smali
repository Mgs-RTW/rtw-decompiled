.class Lcom/netease/mpay/oversea/ui/q$a$a;
.super Ljava/lang/Object;
.source "TokenLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/q$a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/q$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/q$a;Lcom/netease/mpay/oversea/n/i/b/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->a:Lcom/netease/mpay/oversea/n/i/b/d;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    new-instance p2, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/q;->a(Lcom/netease/mpay/oversea/ui/q;Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f;

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/q;->a(Lcom/netease/mpay/oversea/ui/q;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->a:Lcom/netease/mpay/oversea/n/i/b/d;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ui/q;->a(Lcom/netease/mpay/oversea/ui/q;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iput-object p2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->a:Lcom/netease/mpay/oversea/n/i/b/d;

    iget v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->p:I

    if-nez v0, :cond_1

    iget p2, p2, Lcom/netease/mpay/oversea/n/i/b/d;->j:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 10
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ui/q;->a(Lcom/netease/mpay/oversea/ui/q;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/e;->a(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->a:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$a$a;->c:Lcom/netease/mpay/oversea/ui/q$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/q$a;->a:Lcom/netease/mpay/oversea/ui/q;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 14
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
