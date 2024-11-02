.class public final Landroidx/core/animation/IntKeyframeSet;
.super Landroidx/core/animation/KeyframeSet;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/core/animation/Keyframes$IntKeyframes;


# direct methods
.method public varargs constructor <init>([Landroidx/core/animation/Keyframe$IntKeyframe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/animation/KeyframeSet;-><init>([Landroidx/core/animation/Keyframe;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final clone()Landroidx/core/animation/IntKeyframeSet;
    .locals 4

    .line 4
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 6
    new-array v1, v0, [Landroidx/core/animation/Keyframe$IntKeyframe;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe;

    invoke-virtual {v3}, Landroidx/core/animation/Keyframe;->clone()Landroidx/core/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroidx/core/animation/IntKeyframeSet;

    invoke-direct {p0, v1}, Landroidx/core/animation/IntKeyframeSet;-><init>([Landroidx/core/animation/Keyframe$IntKeyframe;)V

    return-object p0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/KeyframeSet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/IntKeyframeSet;->clone()Landroidx/core/animation/IntKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/Keyframes;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/core/animation/IntKeyframeSet;->clone()Landroidx/core/animation/IntKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/core/animation/IntKeyframeSet;->clone()Landroidx/core/animation/IntKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final getIntValue(F)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-gtz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 23
    .line 24
    iget v2, v0, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 25
    .line 26
    iget v3, v1, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 27
    .line 28
    iget v0, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 29
    .line 30
    iget v4, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    :cond_0
    sub-float/2addr p1, v0

    .line 41
    sub-float/2addr v4, v0

    .line 42
    div-float/2addr p1, v4

    .line 43
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    sub-int/2addr v3, v2

    .line 48
    int-to-float p0, v3

    .line 49
    mul-float/2addr p1, p0

    .line 50
    float-to-int p0, p1

    .line 51
    add-int/2addr v2, p0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    :goto_0
    return v2

    .line 72
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    .line 74
    cmpl-float v0, p1, v0

    .line 75
    .line 76
    if-ltz v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 79
    .line 80
    iget v1, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 81
    .line 82
    add-int/lit8 v1, v1, -0x2

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 91
    .line 92
    iget v3, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 93
    .line 94
    sub-int/2addr v3, v2

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 100
    .line 101
    iget v2, v0, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 102
    .line 103
    iget v3, v1, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 104
    .line 105
    iget v0, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 106
    .line 107
    iget v4, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 108
    .line 109
    iget-object v1, v1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 110
    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    :cond_3
    sub-float/2addr p1, v0

    .line 118
    sub-float/2addr v4, v0

    .line 119
    div-float/2addr p1, v4

    .line 120
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 121
    .line 122
    if-nez p0, :cond_4

    .line 123
    .line 124
    sub-int/2addr v3, v2

    .line 125
    int-to-float p0, v3

    .line 126
    mul-float/2addr p1, p0

    .line 127
    float-to-int p0, p1

    .line 128
    add-int/2addr v2, p0

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    :goto_1
    return v2

    .line 149
    :cond_5
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 156
    .line 157
    move v1, v2

    .line 158
    :goto_2
    iget v3, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 159
    .line 160
    if-ge v1, v3, :cond_9

    .line 161
    .line 162
    iget-object v3, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 169
    .line 170
    iget v4, v3, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 171
    .line 172
    cmpg-float v5, p1, v4

    .line 173
    .line 174
    if-gez v5, :cond_8

    .line 175
    .line 176
    iget-object v1, v3, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 177
    .line 178
    iget v2, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 179
    .line 180
    sub-float/2addr p1, v2

    .line 181
    sub-float/2addr v4, v2

    .line 182
    div-float/2addr p1, v4

    .line 183
    iget v0, v0, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 184
    .line 185
    iget v2, v3, Landroidx/core/animation/Keyframe$IntKeyframe;->mValue:I

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    .line 189
    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    :cond_6
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 194
    .line 195
    if-nez p0, :cond_7

    .line 196
    .line 197
    sub-int/2addr v2, v0

    .line 198
    int-to-float p0, v2

    .line 199
    mul-float/2addr p1, p0

    .line 200
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    add-int/2addr p0, v0

    .line 205
    goto :goto_3

    .line 206
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    check-cast p0, Ljava/lang/Integer;

    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    :goto_3
    return p0

    .line 225
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 226
    .line 227
    move-object v0, v3

    .line 228
    goto :goto_2

    .line 229
    :cond_9
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 230
    .line 231
    sub-int/2addr v3, v2

    .line 232
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    check-cast p0, Landroidx/core/animation/Keyframe;

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    check-cast p0, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    return p0
.end method

.method public final getValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/animation/IntKeyframeSet;->getIntValue(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
