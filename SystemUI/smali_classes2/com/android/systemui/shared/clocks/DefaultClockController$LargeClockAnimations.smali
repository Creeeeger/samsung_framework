.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;
.super Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/clocks/AnimatableClockView;",
            "FF)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPositionUpdated(IIF)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-gez p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-lez p2, :cond_1

    .line 19
    .line 20
    :goto_0
    move p2, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move p2, v2

    .line 23
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int/2addr v0, p1

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    :cond_2
    :goto_2
    const/4 p1, 0x4

    .line 36
    if-ge v2, p1, :cond_6

    .line 37
    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    .line 50
    .line 51
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_5

    .line 62
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_5
    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    .line 72
    .line 73
    :goto_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    :goto_5
    const v3, 0x3d072b02    # 0.033f

    .line 84
    .line 85
    .line 86
    mul-float/2addr p1, v3

    .line 87
    sget-object v3, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 88
    .line 89
    const v4, 0x3f66a7f0    # 0.901f

    .line 90
    .line 91
    .line 92
    add-float/2addr v4, p1

    .line 93
    const/4 v5, 0x0

    .line 94
    const/high16 v6, 0x3f800000    # 1.0f

    .line 95
    .line 96
    invoke-static {v5, v6, p1, v4, p3}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    check-cast v3, Landroid/view/animation/PathInterpolator;

    .line 101
    .line 102
    invoke-virtual {v3, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    int-to-float v3, v0

    .line 107
    mul-float/2addr p1, v3

    .line 108
    sub-float/2addr p1, v3

    .line 109
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    .line 110
    .line 111
    int-to-float v4, v1

    .line 112
    mul-float/2addr v4, p1

    .line 113
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->invalidate()V

    .line 124
    .line 125
    .line 126
    return-void
.end method
