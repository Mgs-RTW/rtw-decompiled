.class public final synthetic Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$c--pHWfagVGoXneMZgwWMxpNU8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Lcom/facebook/FacebookCallback;


# direct methods
.method public synthetic constructor <init>(ILcom/facebook/FacebookCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$c--pHWfagVGoXneMZgwWMxpNU8g;->f$0:I

    iput-object p2, p0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$c--pHWfagVGoXneMZgwWMxpNU8g;->f$1:Lcom/facebook/FacebookCallback;

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    iget v0, p0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$c--pHWfagVGoXneMZgwWMxpNU8g;->f$0:I

    iget-object v1, p0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$c--pHWfagVGoXneMZgwWMxpNU8g;->f$1:Lcom/facebook/FacebookCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->lambda$c--pHWfagVGoXneMZgwWMxpNU8g(ILcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
