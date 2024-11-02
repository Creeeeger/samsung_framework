.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x6c

    .line 14
    .line 15
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "audio"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/media/AudioManager;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v0, "DragTargetView"

    .line 37
    .line 38
    const-string/jumbo v1, "performSoundEffect: Couldn\'t get audio manager"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v1, 0x6a

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    .line 53
    .line 54
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    .line 62
    .line 63
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->startTransition(Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
