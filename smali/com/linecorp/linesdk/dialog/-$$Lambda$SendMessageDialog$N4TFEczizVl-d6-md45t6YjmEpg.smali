.class public final synthetic Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$N4TFEczizVl-d6-md45t6YjmEpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/dialog/SendMessageDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$N4TFEczizVl-d6-md45t6YjmEpg;->f$0:Lcom/linecorp/linesdk/dialog/SendMessageDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/-$$Lambda$SendMessageDialog$N4TFEczizVl-d6-md45t6YjmEpg;->f$0:Lcom/linecorp/linesdk/dialog/SendMessageDialog;

    invoke-static {v0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->lambda$onTargetUserAdded$2(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V

    return-void
.end method
