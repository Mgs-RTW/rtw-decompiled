.class Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;
.super Ljava/lang/Object;
.source "GMActivityOnGlobalLayoutListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;-><init>(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;Landroid/app/Activity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    const-string v0, "GMActivityOnGlobalLayoutListener"

    const-string v1, "onGlobalLayout..."

    .line 50
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;->val$activity:Landroid/app/Activity;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->access$000(Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;Landroid/app/Activity;)V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
