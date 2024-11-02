.class public final Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/GyroDetector;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;->this$0:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;-><init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x1002b

    .line 8
    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aget v1, p1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    aget v1, p1, v1

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    aget p1, p1, v2

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;->this$0:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    .line 27
    .line 28
    if-eqz p0, :cond_8

    .line 29
    .line 30
    check-cast p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 35
    .line 36
    if-eqz p1, :cond_6

    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v2, 0x0

    .line 47
    cmpl-float p1, p1, v2

    .line 48
    .line 49
    if-lez p1, :cond_6

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 52
    .line 53
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->mIsRunning:Z

    .line 54
    .line 55
    if-nez p1, :cond_6

    .line 56
    .line 57
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 58
    .line 59
    add-float/2addr p1, v1

    .line 60
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/high16 v1, 0x43200000    # 160.0f

    .line 67
    .line 68
    cmpl-float p1, p1, v1

    .line 69
    .line 70
    if-lez p1, :cond_2

    .line 71
    .line 72
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 73
    .line 74
    cmpg-float p1, p1, v2

    .line 75
    .line 76
    if-gez p1, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/high16 v1, -0x3ce00000    # -160.0f

    .line 80
    .line 81
    :goto_0
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 82
    .line 83
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    cmpl-float p1, p1, v1

    .line 99
    .line 100
    if-lez p1, :cond_3

    .line 101
    .line 102
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 103
    .line 104
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 108
    .line 109
    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 110
    .line 111
    mul-float/2addr p1, v1

    .line 112
    cmpg-float p1, p1, v2

    .line 113
    .line 114
    if-gez p1, :cond_4

    .line 115
    .line 116
    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 117
    .line 118
    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    const/high16 v1, 0x41200000    # 10.0f

    .line 125
    .line 126
    cmpl-float p1, p1, v1

    .line 127
    .line 128
    if-lez p1, :cond_5

    .line 129
    .line 130
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 131
    .line 132
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    neg-float v1, p1

    .line 137
    iget v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 138
    .line 139
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    div-float/2addr v1, p1

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 150
    .line 151
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    const/high16 v2, -0x3ee00000    # -10.0f

    .line 156
    .line 157
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    div-float v1, p1, v1

    .line 162
    .line 163
    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 164
    .line 165
    mul-float/2addr v1, p1

    .line 166
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_6

    .line 178
    .line 179
    const-wide/16 v1, 0x0

    .line 180
    .line 181
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    .line 183
    .line 184
    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 185
    .line 186
    if-eqz p1, :cond_7

    .line 187
    .line 188
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 189
    .line 190
    if-nez p1, :cond_8

    .line 191
    .line 192
    :cond_7
    sget-object p1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v0, "onGyroChanged: pause "

    .line 197
    .line 198
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, " isEnable"

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 212
    .line 213
    const-string v1, "TiltColorController"

    .line 214
    .line 215
    invoke-static {p1, v0, v1}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    .line 221
    .line 222
    .line 223
    :cond_8
    return-void
.end method
