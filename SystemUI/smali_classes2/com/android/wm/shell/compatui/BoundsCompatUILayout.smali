.class public Lcom/android/wm/shell/compatui/BoundsCompatUILayout;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z


# instance fields
.field public final mAnimationListenerWrappers:Ljava/util/HashMap;

.field public final mButtons:Ljava/util/HashMap;

.field public mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

.field public final mFrameCommitCallback:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

.field public final mHandler:Landroid/os/Handler;

.field public mLastVisibleTarget:Landroid/widget/ImageButton;

.field public final mLayoutListener:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

.field public mNaviButtonSize:I

.field public mSwitchableButtonContainer:Landroid/widget/FrameLayout;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

.field public mVerticalMarginFromActivityBounds:I

.field public mWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;


# direct methods
.method public static $r8$lambda$lQJCE7mBRYizXYR0vHIcwkYGP80(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->configureTouchableRegion(Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLayoutListener:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    .line 18
    .line 19
    sget-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0a01a3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$ygWdvB14MBSMuhSbblX-9ZSXxys(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->DEBUG_BOUNDS_COMPAT_UI_LAYOUT:Z

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 6
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    .line 7
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    .line 8
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLayoutListener:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    .line 9
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 16
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    .line 17
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    .line 18
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLayoutListener:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    .line 19
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 26
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    .line 27
    new-instance p2, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    .line 28
    new-instance p2, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;I)V

    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLayoutListener:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    .line 29
    new-instance p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final configureTouchableRegion(Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/ImageButton;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    iget v2, p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 52
    .line 53
    iget-object v2, p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 54
    .line 55
    invoke-static {v2, v1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->$r8$lambda$ygWdvB14MBSMuhSbblX-9ZSXxys(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegion:Landroid/graphics/Region;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mBoundsCompatUIWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->setTouchRegion(Landroid/graphics/Region;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final refreshButtonVisibility(Z)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLayoutListener:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLayoutListener:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 46
    .line 47
    iget-boolean v2, v0, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 52
    .line 53
    const v2, 0x7f0a019e

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/ImageButton;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-boolean v0, v0, Landroid/app/TaskInfo;->topActivityInFixedAspectRatio:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 74
    .line 75
    const v2, 0x7f0a019d

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/ImageButton;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 89
    .line 90
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ne v0, v1, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_UI_SUPPORT_ALIGNMENT:Z

    .line 107
    .line 108
    if-eqz v0, :cond_12

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->isAlignedVertically(Landroid/app/TaskInfo;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/16 v1, 0x8

    .line 119
    .line 120
    const/16 v3, 0x55

    .line 121
    .line 122
    if-eqz v0, :cond_e

    .line 123
    .line 124
    iget v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    .line 125
    .line 126
    const v4, 0x7f0a0198

    .line 127
    .line 128
    .line 129
    const v5, 0x7f0a019b

    .line 130
    .line 131
    .line 132
    if-gez v0, :cond_4

    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v6, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->getActivityBounds()Landroid/graphics/Rect;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    iget-object v7, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mWindowManager:Lcom/android/wm/shell/compatui/BoundsCompatUIWindowManager;

    .line 149
    .line 150
    iget-object v7, v7, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 151
    .line 152
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 153
    .line 154
    iget v8, v7, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 155
    .line 156
    sub-int/2addr v0, v8

    .line 157
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    if-eq v0, v6, :cond_5

    .line 160
    .line 161
    iget v8, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 162
    .line 163
    sub-int/2addr v0, v8

    .line 164
    if-ge v0, v6, :cond_5

    .line 165
    .line 166
    sub-int/2addr v6, v0

    .line 167
    goto :goto_1

    .line 168
    :cond_5
    move v6, v2

    .line 169
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 170
    .line 171
    if-lez v6, :cond_6

    .line 172
    .line 173
    int-to-float v8, v6

    .line 174
    iget v9, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 175
    .line 176
    int-to-float v9, v9

    .line 177
    div-float/2addr v8, v9

    .line 178
    const v9, 0x3e4ccccd    # 0.2f

    .line 179
    .line 180
    .line 181
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    sub-float/2addr v0, v8

    .line 186
    :cond_6
    iget-object v8, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    check-cast v8, Landroid/view/View;

    .line 197
    .line 198
    if-eqz v8, :cond_8

    .line 199
    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    .line 206
    if-lez v6, :cond_7

    .line 207
    .line 208
    iget v10, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 209
    .line 210
    int-to-float v10, v10

    .line 211
    mul-float/2addr v10, v0

    .line 212
    float-to-int v10, v10

    .line 213
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 214
    .line 215
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 216
    .line 217
    :cond_7
    iget v10, v7, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 218
    .line 219
    iget v11, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    .line 220
    .line 221
    add-int/2addr v10, v11

    .line 222
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 223
    .line 224
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .line 226
    .line 227
    :cond_8
    iget-object v8, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    check-cast v8, Landroid/view/View;

    .line 238
    .line 239
    if-eqz v8, :cond_a

    .line 240
    .line 241
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .line 247
    if-lez v6, :cond_9

    .line 248
    .line 249
    iget v6, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mNaviButtonSize:I

    .line 250
    .line 251
    int-to-float v6, v6

    .line 252
    mul-float/2addr v6, v0

    .line 253
    float-to-int v0, v6

    .line 254
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 255
    .line 256
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 257
    .line 258
    :cond_9
    iget v0, v7, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 259
    .line 260
    iget v6, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mVerticalMarginFromActivityBounds:I

    .line 261
    .line 262
    add-int/2addr v0, v6

    .line 263
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 264
    .line 265
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 269
    .line 270
    iget v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 271
    .line 272
    and-int/lit8 v0, v0, 0x70

    .line 273
    .line 274
    const/16 v6, 0x10

    .line 275
    .line 276
    if-eq v0, v6, :cond_d

    .line 277
    .line 278
    const/16 v6, 0x30

    .line 279
    .line 280
    if-eq v0, v6, :cond_c

    .line 281
    .line 282
    const/16 v3, 0x50

    .line 283
    .line 284
    if-eq v0, v3, :cond_b

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 294
    .line 295
    const/16 v0, 0x35

    .line 296
    .line 297
    invoke-static {p1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_c
    invoke-virtual {p0, v5, v1, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v4, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 308
    .line 309
    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v4, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 317
    .line 318
    .line 319
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 320
    .line 321
    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 326
    .line 327
    iget v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mAlignment:I

    .line 328
    .line 329
    and-int/lit8 v0, v0, 0x7

    .line 330
    .line 331
    const/4 v4, 0x1

    .line 332
    const v5, 0x7f0a019a

    .line 333
    .line 334
    .line 335
    const v6, 0x7f0a0199

    .line 336
    .line 337
    .line 338
    if-eq v0, v4, :cond_11

    .line 339
    .line 340
    const/4 v4, 0x3

    .line 341
    if-eq v0, v4, :cond_10

    .line 342
    .line 343
    const/4 v3, 0x5

    .line 344
    if-eq v0, v3, :cond_f

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_f
    invoke-virtual {p0, v6, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v5, v1, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 351
    .line 352
    .line 353
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 354
    .line 355
    const/16 v0, 0x53

    .line 356
    .line 357
    invoke-static {p1, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    .line 358
    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_10
    invoke-virtual {p0, v6, v1, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 368
    .line 369
    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_11
    invoke-virtual {p0, v6, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0, v5, v2, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setButtonVisibility(IIZ)V

    .line 377
    .line 378
    .line 379
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mSwitchableButtonContainer:Landroid/widget/FrameLayout;

    .line 380
    .line 381
    invoke-static {p1, v3}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->setFrameLayoutGravity(Landroid/widget/FrameLayout;I)V

    .line 382
    .line 383
    .line 384
    :cond_12
    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    .line 385
    .line 386
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->configureTouchableRegion(Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->requestDismiss()V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public final requestDismiss()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ONE_UI_5_1_1:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x1388

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroid/app/TaskInfo;->topActivityInDisplayCompat:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lcom/android/wm/shell/compatui/BoundsCompatUIController$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUIController;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setButtonVisibility(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, v1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mCancel:Z

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mAnimation:Landroid/view/animation/Animation;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, p2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-eqz p3, :cond_3

    .line 45
    .line 46
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    const v1, 0x7f010197

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const v1, 0x7f010198

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    new-instance v1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;

    .line 62
    .line 63
    invoke-direct {v1, p0, p3, v0, p2}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;Landroid/view/animation/Animation;Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mAnimationListenerWrappers:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BoundsCompatUILayout{mController="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mController:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mLastVisibleTarget="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string/jumbo p0, "}"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
