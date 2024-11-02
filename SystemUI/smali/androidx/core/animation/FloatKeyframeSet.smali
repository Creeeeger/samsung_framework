.class public final Landroidx/core/animation/FloatKeyframeSet;
.super Landroidx/core/animation/KeyframeSet;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/core/animation/Keyframes$FloatKeyframes;


# direct methods
.method public varargs constructor <init>([Landroidx/core/animation/Keyframe$FloatKeyframe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/animation/KeyframeSet;-><init>([Landroidx/core/animation/Keyframe;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final clone()Landroidx/core/animation/FloatKeyframeSet;
    .locals 4

    .line 4
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 6
    new-array v1, v0, [Landroidx/core/animation/Keyframe$FloatKeyframe;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe;

    invoke-virtual {v3}, Landroidx/core/animation/Keyframe;->clone()Landroidx/core/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroidx/core/animation/Keyframe$FloatKeyframe;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroidx/core/animation/FloatKeyframeSet;

    invoke-direct {p0, v1}, Landroidx/core/animation/FloatKeyframeSet;-><init>([Landroidx/core/animation/Keyframe$FloatKeyframe;)V

    return-object p0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/KeyframeSet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/core/animation/FloatKeyframeSet;->clone()Landroidx/core/animation/FloatKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Landroidx/core/animation/Keyframes;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/core/animation/FloatKeyframeSet;->clone()Landroidx/core/animation/FloatKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/core/animation/FloatKeyframeSet;->clone()Landroidx/core/animation/FloatKeyframeSet;

    move-result-object p0

    return-object p0
.end method

.method public final getFloatValue(F)F
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
    check-cast v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

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
    check-cast v1, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 23
    .line 24
    iget v2, v0, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 25
    .line 26
    iget v3, v1, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

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
    invoke-static {v3, v2, p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Ljava/lang/Float;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    :goto_0
    return p0

    .line 71
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    .line 73
    cmpl-float v0, p1, v0

    .line 74
    .line 75
    if-ltz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 78
    .line 79
    iget v1, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 80
    .line 81
    add-int/lit8 v1, v1, -0x2

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 90
    .line 91
    iget v3, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 92
    .line 93
    sub-int/2addr v3, v2

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 99
    .line 100
    iget v2, v0, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 101
    .line 102
    iget v3, v1, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 103
    .line 104
    iget v0, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 105
    .line 106
    iget v4, v1, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 107
    .line 108
    iget-object v1, v1, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    :cond_3
    sub-float/2addr p1, v0

    .line 117
    sub-float/2addr v4, v0

    .line 118
    div-float/2addr p1, v4

    .line 119
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 120
    .line 121
    if-nez p0, :cond_4

    .line 122
    .line 123
    invoke-static {v3, v2, p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Ljava/lang/Float;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    :goto_1
    return p0

    .line 147
    :cond_5
    iget-object v0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 154
    .line 155
    move v1, v2

    .line 156
    :goto_2
    iget v3, p0, Landroidx/core/animation/KeyframeSet;->mNumKeyframes:I

    .line 157
    .line 158
    if-ge v1, v3, :cond_9

    .line 159
    .line 160
    iget-object v3, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 167
    .line 168
    iget v4, v3, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 169
    .line 170
    cmpg-float v5, p1, v4

    .line 171
    .line 172
    if-gez v5, :cond_8

    .line 173
    .line 174
    iget-object v1, v3, Landroidx/core/animation/Keyframe;->mInterpolator:Landroidx/core/animation/Interpolator;

    .line 175
    .line 176
    iget v2, v0, Landroidx/core/animation/Keyframe;->mFraction:F

    .line 177
    .line 178
    sub-float/2addr p1, v2

    .line 179
    sub-float/2addr v4, v2

    .line 180
    div-float/2addr p1, v4

    .line 181
    iget v0, v0, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 182
    .line 183
    iget v2, v3, Landroidx/core/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 184
    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    invoke-interface {v1, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    :cond_6
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 192
    .line 193
    if-nez p0, :cond_7

    .line 194
    .line 195
    invoke-static {v2, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    goto :goto_3

    .line 200
    :cond_7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-interface {p0, p1, v0, v1}, Landroidx/core/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    check-cast p0, Ljava/lang/Float;

    .line 213
    .line 214
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    :goto_3
    return p0

    .line 219
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 220
    .line 221
    move-object v0, v3

    .line 222
    goto :goto_2

    .line 223
    :cond_9
    iget-object p0, p0, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 224
    .line 225
    sub-int/2addr v3, v2

    .line 226
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    check-cast p0, Landroidx/core/animation/Keyframe;

    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/core/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    check-cast p0, Ljava/lang/Float;

    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    return p0
.end method

.method public final getValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/animation/FloatKeyframeSet;->getFloatValue(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
