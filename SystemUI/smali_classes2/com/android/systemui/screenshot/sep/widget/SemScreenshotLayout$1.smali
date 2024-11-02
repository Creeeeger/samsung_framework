.class public final Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v0, "scaleAnimation: post a finishAnimation callback."

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/animation/Animation$AnimationListener;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
