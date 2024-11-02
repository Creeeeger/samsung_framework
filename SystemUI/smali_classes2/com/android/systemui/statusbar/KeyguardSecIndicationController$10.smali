.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

.field public final synthetic val$animateDownDuration:I

.field public final synthetic val$indication:Ljava/lang/String;

.field public final synthetic val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$indication:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$animateDownDuration:I

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->mCancelled:Z

    .line 9
    .line 10
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->mCancelled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$animateDownDuration:I

    .line 23
    .line 24
    int-to-long v0, v0

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10$1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$indication:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
