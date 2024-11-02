.class public final Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, [F

    .line 12
    .line 13
    sget v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    aget v2, p1, v0

    .line 20
    .line 21
    aget p1, p1, v1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method
