.class final Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FixedSizeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field final height:I

.field final width:I

.field private final wrapped:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V
    .locals 0

    .line 212
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 214
    iput p2, p0, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->width:I

    .line 215
    iput p3, p0, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->height:I

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;)V
    .locals 2

    .line 209
    iget-object v0, p1, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;

    iget v1, p1, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->width:I

    iget p1, p1, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->height:I

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 221
    new-instance v0, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable;-><init>(Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 227
    new-instance v0, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable;-><init>(Lcom/netease/ntunisdk/glide/request/target/FixedSizeDrawable$State;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
