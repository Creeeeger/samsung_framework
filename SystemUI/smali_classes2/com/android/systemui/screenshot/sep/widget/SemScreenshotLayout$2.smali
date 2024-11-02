.class public final Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

.field public final synthetic val$alphaOut:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;Landroid/view/animation/AlphaAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->val$alphaOut:Landroid/view/animation/AlphaAnimation;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->val$alphaOut:Landroid/view/animation/AlphaAnimation;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    .line 9
    .line 10
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
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;->this$0:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
