.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

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
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$1;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    const-string p1, "alphaAnimator"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->-$$Nest$monAnimationFinished(Lcom/android/wm/shell/common/split/DividerResizeLayout;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
