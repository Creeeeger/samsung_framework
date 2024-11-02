.class public final Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final callChipLayoutChangeListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;

.field public final callChipRect:Landroid/graphics/Rect;

.field public doubleTapCount:I

.field public final doubleTapTimeoutRunnable:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

.field public isTouchOnCallChip:Z

.field public final keyguardCallChipRect:Landroid/graphics/Rect;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mainHandler:Landroid/os/Handler;

.field public final ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field public final ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

.field public final powerManager:Landroid/os/PowerManager;

.field public touchDownX:F

.field public touchDownY:F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->mainHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->powerManager:Landroid/os/PowerManager;

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    .line 20
    .line 21
    new-instance p1, Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipLayoutChangeListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$callChipLayoutChangeListener$1;

    .line 34
    .line 35
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallListener:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$ongoingCallListener$1;

    .line 41
    .line 42
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapTimeoutRunnable:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

    .line 48
    .line 49
    return-void
.end method

.method public static final access$updateCallChipRect(Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-array v6, v4, [I

    .line 13
    .line 14
    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15
    .line 16
    .line 17
    aget v7, v6, v3

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    add-int/2addr v8, v7

    .line 24
    aget v6, v6, v2

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v1, v6

    .line 31
    invoke-virtual {v5, v7, v3, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-array v1, v4, [I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 45
    .line 46
    .line 47
    aget v4, v1, v3

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    add-int/2addr v6, v4

    .line 54
    aget v1, v1, v2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    invoke-virtual {p0, v4, v3, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    .line 63
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v1, "update keyguard rect="

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, " call chip rect="

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string v0, "IndicatorTouchHandler"

    .line 88
    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-void
.end method
