.class public final Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# static fields
.field public static final Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;


# instance fields
.field public final background:Landroid/graphics/drawable/Drawable;

.field public backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

.field public final backgroundInsets$delegate:Lkotlin/Lazy;

.field public backgroundView:Landroid/widget/FrameLayout;

.field public final cujType:Ljava/lang/Integer;

.field public ghostView:Landroid/view/GhostView;

.field public final ghostViewMatrix:Landroid/graphics/Matrix;

.field public final ghostedView:Landroid/view/View;

.field public final ghostedViewLocation:[I

.field public final ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field public final initialGhostViewMatrixValues:[F

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public launchContainer:Landroid/view/ViewGroup;

.field public final launchContainerLocation:[I

.field public startBackgroundAlpha:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 10

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 8
    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    const/16 p2, 0x9

    new-array p3, p2, [F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    const/4 v2, 0x0

    .line 9
    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    .line 10
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 11
    new-instance p2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;-><init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    const/16 p2, 0xff

    .line 12
    iput p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    new-array p1, p1, [I

    .line 13
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    .line 14
    new-instance p1, Lcom/android/systemui/animation/LaunchAnimator$State;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 15
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    instance-of p2, p1, Lcom/android/systemui/animation/LaunchableView;

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 18
    :cond_1
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 23
    :cond_3
    instance-of p3, p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_2

    .line 24
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v1, v0

    :goto_1
    if-ge v1, p3, :cond_2

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 26
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    return-void

    .line 27
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A GhostedViewLaunchAnimatorController was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 28
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p3

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 11

    .line 1
    new-instance v9, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 8
    .line 9
    sget-object v5, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-nez v6, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v6}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    if-nez v8, :cond_1

    .line 25
    .line 26
    :goto_0
    move v10, v7

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    if-eqz v10, :cond_2

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    aget v8, v10, v8

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    mul-float/2addr v10, v8

    .line 47
    :goto_2
    if-nez v6, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v6}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    :goto_3
    move v6, v7

    .line 60
    goto :goto_5

    .line 61
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eqz v6, :cond_5

    .line 66
    .line 67
    const/4 v5, 0x4

    .line 68
    aget v5, v6, v5

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    mul-float/2addr v0, v5

    .line 80
    move v6, v0

    .line 81
    :goto_5
    const/16 v7, 0xf

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    move-object v0, v9

    .line 85
    move v5, v10

    .line 86
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v9}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 90
    .line 91
    .line 92
    return-object v9
.end method

.method public final fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/graphics/Insets;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    aget v2, v1, v2

    .line 18
    .line 19
    iget v3, p0, Landroid/graphics/Insets;->top:I

    .line 20
    .line 21
    add-int/2addr v3, v2

    .line 22
    iput v3, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    mul-float/2addr v4, v3

    .line 34
    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v3, v2

    .line 39
    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    .line 40
    .line 41
    sub-int/2addr v3, v2

    .line 42
    iput v3, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    aget v1, v1, v2

    .line 46
    .line 47
    iget v2, p0, Landroid/graphics/Insets;->left:I

    .line 48
    .line 49
    add-int/2addr v2, v1

    .line 50
    iput v2, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    mul-float/2addr v0, v2

    .line 62
    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-int/2addr v0, v1

    .line 67
    iget p0, p0, Landroid/graphics/Insets;->right:I

    .line 68
    .line 69
    sub-int/2addr v0, p0

    .line 70
    iput v0, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 71
    .line 72
    return-void
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-nez p1, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    iget v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    .line 34
    .line 35
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 36
    .line 37
    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    instance-of p0, p1, Lcom/android/systemui/animation/LaunchableView;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    check-cast p1, Lcom/android/systemui/animation/LaunchableView;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/4 p0, 0x4

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-void
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v4, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    iget-object v6, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v4, :cond_5

    .line 21
    .line 22
    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v7, 0x0

    .line 35
    if-ne v4, v5, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, v7}, Landroid/view/GhostView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 46
    .line 47
    .line 48
    iget v8, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 49
    .line 50
    iget v9, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 51
    .line 52
    sub-int v10, v8, v9

    .line 53
    .line 54
    iget v11, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 55
    .line 56
    iget v12, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 57
    .line 58
    sub-int v13, v11, v12

    .line 59
    .line 60
    iget v14, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 61
    .line 62
    iget v15, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 63
    .line 64
    sub-int v16, v14, v15

    .line 65
    .line 66
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 67
    .line 68
    iget v7, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 69
    .line 70
    sub-int v17, v5, v7

    .line 71
    .line 72
    sub-int/2addr v11, v8

    .line 73
    int-to-float v8, v11

    .line 74
    sub-int/2addr v12, v9

    .line 75
    int-to-float v9, v12

    .line 76
    div-float/2addr v8, v9

    .line 77
    sub-int/2addr v5, v14

    .line 78
    int-to-float v5, v5

    .line 79
    sub-int/2addr v7, v15

    .line 80
    int-to-float v7, v7

    .line 81
    div-float/2addr v5, v7

    .line 82
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    instance-of v7, v7, Landroid/view/ViewGroup;

    .line 91
    .line 92
    iget-object v8, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 93
    .line 94
    if-eqz v7, :cond_3

    .line 95
    .line 96
    iget-object v7, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 97
    .line 98
    invoke-static {v6, v7, v8}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object v6, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 102
    .line 103
    iget-object v7, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    .line 104
    .line 105
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 106
    .line 107
    .line 108
    iget v6, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 109
    .line 110
    int-to-float v9, v6

    .line 111
    iget v11, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 112
    .line 113
    sub-int/2addr v11, v6

    .line 114
    int-to-float v6, v11

    .line 115
    const/high16 v11, 0x40000000    # 2.0f

    .line 116
    .line 117
    div-float/2addr v6, v11

    .line 118
    add-float/2addr v6, v9

    .line 119
    const/4 v9, 0x0

    .line 120
    aget v12, v7, v9

    .line 121
    .line 122
    int-to-float v9, v12

    .line 123
    sub-float/2addr v6, v9

    .line 124
    iget v9, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 125
    .line 126
    int-to-float v12, v9

    .line 127
    iget v4, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 128
    .line 129
    sub-int/2addr v4, v9

    .line 130
    int-to-float v4, v4

    .line 131
    div-float/2addr v4, v11

    .line 132
    add-float/2addr v4, v12

    .line 133
    const/4 v9, 0x1

    .line 134
    aget v12, v7, v9

    .line 135
    .line 136
    int-to-float v12, v12

    .line 137
    sub-float/2addr v4, v12

    .line 138
    invoke-virtual {v8, v5, v5, v6, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 139
    .line 140
    .line 141
    add-int/2addr v10, v13

    .line 142
    int-to-float v4, v10

    .line 143
    div-float/2addr v4, v11

    .line 144
    add-int v5, v16, v17

    .line 145
    .line 146
    int-to-float v5, v5

    .line 147
    div-float/2addr v5, v11

    .line 148
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v8}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    .line 155
    .line 156
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Landroid/graphics/Insets;

    .line 161
    .line 162
    iget v4, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 163
    .line 164
    iget v5, v2, Landroid/graphics/Insets;->top:I

    .line 165
    .line 166
    sub-int/2addr v4, v5

    .line 167
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 168
    .line 169
    iget v6, v2, Landroid/graphics/Insets;->left:I

    .line 170
    .line 171
    sub-int/2addr v5, v6

    .line 172
    iget v6, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 173
    .line 174
    iget v8, v2, Landroid/graphics/Insets;->right:I

    .line 175
    .line 176
    add-int/2addr v6, v8

    .line 177
    iget v8, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 178
    .line 179
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 180
    .line 181
    add-int/2addr v8, v2

    .line 182
    aget v2, v7, v9

    .line 183
    .line 184
    sub-int/2addr v4, v2

    .line 185
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTop(I)V

    .line 186
    .line 187
    .line 188
    aget v2, v7, v9

    .line 189
    .line 190
    sub-int/2addr v8, v2

    .line 191
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 192
    .line 193
    .line 194
    const/4 v2, 0x0

    .line 195
    aget v4, v7, v2

    .line 196
    .line 197
    sub-int/2addr v5, v4

    .line 198
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLeft(I)V

    .line 199
    .line 200
    .line 201
    aget v4, v7, v2

    .line 202
    .line 203
    sub-int/2addr v6, v4

    .line 204
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setRight(I)V

    .line 205
    .line 206
    .line 207
    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 208
    .line 209
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    if-eqz v2, :cond_4

    .line 215
    .line 216
    iget v2, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 217
    .line 218
    iget v1, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 221
    .line 222
    if-eqz v0, :cond_4

    .line 223
    .line 224
    iget-object v3, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->cornerRadii:[F

    .line 225
    .line 226
    const/4 v4, 0x0

    .line 227
    aput v2, v3, v4

    .line 228
    .line 229
    aput v2, v3, v9

    .line 230
    .line 231
    const/4 v4, 0x2

    .line 232
    aput v2, v3, v4

    .line 233
    .line 234
    const/4 v4, 0x3

    .line 235
    aput v2, v3, v4

    .line 236
    .line 237
    const/4 v2, 0x4

    .line 238
    aput v1, v3, v2

    .line 239
    .line 240
    const/4 v2, 0x5

    .line 241
    aput v1, v3, v2

    .line 242
    .line 243
    const/4 v2, 0x6

    .line 244
    aput v1, v3, v2

    .line 245
    .line 246
    const/4 v2, 0x7

    .line 247
    aput v1, v3, v2

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 250
    .line 251
    .line 252
    :cond_4
    return-void

    .line 253
    :cond_5
    :goto_0
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-nez v0, :cond_6

    .line 258
    .line 259
    const/4 v0, 0x4

    .line 260
    invoke-virtual {v2, v0}, Landroid/view/GhostView;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    :cond_6
    return-void
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "GhostedViewLaunchAnimatorController"

    .line 12
    .line 13
    const-string p1, "Skipping animation as ghostedView is not attached to a ViewGroup"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v1, 0xff

    .line 53
    .line 54
    :goto_0
    iput v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 55
    .line 56
    new-instance v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    instance-of v0, p1, Lcom/android/systemui/animation/LaunchableView;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v0, 0x0

    .line 80
    :goto_2
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 87
    .line 88
    invoke-static {p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    :cond_5
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 103
    .line 104
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 118
    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 120
    .line 121
    .line 122
    :cond_7
    return-void
.end method

.method public final setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method
