.class public final Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
