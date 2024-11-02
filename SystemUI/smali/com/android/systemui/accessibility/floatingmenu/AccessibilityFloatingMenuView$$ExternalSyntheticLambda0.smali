.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-boolean v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    .line 21
    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    sub-float/2addr v3, p1

    .line 27
    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    .line 31
    int-to-float v4, v4

    .line 32
    mul-float/2addr v4, v3

    .line 33
    int-to-float v1, v1

    .line 34
    mul-float/2addr v1, p1

    .line 35
    add-float/2addr v1, v4

    .line 36
    float-to-int v1, v1

    .line 37
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    mul-float/2addr v3, v4

    .line 41
    int-to-float p0, p0

    .line 42
    mul-float/2addr p1, p0

    .line 43
    add-float/2addr p1, v3

    .line 44
    float-to-int p0, p1

    .line 45
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 46
    .line 47
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sub-float/2addr v3, p1

    .line 54
    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 57
    .line 58
    int-to-float v4, v4

    .line 59
    mul-float/2addr v4, v3

    .line 60
    int-to-float v1, v1

    .line 61
    mul-float/2addr v1, p1

    .line 62
    add-float/2addr v1, v4

    .line 63
    float-to-int v1, v1

    .line 64
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    .line 66
    int-to-float v4, v4

    .line 67
    mul-float/2addr v3, v4

    .line 68
    int-to-float p0, p0

    .line 69
    mul-float/2addr p1, p0

    .line 70
    add-float/2addr p1, v3

    .line 71
    float-to-int p0, p1

    .line 72
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 73
    .line 74
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method
