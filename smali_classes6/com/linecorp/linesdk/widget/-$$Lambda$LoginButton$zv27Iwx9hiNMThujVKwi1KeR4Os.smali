.class public final synthetic Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$zv27Iwx9hiNMThujVKwi1KeR4Os;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/widget/LoginButton;

.field private final synthetic f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$zv27Iwx9hiNMThujVKwi1KeR4Os;->f$0:Lcom/linecorp/linesdk/widget/LoginButton;

    iput-object p2, p0, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$zv27Iwx9hiNMThujVKwi1KeR4Os;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$zv27Iwx9hiNMThujVKwi1KeR4Os;->f$0:Lcom/linecorp/linesdk/widget/LoginButton;

    iget-object v1, p0, Lcom/linecorp/linesdk/widget/-$$Lambda$LoginButton$zv27Iwx9hiNMThujVKwi1KeR4Os;->f$1:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/linecorp/linesdk/widget/LoginButton;->lambda$setOnClickListener$1(Lcom/linecorp/linesdk/widget/LoginButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
