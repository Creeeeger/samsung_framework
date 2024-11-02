.class public abstract Lcom/android/wm/shell/transition/AnimationLoader;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DIRECT_SHOW_ANIMATION:Landroid/view/animation/Animation;

.field public static final NO_ANIMATION:Landroid/view/animation/Animation;


# instance fields
.field public final mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    .line 8
    .line 9
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->DIRECT_SHOW_ANIMATION:Landroid/view/animation/Animation;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/AnimationLoader;->getCornerRadius()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    new-instance p1, Landroid/view/animation/ClipRectAnimation;

    .line 15
    .line 16
    invoke-direct {p1, v0, v0}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/animation/AnimationSet;->getDuration()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->setRoundedCornerRadius(F)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getCornerRadius()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract loadAnimationIfPossible()V
.end method
