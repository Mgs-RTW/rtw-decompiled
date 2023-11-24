.class Lcom/netease/neox/NeoXView$1;
.super Ljava/lang/Object;
.source "NeoXView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/neox/NeoXView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/NeoXView;


# direct methods
.method constructor <init>(Lcom/netease/neox/NeoXView;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/netease/neox/NeoXView$1;->this$0:Lcom/netease/neox/NeoXView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/netease/neox/NeoXView$1;->this$0:Lcom/netease/neox/NeoXView;

    invoke-static {}, Lcom/netease/neox/NeoXView;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/NeoXView$1;->this$0:Lcom/netease/neox/NeoXView;

    invoke-static {}, Lcom/netease/neox/NeoXView;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
