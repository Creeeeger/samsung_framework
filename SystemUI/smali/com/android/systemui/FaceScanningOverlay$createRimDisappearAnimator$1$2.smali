.class public final Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/FaceScanningOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/FaceScanningOverlay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$2;->this$0:Lcom/android/systemui/FaceScanningOverlay;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$2;->this$0:Lcom/android/systemui/FaceScanningOverlay;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/FaceScanningOverlay;->HIDDEN_RIM_SCALE:F

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
