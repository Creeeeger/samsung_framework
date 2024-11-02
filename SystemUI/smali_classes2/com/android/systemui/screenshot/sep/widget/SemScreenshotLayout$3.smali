.class public final Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;
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
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "alphaOut: post a onDismiss callback."

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/animation/Animation$AnimationListener;I)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v1, 0xe9

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
