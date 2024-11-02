.class public final Lcom/android/app/animation/InterpolatorsAndroidX;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DECELERATE_QUINT:Landroidx/core/animation/DecelerateInterpolator;

.field public static final FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY_ACCELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final LEGACY_DECELERATE:Landroidx/core/animation/PathInterpolator;

.field public static final LINEAR:Landroidx/core/animation/LinearInterpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v7, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    .line 9
    .line 10
    const v1, 0x3d4ccccd    # 0.05f

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const v3, 0x3e088872

    .line 15
    .line 16
    .line 17
    const v4, 0x3d75c28f    # 0.06f

    .line 18
    .line 19
    .line 20
    const v5, 0x3e2aaa7e

    .line 21
    .line 22
    .line 23
    const v6, 0x3ecccccd    # 0.4f

    .line 24
    .line 25
    .line 26
    move-object v0, v7

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 28
    .line 29
    .line 30
    const v1, 0x3e55553f    # 0.208333f

    .line 31
    .line 32
    .line 33
    const v2, 0x3f51eb85    # 0.82f

    .line 34
    .line 35
    .line 36
    const/high16 v3, 0x3e800000    # 0.25f

    .line 37
    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/high16 v6, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 48
    .line 49
    invoke-direct {v0, v7}, Landroidx/core/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 53
    .line 54
    const v1, 0x3e99999a    # 0.3f

    .line 55
    .line 56
    .line 57
    const v2, 0x3f4ccccd    # 0.8f

    .line 58
    .line 59
    .line 60
    const v3, 0x3e19999a    # 0.15f

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1, v8, v2, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 67
    .line 68
    const v3, 0x3d4ccccd    # 0.05f

    .line 69
    .line 70
    .line 71
    const v4, 0x3f333333    # 0.7f

    .line 72
    .line 73
    .line 74
    const v5, 0x3dcccccd    # 0.1f

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v3, v4, v5, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 81
    .line 82
    const v3, 0x3e4ccccd    # 0.2f

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v3, v8, v8, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 89
    .line 90
    invoke-direct {v0, v1, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 94
    .line 95
    invoke-direct {v0, v8, v8, v8, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 99
    .line 100
    const v7, 0x3ecccccd    # 0.4f

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v7, v8, v3, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 104
    .line 105
    .line 106
    sput-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY:Landroidx/core/animation/PathInterpolator;

    .line 107
    .line 108
    new-instance v9, Landroidx/core/animation/PathInterpolator;

    .line 109
    .line 110
    invoke-direct {v9, v7, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 111
    .line 112
    .line 113
    sput-object v9, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_ACCELERATE:Landroidx/core/animation/PathInterpolator;

    .line 114
    .line 115
    new-instance v9, Landroidx/core/animation/PathInterpolator;

    .line 116
    .line 117
    invoke-direct {v9, v8, v8, v3, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 118
    .line 119
    .line 120
    sput-object v9, Lcom/android/app/animation/InterpolatorsAndroidX;->LEGACY_DECELERATE:Landroidx/core/animation/PathInterpolator;

    .line 121
    .line 122
    new-instance v10, Landroidx/core/animation/LinearInterpolator;

    .line 123
    .line 124
    invoke-direct {v10}, Landroidx/core/animation/LinearInterpolator;-><init>()V

    .line 125
    .line 126
    .line 127
    sput-object v10, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    .line 128
    .line 129
    sput-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->FAST_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    .line 130
    .line 131
    sput-object v9, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    .line 132
    .line 133
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 134
    .line 135
    const v9, 0x3f19999a    # 0.6f

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v2, v8, v9, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 142
    .line 143
    invoke-direct {v0, v2, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 147
    .line 148
    invoke-direct {v0, v7, v8, v6, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 152
    .line 153
    invoke-direct {v0, v8, v8, v2, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Landroidx/core/animation/AccelerateInterpolator;

    .line 157
    .line 158
    invoke-direct {v0}, Landroidx/core/animation/AccelerateInterpolator;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v0, Landroidx/core/animation/AccelerateDecelerateInterpolator;

    .line 162
    .line 163
    invoke-direct {v0}, Landroidx/core/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v0, Landroidx/core/animation/DecelerateInterpolator;

    .line 167
    .line 168
    const/high16 v2, 0x40200000    # 2.5f

    .line 169
    .line 170
    invoke-direct {v0, v2}, Landroidx/core/animation/DecelerateInterpolator;-><init>(F)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->DECELERATE_QUINT:Landroidx/core/animation/DecelerateInterpolator;

    .line 174
    .line 175
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 176
    .line 177
    invoke-direct {v0, v7, v8, v9, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 181
    .line 182
    const v2, 0x3fb33333    # 1.4f

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v7, v8, v3, v2}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 189
    .line 190
    const v2, 0x3f8ccccd    # 1.1f

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, v7, v8, v3, v2}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 197
    .line 198
    const/high16 v2, 0x3f000000    # 0.5f

    .line 199
    .line 200
    invoke-direct {v0, v1, v8, v2, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Landroidx/core/animation/BounceInterpolator;

    .line 204
    .line 205
    invoke-direct {v0}, Landroidx/core/animation/BounceInterpolator;-><init>()V

    .line 206
    .line 207
    .line 208
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 209
    .line 210
    invoke-direct {v0, v7, v8, v3, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 214
    .line 215
    invoke-direct {v0, v1, v8, v5, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Landroidx/core/animation/PathInterpolator;

    .line 219
    .line 220
    const v1, 0x3f666666    # 0.9f

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v1, v8, v4, v6}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
