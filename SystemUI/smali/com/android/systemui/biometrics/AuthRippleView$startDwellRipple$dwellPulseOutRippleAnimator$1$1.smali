.class public final Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v2, p1}, Lcom/android/systemui/biometrics/DwellRippleShader;->setProgress(F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    .line 25
    .line 26
    long-to-float v0, v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/DwellRippleShader;->setTime(F)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
