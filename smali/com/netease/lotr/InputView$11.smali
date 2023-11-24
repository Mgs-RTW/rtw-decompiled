.class Lcom/netease/lotr/InputView$11;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/InputView;->show(Z)V
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

    .line 286
    iput-object p1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v0}, Lcom/netease/lotr/InputView;->access$200(Lcom/netease/lotr/InputView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 290
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 291
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v2}, Lcom/netease/lotr/InputView;->access$500(Lcom/netease/lotr/InputView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 292
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$200(Lcom/netease/lotr/InputView;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 293
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$800(Lcom/netease/lotr/InputView;)V

    .line 294
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$900(Lcom/netease/lotr/InputView;)V

    .line 295
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$1000(Lcom/netease/lotr/InputView;)V

    .line 296
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$700(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$700(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v2}, Lcom/netease/lotr/InputView;->access$700(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v2, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v2}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$600(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$600(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v2}, Lcom/netease/lotr/InputView;->access$600(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 309
    :goto_1
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 310
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 311
    iget-object v1, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v1}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 312
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    .line 313
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->isInLayout()Z

    move-result v1

    if-nez v1, :cond_3

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v0}, Lcom/netease/lotr/InputView;->access$1100(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v0}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/netease/lotr/InputView$11$1;

    invoke-direct {v3, p0}, Lcom/netease/lotr/InputView$11$1;-><init>(Lcom/netease/lotr/InputView$11;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v0}, Lcom/netease/lotr/InputView;->access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_2
    return-void
.end method
