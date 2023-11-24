.class Lcom/netease/lotr/InputView$5$1;
.super Ljava/util/TimerTask;
.source "InputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/InputView$5;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/lotr/InputView$5;


# direct methods
.method constructor <init>(Lcom/netease/lotr/InputView$5;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/netease/lotr/InputView$5$1;->this$1:Lcom/netease/lotr/InputView$5;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/netease/lotr/InputView$5$1;->this$1:Lcom/netease/lotr/InputView$5;

    iget-object v0, v0, Lcom/netease/lotr/InputView$5;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v0}, Lcom/netease/lotr/InputView;->access$300(Lcom/netease/lotr/InputView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/netease/lotr/InputView$5$1;->this$1:Lcom/netease/lotr/InputView$5;

    iget-object v1, v1, Lcom/netease/lotr/InputView$5;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$300(Lcom/netease/lotr/InputView;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    .line 190
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
