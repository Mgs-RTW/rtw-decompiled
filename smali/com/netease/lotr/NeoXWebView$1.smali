.class Lcom/netease/lotr/NeoXWebView$1;
.super Ljava/lang/Object;
.source "NeoXWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/NeoXWebView;->createLayout(Landroid/app/Activity;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/NeoXWebView;


# direct methods
.method constructor <init>(Lcom/netease/lotr/NeoXWebView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/netease/lotr/NeoXWebView$1;->this$0:Lcom/netease/lotr/NeoXWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/netease/lotr/NeoXWebView$1;->this$0:Lcom/netease/lotr/NeoXWebView;

    invoke-virtual {p1}, Lcom/netease/lotr/NeoXWebView;->hide()V

    return-void
.end method
