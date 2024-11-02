.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

.field public final synthetic val$child:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final synthetic val$newPosition:[I


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;[ILandroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->val$newPosition:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->val$child:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "SeslImmersiveScrollBehavior"

    .line 8
    .line 9
    const-string p1, "mTargetView is null"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->val$newPosition:[I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    .line 28
    .line 29
    iget v2, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOffset:I

    .line 30
    .line 31
    sub-int/2addr v2, p1

    .line 32
    const/4 v3, 0x0

    .line 33
    aput v2, v0, v3

    .line 34
    .line 35
    iget-object v0, v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    .line 36
    .line 37
    neg-int v1, v2

    .line 38
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->val$coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->val$child:Lcom/google/android/material/appbar/AppBarLayout;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    .line 51
    .line 52
    iput p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOffset:I

    .line 53
    .line 54
    return-void
.end method
