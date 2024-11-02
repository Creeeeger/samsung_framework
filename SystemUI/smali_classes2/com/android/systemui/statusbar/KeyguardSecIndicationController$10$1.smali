.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10$1;->this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10$1;->this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10$1;->this$1:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$10;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mClippingParams:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
