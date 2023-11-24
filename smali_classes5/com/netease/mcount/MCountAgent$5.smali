.class Lcom/netease/mcount/MCountAgent$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/MCountAgent;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netease/mcount/MCountAgent;


# direct methods
.method constructor <init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent$5;->b:Lcom/netease/mcount/MCountAgent;

    iput-object p2, p0, Lcom/netease/mcount/MCountAgent$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mcount/d/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mcount/h;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$5;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent$5;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v3}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mcount/MCountAgent$5;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v4}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mcount/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netease/mcount/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/netease/mcount/h$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent$5;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v0}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$5;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to post the client info."

    invoke-static {v0, v1, v2}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
