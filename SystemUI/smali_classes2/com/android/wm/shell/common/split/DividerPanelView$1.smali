.class public final Lcom/android/wm/shell/common/split/DividerPanelView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

.field public final synthetic val$canAddToAppPair:Z

.field public final synthetic val$canSwapTask:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerPanelView;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$1;->this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerPanelView$1;->val$canSwapTask:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerPanelView$1;->val$canAddToAppPair:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$1;->val$canSwapTask:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView$1;->this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mSwitchingIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerPanelView$1;->val$canAddToAppPair:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView$1;->this$0:Lcom/android/wm/shell/common/split/DividerPanelView;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanelView;->mAddAppPairIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
