.class public Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static bgColor:I

.field public static bgDrawable:Landroid/graphics/drawable/Drawable;

.field public static heightPercent:F

.field public static widthPercent:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 339
    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 340
    sput v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    const/4 v0, 0x0

    .line 341
    sput v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    .line 342
    sput v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    return-void
.end method
