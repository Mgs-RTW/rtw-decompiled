.class Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TweetTimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReplaceTweetCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/models/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field cb:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 135
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    :cond_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->setItemById(Lcom/twitter/sdk/android/core/models/Identifiable;)V

    .line 141
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineListAdapter$ReplaceTweetCallback;->cb:Lcom/twitter/sdk/android/core/Callback;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/Callback;->success(Lcom/twitter/sdk/android/core/Result;)V

    :cond_0
    return-void
.end method
