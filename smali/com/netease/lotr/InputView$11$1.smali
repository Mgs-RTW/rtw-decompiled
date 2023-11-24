.class Lcom/netease/lotr/InputView$11$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/InputView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/lotr/InputView$11;


# direct methods
.method constructor <init>(Lcom/netease/lotr/InputView$11;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/netease/lotr/InputView$11$1;->this$1:Lcom/netease/lotr/InputView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const-string p2, ""

    .line 320
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 323
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/lotr/InputView$11$1;->this$1:Lcom/netease/lotr/InputView$11;

    iget-object p3, p3, Lcom/netease/lotr/InputView$11;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {p3}, Lcom/netease/lotr/InputView;->access$1100(Lcom/netease/lotr/InputView;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method
