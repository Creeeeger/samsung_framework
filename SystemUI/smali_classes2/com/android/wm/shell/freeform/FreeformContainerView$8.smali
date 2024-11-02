.class public final Lcom/android/wm/shell/freeform/FreeformContainerView$8;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final synthetic val$iconView:Landroid/widget/ImageView;

.field public final synthetic val$springAlpha:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$8;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$8;->val$iconView:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$8;->val$springAlpha:F

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$8;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 20
    .line 21
    const-string v1, "fullscreen_mode_request_spring_anim_x"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$8;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 29
    .line 30
    const-string p1, "fullscreen_mode_request_spring_anim_x"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 4
    .line 5
    double-to-float p1, v0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$8;->val$iconView:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 9
    .line 10
    .line 11
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$8;->val$springAlpha:F

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
