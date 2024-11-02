.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mClippingEnabled:Z

.field public mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

.field public mFancyClippingBottom:I

.field public mFancyClippingLeftInset:I

.field public final mFancyClippingPath:Landroid/graphics/Path;

.field public final mFancyClippingRadii:[F

.field public mFancyClippingRightInset:I

.field public mFancyClippingTop:I

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeadsUpPinned:Z

.field public mImmersiveScrollingSupplier:Ljava/util/function/BooleanSupplier;

.field public mIsFullWidth:Z

.field public mKeyguardShowing:Z

.field public mMaxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public mMinExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public mNotificationDividerHeight:I

.field public final mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

.field public mQQSPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field public mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public mQSPanelContainerTopMargin:I

.field public mQsDisabled:Z

.field public mQsExpansion:F

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSecQSPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public final mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x8

    .line 5
    .line 6
    new-array p2, p2, [F

    .line 7
    .line 8
    fill-array-data p2, :array_0

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    .line 12
    .line 13
    new-instance p2, Landroid/graphics/Path;

    .line 14
    .line 15
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    .line 19
    .line 20
    new-instance p2, Lcom/android/systemui/log/SecTouchLogHelper;

    .line 21
    .line 22
    invoke-direct {p2}, Lcom/android/systemui/log/SecTouchLogHelper;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainerTopMargin:I

    .line 29
    .line 30
    iput-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeadsUpPinned:Z

    .line 31
    .line 32
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    new-instance p2, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/qs/QSContainerImpl$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSContainerImpl;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 47
    .line 48
    :cond_0
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 17
    .line 18
    cmpl-float v0, v0, v2

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :cond_0
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, v0

    .line 41
    :goto_1
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    neg-float v0, v0

    .line 48
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " updateClippingPath: leftInset("

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingLeftInset:I

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ") top("

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ") rightInset("

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRightInset:I

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ") bottom("

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ") mClippingEnabled("

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ") mIsFullWidth("

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsFullWidth:Z

    .line 73
    .line 74
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p0, ")"

    .line 78
    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final getContainerHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mShadeHeaderControllerLazy:Ldagger/Lazy;

    .line 13
    .line 14
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sub-int/2addr v2, v3

    .line 29
    sub-int/2addr v2, v0

    .line 30
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainerTopMargin:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 44
    .line 45
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v0

    .line 55
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 62
    .line 63
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    sub-int/2addr v0, p0

    .line 70
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    :cond_0
    return v2
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-float/2addr v0, p2

    .line 10
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a03de

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 14
    .line 15
    const v0, 0x7f0a0477

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 25
    .line 26
    const v0, 0x7f0a0849

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 34
    .line 35
    const v0, 0x7f0a0851

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/qs/SecQSDetail;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const v1, 0x7f0a0881

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 61
    .line 62
    const v1, 0x7f0a087c

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQQSPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 72
    .line 73
    :cond_0
    const/4 v1, 0x2

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 80
    .line 81
    const v1, 0x7f0a087f

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackground:Landroid/view/View;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->updateBackgroundResources()V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f0709d3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationDividerHeight:I

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const v0, 0x7f070ec4

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "QSContainerImpl"

    .line 6
    .line 7
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnInterceptTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContainerHeight()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    cmpl-float v3, v0, v2

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    int-to-float v3, v3

    .line 35
    sub-float/2addr v3, v2

    .line 36
    cmpg-float v0, v0, v3

    .line 37
    .line 38
    if-gez v0, :cond_0

    .line 39
    .line 40
    cmpl-float v0, v1, v4

    .line 41
    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    cmpg-float v0, v1, v0

    .line 50
    .line 51
    if-gez v0, :cond_0

    .line 52
    .line 53
    move v0, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v0, v6

    .line 56
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeadsUpPinned:Z

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 61
    .line 62
    cmpl-float v1, v1, v4

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mImmersiveScrollingSupplier:Ljava/util/function/BooleanSupplier;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    .line 79
    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    move v0, v5

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move v0, v6

    .line 85
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "QSContainerImpl needToConsumeEvents : "

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, ""

    .line 102
    .line 103
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    move v5, v6

    .line 116
    :cond_3
    :goto_2
    return v5
.end method

.method public final performClick()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setTranslationY(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->updateBackgroundRound(F[FZ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final updateClippingPath()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    int-to-float v3, v2

    .line 22
    const/4 v4, 0x0

    .line 23
    int-to-float v0, v0

    .line 24
    iget v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    .line 25
    .line 26
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 27
    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationDividerHeight:I

    .line 32
    .line 33
    :goto_0
    sub-int/2addr v5, v2

    .line 34
    int-to-float v5, v5

    .line 35
    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    .line 36
    .line 37
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 38
    .line 39
    move v2, v3

    .line 40
    move v3, v4

    .line 41
    move v4, v0

    .line 42
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final updateExpansion()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET_BG:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mMinExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mMaxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 20
    .line 21
    float-to-double v3, v3

    .line 22
    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mMinExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    sub-double/2addr v5, v7

    .line 33
    mul-double/2addr v5, v3

    .line 34
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mMinExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    add-double/2addr v3, v5

    .line 41
    double-to-int v0, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v0, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    sub-int/2addr v0, v4

    .line 54
    int-to-float v0, v0

    .line 55
    mul-float/2addr v3, v0

    .line 56
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-int/2addr v0, v3

    .line 67
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/2addr v3, v0

    .line 72
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 73
    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExpandImmediateSupplier:Ljava/util/function/BooleanSupplier;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v1, v2

    .line 90
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 91
    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQQSPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContainerHeight()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    add-int/2addr v4, v3

    .line 121
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQQSPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    sub-int/2addr v4, v3

    .line 128
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 129
    .line 130
    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    add-int/2addr v3, v4

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v1, :cond_4

    .line 145
    .line 146
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    .line 147
    .line 148
    if-nez v3, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    add-int/2addr v3, v0

    .line 155
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 160
    .line 161
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 162
    .line 163
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    .line 164
    .line 165
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->updateBackgroundRound(F[FZ)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->mBackground:Landroid/view/View;

    .line 171
    .line 172
    if-eqz p0, :cond_5

    .line 173
    .line 174
    invoke-virtual {p0, v2}, Landroid/view/View;->setBottom(I)V

    .line 175
    .line 176
    .line 177
    :cond_5
    return-void
.end method

.method public final updateTabletResources(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f070e70

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const v2, 0x7f070e72

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v1

    .line 29
    const v1, 0x7f070e71

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v2

    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/shade/ShadeHeaderController;->getViewHeight()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    add-int/2addr p1, v0

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0711a0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sub-int/2addr p1, v0

    .line 54
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainerTopMargin:I

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainerTopMargin:I

    .line 65
    .line 66
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const v1, 0x7f070c5a

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mOpaqueBgHelper:Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSContainerOpaqueBgHelper;->updateBackgroundResources()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
