.class public final Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

.field public final synthetic val$curAngularSum:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    .line 6
    .line 7
    cmpg-float v1, p1, v1

    .line 8
    .line 9
    const v2, 0x3d4ccccd    # 0.05f

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    iget v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 17
    .line 18
    sub-float v5, v1, p1

    .line 19
    .line 20
    mul-float/2addr v5, v2

    .line 21
    sub-float/2addr v1, v5

    .line 22
    iput v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 23
    .line 24
    cmpl-float p1, v1, p1

    .line 25
    .line 26
    if-ltz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 30
    .line 31
    invoke-static {p1, v1, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 36
    .line 37
    cmpg-float p1, v1, p1

    .line 38
    .line 39
    if-gtz p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v3, v4

    .line 43
    :goto_0
    iget p1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    .line 44
    .line 45
    iget v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 46
    .line 47
    sub-float/2addr p1, v0

    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const v0, 0x38d1b717    # 1.0E-4f

    .line 53
    .line 54
    .line 55
    cmpl-float p1, p1, v0

    .line 56
    .line 57
    if-lez p1, :cond_3

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "animatedAngle = "

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 69
    .line 70
    iget v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 71
    .line 72
    const-string v1, "KeyguardMotionWallpaper"

    .line 73
    .line 74
    invoke-static {p1, v0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ge v4, p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 98
    .line 99
    iget v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    .line 100
    .line 101
    iget v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 102
    .line 103
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 115
    .line 116
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 117
    .line 118
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    .line 119
    .line 120
    :cond_3
    return-void
.end method
