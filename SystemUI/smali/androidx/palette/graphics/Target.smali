.class public final Landroidx/palette/graphics/Target;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DARK_MUTED:Landroidx/palette/graphics/Target;

.field public static final DARK_VIBRANT:Landroidx/palette/graphics/Target;

.field public static final LIGHT_MUTED:Landroidx/palette/graphics/Target;

.field public static final LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

.field public static final MUTED:Landroidx/palette/graphics/Target;

.field public static final VIBRANT:Landroidx/palette/graphics/Target;


# instance fields
.field public final mIsExclusive:Z

.field public final mLightnessTargets:[F

.field public final mSaturationTargets:[F

.field public final mWeights:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const v3, 0x3f0ccccd    # 0.55f

    .line 12
    .line 13
    .line 14
    aput v3, v1, v2

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const v5, 0x3f3d70a4    # 0.74f

    .line 18
    .line 19
    .line 20
    aput v5, v1, v4

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 23
    .line 24
    const v1, 0x3eb33333    # 0.35f

    .line 25
    .line 26
    .line 27
    aput v1, v0, v2

    .line 28
    .line 29
    const/high16 v6, 0x3f800000    # 1.0f

    .line 30
    .line 31
    aput v6, v0, v4

    .line 32
    .line 33
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    .line 39
    .line 40
    iget-object v7, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 41
    .line 42
    const v8, 0x3e99999a    # 0.3f

    .line 43
    .line 44
    .line 45
    aput v8, v7, v2

    .line 46
    .line 47
    const/high16 v9, 0x3f000000    # 0.5f

    .line 48
    .line 49
    aput v9, v7, v4

    .line 50
    .line 51
    const/4 v10, 0x2

    .line 52
    const v11, 0x3f333333    # 0.7f

    .line 53
    .line 54
    .line 55
    aput v11, v7, v10

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 58
    .line 59
    aput v1, v0, v2

    .line 60
    .line 61
    aput v6, v0, v4

    .line 62
    .line 63
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 64
    .line 65
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 66
    .line 67
    .line 68
    sput-object v0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    .line 69
    .line 70
    iget-object v7, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 71
    .line 72
    const v12, 0x3e851eb8    # 0.26f

    .line 73
    .line 74
    .line 75
    aput v12, v7, v4

    .line 76
    .line 77
    const v13, 0x3ee66666    # 0.45f

    .line 78
    .line 79
    .line 80
    aput v13, v7, v10

    .line 81
    .line 82
    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 83
    .line 84
    aput v1, v0, v2

    .line 85
    .line 86
    aput v6, v0, v4

    .line 87
    .line 88
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 89
    .line 90
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 91
    .line 92
    .line 93
    sput-object v0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    .line 94
    .line 95
    iget-object v1, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 96
    .line 97
    aput v3, v1, v2

    .line 98
    .line 99
    aput v5, v1, v4

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 102
    .line 103
    aput v8, v0, v4

    .line 104
    .line 105
    const v1, 0x3ecccccd    # 0.4f

    .line 106
    .line 107
    .line 108
    aput v1, v0, v10

    .line 109
    .line 110
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 111
    .line 112
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 113
    .line 114
    .line 115
    sput-object v0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    .line 116
    .line 117
    iget-object v3, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 118
    .line 119
    aput v8, v3, v2

    .line 120
    .line 121
    aput v9, v3, v4

    .line 122
    .line 123
    aput v11, v3, v10

    .line 124
    .line 125
    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 126
    .line 127
    aput v8, v0, v4

    .line 128
    .line 129
    aput v1, v0, v10

    .line 130
    .line 131
    new-instance v0, Landroidx/palette/graphics/Target;

    .line 132
    .line 133
    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    .line 134
    .line 135
    .line 136
    sput-object v0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    .line 137
    .line 138
    iget-object v2, v0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    .line 139
    .line 140
    aput v12, v2, v4

    .line 141
    .line 142
    aput v13, v2, v10

    .line 143
    .line 144
    iget-object v0, v0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    .line 145
    .line 146
    aput v8, v0, v4

    .line 147
    .line 148
    aput v1, v0, v10

    .line 149
    .line 150
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    new-array v2, v0, [F

    .line 3
    iput-object v2, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v3, 0x1

    .line 5
    iput-boolean v3, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    const/4 p0, 0x0

    const/4 v4, 0x0

    aput v4, v1, p0

    const/high16 v5, 0x3f000000    # 0.5f

    aput v5, v1, v3

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v1, v6

    aput v4, v2, p0

    aput v5, v2, v3

    aput v7, v2, v6

    const v1, 0x3e75c28f    # 0.24f

    aput v1, v0, p0

    return-void
.end method

.method public constructor <init>(Landroidx/palette/graphics/Target;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    new-array v2, v0, [F

    .line 8
    iput-object v2, p0, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Landroidx/palette/graphics/Target;->mWeights:[F

    const/4 v3, 0x1

    .line 10
    iput-boolean v3, p0, Landroidx/palette/graphics/Target;->mIsExclusive:Z

    .line 11
    iget-object p0, p1, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object p0, p1, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    array-length v1, v2

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object p0, p1, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length p1, v0

    invoke-static {p0, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
