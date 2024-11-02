.class public final Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic val$animT:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$leash:Landroid/view/SurfaceControl;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$show:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$show:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$show:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$animT:Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$3;->val$leash:Landroid/view/SurfaceControl;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method
