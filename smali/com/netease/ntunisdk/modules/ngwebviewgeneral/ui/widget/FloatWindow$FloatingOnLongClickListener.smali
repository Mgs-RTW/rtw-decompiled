.class Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnLongClickListener;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingOnLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnLongClickListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnLongClickListener;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnLongClickListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
