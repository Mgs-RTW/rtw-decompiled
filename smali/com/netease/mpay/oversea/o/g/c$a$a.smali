.class Lcom/netease/mpay/oversea/o/g/c$a$a;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/o/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c$a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/o/g/a<",
        "Lcom/netease/mpay/oversea/o/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/o/g/c$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/o/g/e;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    iget-object v1, p1, Lcom/netease/mpay/oversea/o/g/e;->b:Lcom/netease/mpay/oversea/o/g/b;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/o/g/c;->c(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    iget-object v1, p1, Lcom/netease/mpay/oversea/o/g/e;->a:Lcom/netease/mpay/oversea/o/g/b;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/o/g/c;->b(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/o/g/e;->c:Lcom/netease/mpay/oversea/o/g/b;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/o/g/c;->a(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->w(Lcom/netease/mpay/oversea/o/g/c;)Z

    move-result p1

    const-string v0, "%s \u2014 %s \u2014 %s"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->q(Lcom/netease/mpay/oversea/o/g/c;)Landroid/widget/TextView;

    move-result-object p1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    .line 7
    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v4, v3

    iget-object v3, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v3, v3, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v3}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 8
    invoke-static {v5, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->q(Lcom/netease/mpay/oversea/o/g/c;)Landroid/widget/TextView;

    move-result-object p1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    .line 12
    invoke-static {v6}, Lcom/netease/mpay/oversea/o/g/c;->s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v6, v4, v3

    iget-object v3, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v3, v3, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v3}, Lcom/netease/mpay/oversea/o/g/c;->t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c$a$a;->a:Lcom/netease/mpay/oversea/o/g/c$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/g/c$a;->b:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/g/c;->u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 13
    invoke-static {v5, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/o/g/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/o/g/c$a$a;->a(Lcom/netease/mpay/oversea/o/g/e;)V

    return-void
.end method
