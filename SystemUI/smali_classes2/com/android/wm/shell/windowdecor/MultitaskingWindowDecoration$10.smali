.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$10;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

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
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$10;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$10;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mWindowElevation:F

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
