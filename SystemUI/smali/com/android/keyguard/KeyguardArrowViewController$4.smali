.class public final Lcom/android/keyguard/KeyguardArrowViewController$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 10
    .line 11
    iput v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 19
    .line 20
    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    .line 29
    .line 30
    .line 31
    const-string p1, "102"

    .line 32
    .line 33
    const-string v2, "1036"

    .line 34
    .line 35
    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 39
    .line 40
    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController;->-$$Nest$mannounceForArrowAccessibility(Lcom/android/keyguard/KeyguardArrowViewController;Z)V

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 10
    .line 11
    iget v1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iput v3, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iput v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 30
    .line 31
    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 37
    .line 38
    invoke-virtual {p1, v3, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    .line 39
    .line 40
    .line 41
    const-string p1, "102"

    .line 42
    .line 43
    const-string v1, "1035"

    .line 44
    .line 45
    invoke-static {p1, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 49
    .line 50
    invoke-static {p0, v3}, Lcom/android/keyguard/KeyguardArrowViewController;->-$$Nest$mannounceForArrowAccessibility(Lcom/android/keyguard/KeyguardArrowViewController;Z)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$4;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method
