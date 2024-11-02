.class public final Lcom/android/systemui/qs/SecQSDetail$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSDetail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$3;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$3;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSDetail;->mAnimatingOpen:Z

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/systemui/qs/SecQSDetail;->-$$Nest$mcheckPendingAnimations(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$3;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/SecQSPanelController;->setGridContentVisibility(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$3;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetail;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$3;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQSDetail;->mAnimatingOpen:Z

    .line 24
    .line 25
    invoke-static {p0}, Lcom/android/systemui/qs/SecQSDetail;->-$$Nest$mcheckPendingAnimations(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
