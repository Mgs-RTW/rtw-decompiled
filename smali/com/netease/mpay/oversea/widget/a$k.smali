.class Lcom/netease/mpay/oversea/widget/a$k;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/h/a;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/netease/mpay/oversea/widget/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$k;->b:Lcom/netease/mpay/oversea/widget/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/a$k;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$k;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$k;->b:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$k;->b:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$k;->b:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/MessageBar;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/MessageBar;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/a$k;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/MessageBar;->a(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
