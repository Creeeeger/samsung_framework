.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public final mLayoutId:I

.field public final mNamePrefix:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 2

    const-string v0, "Freeform Outline"

    const v1, 0x7f0d033e

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mNamePrefix:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public final calculateElevation()F
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    .line 29
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 30
    .line 31
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    const v0, 0x7f070dde

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const v0, 0x7f070df3

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_1
    return v1
.end method

.method public final getFreeformOutlineFrame()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 6
    .line 7
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/2addr p0, v2

    .line 26
    new-instance v2, Landroid/graphics/Rect;

    .line 27
    .line 28
    neg-int v3, v1

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v0, v1

    .line 34
    add-int/2addr p0, v1

    .line 35
    invoke-direct {v2, v3, v3, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    return-object v2
.end method

.method public final getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final updateOutlineView(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const v3, 0x7f070db6

    .line 16
    .line 17
    .line 18
    invoke-static {v3, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    int-to-float v4, v4

    .line 33
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mClearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    .line 40
    .line 41
    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsDexDockingEnabled:Z

    .line 42
    .line 43
    const v5, 0x3f99999a    # 1.2f

    .line 44
    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    iget p0, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 49
    .line 50
    iput p0, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillColor:I

    .line 51
    .line 52
    const p0, -0xb1b1b2

    .line 53
    .line 54
    .line 55
    iput p0, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    iput p0, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadius:I

    .line 59
    .line 60
    int-to-float p0, p0

    .line 61
    mul-float/2addr p0, v5

    .line 62
    float-to-int p0, p0

    .line 63
    iput p0, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadiusForShadow:I

    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    invoke-virtual {v0, p0}, Landroid/view/View;->setElevation(F)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iput v2, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadius:I

    .line 71
    .line 72
    int-to-float v2, v2

    .line 73
    mul-float/2addr v2, v5

    .line 74
    float-to-int v2, v2

    .line 75
    iput v2, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadiusForShadow:I

    .line 76
    .line 77
    iget v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 78
    .line 79
    sget-boolean v2, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->DEBUG:Z

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    const/high16 v1, 0x66ff0000

    .line 84
    .line 85
    iput v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    .line 86
    .line 87
    const v1, 0x660000ff

    .line 88
    .line 89
    .line 90
    iput v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillColor:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iput v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    .line 94
    .line 95
    iput v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mFillColor:I

    .line 96
    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->calculateElevation()F

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-virtual {v0, p0}, Landroid/view/View;->setElevation(F)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iput v3, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mCaptionHeight:I

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method
