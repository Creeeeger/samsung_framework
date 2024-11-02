.class public final Lcom/android/systemui/edgelighting/effect/view/MorphView$8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

.field public final synthetic val$fromWidth:I

.field public final synthetic val$reverse:Z

.field public final synthetic val$toWidth:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->val$fromWidth:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->val$toWidth:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->val$reverse:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->val$fromWidth:I

    .line 12
    .line 13
    int-to-float v1, v0

    .line 14
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->val$toWidth:I

    .line 15
    .line 16
    sub-int/2addr v2, v0

    .line 17
    int-to-float v0, v2

    .line 18
    mul-float/2addr v0, p1

    .line 19
    add-float/2addr v0, v1

    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->val$reverse:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    sub-float p1, v1, p1

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f0714c3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    mul-float/2addr p1, v1

    .line 43
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 44
    .line 45
    iget-boolean v2, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIsShowAppIcon:Z

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mIconRootLayout:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .line 57
    float-to-int p1, p1

    .line 58
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    .line 63
    float-to-int v0, v0

    .line 64
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 65
    .line 66
    iget v1, v1, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mMinWidth:I

    .line 67
    .line 68
    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$8;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
