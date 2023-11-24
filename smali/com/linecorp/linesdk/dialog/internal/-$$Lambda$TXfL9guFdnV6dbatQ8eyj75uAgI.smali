.class public final synthetic Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TXfL9guFdnV6dbatQ8eyj75uAgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;


# instance fields
.field private final synthetic f$0:Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TXfL9guFdnV6dbatQ8eyj75uAgI;->f$0:Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/-$$Lambda$TXfL9guFdnV6dbatQ8eyj75uAgI;->f$0:Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->addTargetUsers(Ljava/util/List;)V

    return-void
.end method
