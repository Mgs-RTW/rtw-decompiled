.class Lcom/netease/lotr/InputView$14;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/InputView;->setBorderless(Z)V
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

    .line 412
    iput-object p1, p0, Lcom/netease/lotr/InputView$14;->this$0:Lcom/netease/lotr/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/netease/lotr/InputView$14;->this$0:Lcom/netease/lotr/InputView;

    invoke-static {v0}, Lcom/netease/lotr/InputView;->access$900(Lcom/netease/lotr/InputView;)V

    return-void
.end method
