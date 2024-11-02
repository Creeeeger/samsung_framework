.class public final Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/charging/WiredChargingRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->windowManager:Landroid/view/WindowManager;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Integer;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-float v2, v2

    .line 26
    const/high16 v3, 0x40000000    # 2.0f

    .line 27
    .line 28
    mul-float/2addr v2, v3

    .line 29
    iget-object v3, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v4, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 36
    .line 37
    invoke-virtual {v4, v2, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setMaxSize(FF)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget v4, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosY:F

    .line 51
    .line 52
    iget p1, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->normalizedPortPosX:F

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    if-eq v2, v5, :cond_2

    .line 58
    .line 59
    const/4 v6, 0x2

    .line 60
    if-eq v2, v6, :cond_1

    .line 61
    .line 62
    const/4 v6, 0x3

    .line 63
    if-eq v2, v6, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    int-to-float v1, v1

    .line 67
    int-to-float v2, v5

    .line 68
    sub-float/2addr v2, v4

    .line 69
    mul-float/2addr v2, v1

    .line 70
    int-to-float v0, v0

    .line 71
    mul-float/2addr v0, p1

    .line 72
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    int-to-float v1, v1

    .line 77
    int-to-float v2, v5

    .line 78
    sub-float p1, v2, p1

    .line 79
    .line 80
    mul-float/2addr p1, v1

    .line 81
    int-to-float v0, v0

    .line 82
    sub-float/2addr v2, v4

    .line 83
    mul-float/2addr v2, v0

    .line 84
    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    int-to-float v1, v1

    .line 89
    mul-float/2addr v1, v4

    .line 90
    int-to-float v0, v0

    .line 91
    int-to-float v2, v5

    .line 92
    sub-float/2addr v2, p1

    .line 93
    mul-float/2addr v2, v0

    .line 94
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    int-to-float v1, v1

    .line 99
    mul-float/2addr v1, p1

    .line 100
    int-to-float p1, v0

    .line 101
    mul-float/2addr p1, v4

    .line 102
    invoke-virtual {v3, v1, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenter(FF)V

    .line 103
    .line 104
    .line 105
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    .line 106
    .line 107
    iget-object v0, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 108
    .line 109
    new-instance v1, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;

    .line 110
    .line 111
    invoke-direct {v1, p1}, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;-><init>(Lcom/android/systemui/charging/WiredChargingRippleController;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->startRipple(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/systemui/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/charging/WiredChargingRippleController;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/systemui/charging/WiredChargingRippleController;->rippleView:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 120
    .line 121
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
