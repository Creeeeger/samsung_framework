.class public final Lcom/android/wm/shell/naturalswitching/DragTargetView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$2;->this$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

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
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$2;->this$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method
