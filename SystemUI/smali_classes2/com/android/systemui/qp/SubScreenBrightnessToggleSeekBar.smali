.class public Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mHighBrightnessModeEnter:Z = false


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHighBrightnessModeToast:Landroid/widget/Toast;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsDetailViewTouched:Z

.field public mIsDragging:Z

.field public mIsHorizontalGesture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeEnter:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 46
    .line 47
    const-string/jumbo v3, "sub_screen_brightness_mode"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    move v0, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v0, v2

    .line 63
    :goto_0
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    const-string v0, "SubScreenBrightnessToggleSeekBar"

    .line 72
    .line 73
    const-string/jumbo v3, "showHighBrightnessModeToast()"

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    const v3, 0x7f130f0e

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    .line 97
    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    .line 105
    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_7

    .line 119
    .line 120
    if-eq v4, v1, :cond_6

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    if-eq v4, v5, :cond_4

    .line 124
    .line 125
    const/4 v0, 0x3

    .line 126
    if-eq v4, v0, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    .line 130
    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    iget v4, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchY:F

    .line 135
    .line 136
    sub-float/2addr v3, v4

    .line 137
    iget v4, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchX:F

    .line 138
    .line 139
    sub-float/2addr v0, v4

    .line 140
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    cmpl-float v3, v0, v3

    .line 149
    .line 150
    if-lez v3, :cond_8

    .line 151
    .line 152
    iget-object v3, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    int-to-float v3, v3

    .line 163
    cmpl-float v0, v0, v3

    .line 164
    .line 165
    if-lez v0, :cond_8

    .line 166
    .line 167
    iput-boolean v1, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    .line 168
    .line 169
    :cond_6
    :goto_1
    move v2, v1

    .line 170
    goto :goto_2

    .line 171
    :cond_7
    iput v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchX:F

    .line 172
    .line 173
    iput v3, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchY:F

    .line 174
    .line 175
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    .line 176
    .line 177
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 178
    .line 179
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    return p0

    .line 184
    :cond_9
    return v1
.end method
