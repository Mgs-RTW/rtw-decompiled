.class Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensityDpi(Landroid/content/res/Resources;)I
    .locals 0

    .line 102
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperJellybeanMr1;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result p1

    return p1
.end method
