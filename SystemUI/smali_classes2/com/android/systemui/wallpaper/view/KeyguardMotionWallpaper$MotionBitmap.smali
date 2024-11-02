.class public final Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public alpha:I

.field public bitmapLoaded:Z

.field public calculatedSum:F

.field public image:Landroid/graphics/Bitmap;

.field public isBackground:Z

.field public matrix:Landroid/graphics/Matrix;

.field public path:Ljava/lang/String;

.field public prevAlpha:I

.field public stayPoint1:I

.field public stayPoint2:I

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setAlpha(FF)V
    .locals 9

    .line 1
    cmpg-float p1, p1, p2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    move p1, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 11
    .line 12
    iget v2, v2, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 13
    .line 14
    int-to-float v3, v2

    .line 15
    rem-float/2addr p2, v3

    .line 16
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 17
    .line 18
    add-int/lit8 v3, v2, -0x3

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    cmpl-float v3, p2, v3

    .line 22
    .line 23
    if-lez v3, :cond_1

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    sub-float/2addr p2, v2

    .line 27
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/high16 v3, -0x3fc00000    # -3.0f

    .line 31
    .line 32
    cmpg-float v3, p2, v3

    .line 33
    .line 34
    if-gez v3, :cond_2

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    add-float/2addr p2, v2

    .line 38
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 39
    .line 40
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "calculatedSum = "

    .line 43
    .line 44
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 48
    .line 49
    const-string v3, "KeyguardMotionWallpaper"

    .line 50
    .line 51
    invoke-static {p2, v2, v3}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->calculatedSum:F

    .line 55
    .line 56
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint1:I

    .line 57
    .line 58
    int-to-float v4, v2

    .line 59
    cmpl-float v4, p2, v4

    .line 60
    .line 61
    const/4 v5, -0x3

    .line 62
    const/high16 v6, 0x41c00000    # 24.0f

    .line 63
    .line 64
    if-ltz v4, :cond_3

    .line 65
    .line 66
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    .line 67
    .line 68
    int-to-float v4, v4

    .line 69
    cmpg-float v4, p2, v4

    .line 70
    .line 71
    if-gtz v4, :cond_3

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 81
    .line 82
    :cond_4
    int-to-float v4, v2

    .line 83
    if-ne v2, v5, :cond_5

    .line 84
    .line 85
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 86
    .line 87
    iget v7, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 88
    .line 89
    int-to-float v7, v7

    .line 90
    add-float/2addr v4, v7

    .line 91
    :cond_5
    iget v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    .line 92
    .line 93
    int-to-float v8, v7

    .line 94
    cmpl-float v8, p2, v8

    .line 95
    .line 96
    if-lez v8, :cond_6

    .line 97
    .line 98
    add-int/lit8 v7, v7, 0x18

    .line 99
    .line 100
    int-to-float v7, v7

    .line 101
    cmpg-float v7, p2, v7

    .line 102
    .line 103
    if-gez v7, :cond_6

    .line 104
    .line 105
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 106
    .line 107
    if-nez v4, :cond_7

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    cmpg-float v7, p2, v4

    .line 115
    .line 116
    if-gez v7, :cond_7

    .line 117
    .line 118
    sub-float/2addr v4, v6

    .line 119
    cmpl-float v4, p2, v4

    .line 120
    .line 121
    if-lez v4, :cond_7

    .line 122
    .line 123
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 124
    .line 125
    if-nez v4, :cond_7

    .line 126
    .line 127
    if-nez p1, :cond_7

    .line 128
    .line 129
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 130
    .line 131
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground:Z

    .line 132
    .line 133
    const/16 v1, 0xff

    .line 134
    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    int-to-float p1, v2

    .line 141
    if-ne v2, v5, :cond_9

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 144
    .line 145
    iget v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 146
    .line 147
    int-to-float v0, v0

    .line 148
    add-float/2addr p1, v0

    .line 149
    :cond_9
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->stayPoint2:I

    .line 150
    .line 151
    int-to-float v2, v0

    .line 152
    cmpl-float v2, p2, v2

    .line 153
    .line 154
    const-string v4, "Foreground alpha = "

    .line 155
    .line 156
    const/high16 v5, 0x437f0000    # 255.0f

    .line 157
    .line 158
    if-lez v2, :cond_a

    .line 159
    .line 160
    add-int/lit8 v2, v0, 0x18

    .line 161
    .line 162
    int-to-float v2, v2

    .line 163
    cmpg-float v2, p2, v2

    .line 164
    .line 165
    if-gez v2, :cond_a

    .line 166
    .line 167
    int-to-float p1, v0

    .line 168
    sub-float/2addr p2, p1

    .line 169
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    div-float/2addr p1, v6

    .line 174
    mul-float/2addr p1, v5

    .line 175
    float-to-int p1, p1

    .line 176
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 177
    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 184
    .line 185
    invoke-static {p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_a
    cmpg-float v0, p2, p1

    .line 190
    .line 191
    if-gez v0, :cond_b

    .line 192
    .line 193
    sub-float v0, p1, v6

    .line 194
    .line 195
    cmpl-float v0, p2, v0

    .line 196
    .line 197
    if-lez v0, :cond_b

    .line 198
    .line 199
    sub-float/2addr p2, p1

    .line 200
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    div-float/2addr p1, v6

    .line 205
    mul-float/2addr p1, v5

    .line 206
    float-to-int p1, p1

    .line 207
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 208
    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 215
    .line 216
    invoke-static {p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_b
    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 221
    .line 222
    const-string p1, "disappear!!"

    .line 223
    .line 224
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :goto_3
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 228
    .line 229
    if-le p1, v1, :cond_c

    .line 230
    .line 231
    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 232
    .line 233
    :cond_c
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 234
    .line 235
    sub-int/2addr v1, p1

    .line 236
    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->alpha:I

    .line 237
    .line 238
    return-void
.end method
