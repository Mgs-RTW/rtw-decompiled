.class Lcom/netease/lotr/WebViewActivity$ButtonHandler;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/netease/lotr/WebViewActivity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/netease/lotr/WebViewActivity$ButtonHandler;->this$0:Lcom/netease/lotr/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const v1, 0x7f07005d

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 426
    :sswitch_0
    iget-object p2, p0, Lcom/netease/lotr/WebViewActivity$ButtonHandler;->this$0:Lcom/netease/lotr/WebViewActivity;

    invoke-static {p2}, Lcom/netease/lotr/WebViewActivity;->access$200(Lcom/netease/lotr/WebViewActivity;)V

    goto :goto_0

    .line 429
    :sswitch_1
    iget-object p2, p0, Lcom/netease/lotr/WebViewActivity$ButtonHandler;->this$0:Lcom/netease/lotr/WebViewActivity;

    invoke-static {p2}, Lcom/netease/lotr/WebViewActivity;->access$300(Lcom/netease/lotr/WebViewActivity;)V

    goto :goto_0

    .line 423
    :sswitch_2
    iget-object p2, p0, Lcom/netease/lotr/WebViewActivity$ButtonHandler;->this$0:Lcom/netease/lotr/WebViewActivity;

    invoke-static {p2}, Lcom/netease/lotr/WebViewActivity;->access$100(Lcom/netease/lotr/WebViewActivity;)V

    goto :goto_0

    .line 419
    :sswitch_3
    iget-object p2, p0, Lcom/netease/lotr/WebViewActivity$ButtonHandler;->this$0:Lcom/netease/lotr/WebViewActivity;

    invoke-static {p2}, Lcom/netease/lotr/WebViewActivity;->access$000(Lcom/netease/lotr/WebViewActivity;)V

    .line 434
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-eq p2, v1, :cond_2

    .line 435
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xa

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f060004

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 454
    :pswitch_1
    check-cast p1, Landroid/widget/ImageButton;

    const p2, 0x7f060006

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 457
    :pswitch_2
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 451
    :pswitch_3
    check-cast p1, Landroid/widget/ImageButton;

    const p2, 0x7f060002

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 448
    :pswitch_4
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_1
    return v2

    .line 440
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-eq p2, v1, :cond_4

    .line 441
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 p1, 0x0

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f070011 -> :sswitch_3
        0x7f070013 -> :sswitch_2
        0x7f070015 -> :sswitch_1
        0x7f070016 -> :sswitch_0
        0x7f07005d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f070011
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
