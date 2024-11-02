.class public final Lcom/android/systemui/power/UnintentionalLcdOnView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eq v0, p1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 18
    .line 19
    invoke-static {v0, p2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->-$$Nest$monLockerActionMove(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    if-eqz p0, :cond_5

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 33
    .line 34
    sget v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->$r8$clinit:I

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionUp(Landroid/view/MotionEvent;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    .line 60
    .line 61
    .line 62
    iput-boolean p1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$1;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setDCircleAnimator(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    const-string p2, "PowerUI.UnintentionalLcdOnView"

    .line 96
    .line 97
    const-string v0, "Caught Exception In Touch Event"

    .line 98
    .line 99
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_0
    return p1
.end method
