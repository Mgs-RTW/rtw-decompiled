.class public final synthetic Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TargetListAdapter$TargetViewHolder$UZgbA0HJnySUXbgVOdUU-PlBWFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

.field private final synthetic f$1:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

.field private final synthetic f$2:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TargetListAdapter$TargetViewHolder$UZgbA0HJnySUXbgVOdUU-PlBWFY;->f$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TargetListAdapter$TargetViewHolder$UZgbA0HJnySUXbgVOdUU-PlBWFY;->f$1:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TargetListAdapter$TargetViewHolder$UZgbA0HJnySUXbgVOdUU-PlBWFY;->f$2:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TargetListAdapter$TargetViewHolder$UZgbA0HJnySUXbgVOdUU-PlBWFY;->f$0:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TargetListAdapter$TargetViewHolder$UZgbA0HJnySUXbgVOdUU-PlBWFY;->f$1:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TargetListAdapter$TargetViewHolder$UZgbA0HJnySUXbgVOdUU-PlBWFY;->f$2:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;

    invoke-static {v0, v1, v2, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->lambda$bind$0(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$OnSelectedChangeListener;Landroid/view/View;)V

    return-void
.end method
