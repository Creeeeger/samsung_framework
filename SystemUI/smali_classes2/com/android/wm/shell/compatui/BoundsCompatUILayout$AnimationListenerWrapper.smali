.class public final Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final mAnimation:Landroid/view/animation/Animation;

.field public mCancel:Z

.field public final mView:Landroid/view/View;

.field public final mVisibility:I

.field public final synthetic this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;Landroid/view/animation/Animation;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mAnimation:Landroid/view/animation/Animation;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mView:Landroid/view/View;

    .line 12
    .line 13
    iput p4, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mVisibility:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mCancel:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mView:Landroid/view/View;

    .line 7
    .line 8
    iget v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->mVisibility:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper$1;-><init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout$AnimationListenerWrapper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
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
    return-void
.end method
