.class Lcom/netease/lotr/InputView$9;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/InputView;->setHint(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/InputView;


# direct methods
.method constructor <init>(Lcom/netease/lotr/InputView;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/netease/lotr/InputView$9;->this$0:Lcom/netease/lotr/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/netease/lotr/InputView$9;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v0}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lotr/InputView$9;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$600(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
