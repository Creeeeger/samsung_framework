.class public final Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic val$animationSet:Landroid/animation/AnimatorSet;

.field public final synthetic val$show:Z

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$show:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$view:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$animationSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$show:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$view:Landroid/view/View;

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$animationSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$show:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;->val$view:Landroid/view/View;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
