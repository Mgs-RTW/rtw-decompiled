.class Lcom/netease/lotr/InputView$12;
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

    .line 335
    iput-object p1, p0, Lcom/netease/lotr/InputView$12;->this$0:Lcom/netease/lotr/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/netease/lotr/InputView$12;->this$0:Lcom/netease/lotr/InputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/lotr/InputView;->inputFinish(Z)V

    return-void
.end method
