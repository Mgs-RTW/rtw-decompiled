.class Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentView;->onCreateView(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$000(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentView"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->back(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->finish(I)V

    :cond_1
    :goto_0
    return-void
.end method
