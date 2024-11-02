.class public final synthetic Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public synthetic constructor <init>(ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeSliderPopup()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return v2

    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 40
    .line 41
    const v1, 0x7f0a06b9

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    new-instance v0, Landroid/graphics/PointF;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 66
    .line 67
    iget v1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    .line 68
    .line 69
    neg-int v1, v1

    .line 70
    int-to-float v1, v1

    .line 71
    iget p2, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    .line 72
    .line 73
    neg-int p2, p2

    .line 74
    int-to-float p2, p2

    .line 75
    invoke-virtual {v0, v1, p2}, Landroid/graphics/PointF;->offset(FF)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 81
    .line 82
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 83
    .line 84
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_1

    .line 89
    .line 90
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 91
    .line 92
    iget v1, p2, Landroid/graphics/Point;->x:I

    .line 93
    .line 94
    neg-int v1, v1

    .line 95
    int-to-float v1, v1

    .line 96
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 97
    .line 98
    neg-int p2, p2

    .line 99
    int-to-float p2, p2

    .line 100
    invoke-virtual {v0, v1, p2}, Landroid/graphics/PointF;->offset(FF)V

    .line 101
    .line 102
    .line 103
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    iget p1, v0, Landroid/graphics/PointF;->x:F

    .line 112
    .line 113
    float-to-int p1, p1

    .line 114
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    float-to-int v0, v0

    .line 117
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    :cond_2
    if-nez v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeMoreMenu()V

    .line 124
    .line 125
    .line 126
    :cond_3
    return v2

    .line 127
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eq p1, v1, :cond_4

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 140
    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 144
    .line 145
    if-eqz p2, :cond_7

    .line 146
    .line 147
    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter$1;

    .line 148
    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    iget-object v1, p2, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 154
    .line 155
    if-nez v1, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iget-boolean v0, v1, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 159
    .line 160
    :goto_2
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 166
    .line 167
    if-eqz p2, :cond_7

    .line 168
    .line 169
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mPinAnimRunnable:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter$1;

    .line 170
    .line 171
    invoke-virtual {p2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeHandleMenu(Z)V

    .line 175
    .line 176
    .line 177
    :goto_3
    return v2

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
