.class public final Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
.super Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEFAULT_INDICES:[S

.field public static final DEFAULT_VERTICES:[F


# instance fields
.field public final mObjectRect:Landroid/graphics/Rect;

.field public final mRotationMatrix:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_VERTICES:[F

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    new-array v0, v0, [S

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_INDICES:[S

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :array_1
    .array-data 2
        0x0s
        0x2s
        0x3s
        0x0s
        0x3s
        0x1s
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_VERTICES:[F

    sget-object v1, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->DEFAULT_COORD:[F

    sget-object v2, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_INDICES:[S

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;-><init>(Landroid/graphics/Bitmap;[F[F[S)V

    const/16 p2, 0x10

    new-array p2, p2, [F

    .line 3
    iput-object p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    .line 4
    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final generateElementNameList()[Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "aPosition"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final generateElementSizeList()[I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    filled-new-array {p0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final init()V
    .locals 14

    .line 1
    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->init()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    const/high16 v3, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v2, v3

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    int-to-float v4, v4

    .line 43
    div-float/2addr v4, v3

    .line 44
    const/4 v5, 0x4

    .line 45
    new-array v6, v5, [F

    .line 46
    .line 47
    neg-float v7, v2

    .line 48
    aput v7, v6, v1

    .line 49
    .line 50
    const/4 v8, 0x1

    .line 51
    aput v4, v6, v8

    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    const/4 v10, 0x0

    .line 55
    aput v10, v6, v9

    .line 56
    .line 57
    const/4 v11, 0x3

    .line 58
    aput v10, v6, v11

    .line 59
    .line 60
    new-array v12, v5, [F

    .line 61
    .line 62
    aput v2, v12, v1

    .line 63
    .line 64
    aput v4, v12, v8

    .line 65
    .line 66
    aput v10, v12, v9

    .line 67
    .line 68
    aput v10, v12, v11

    .line 69
    .line 70
    new-array v13, v5, [F

    .line 71
    .line 72
    aput v7, v13, v1

    .line 73
    .line 74
    neg-float v4, v4

    .line 75
    aput v4, v13, v8

    .line 76
    .line 77
    aput v10, v13, v9

    .line 78
    .line 79
    aput v10, v13, v11

    .line 80
    .line 81
    new-array v7, v5, [F

    .line 82
    .line 83
    aput v2, v7, v1

    .line 84
    .line 85
    aput v4, v7, v8

    .line 86
    .line 87
    aput v10, v7, v9

    .line 88
    .line 89
    aput v10, v7, v11

    .line 90
    .line 91
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 94
    .line 95
    add-int/2addr v2, v4

    .line 96
    int-to-float v2, v2

    .line 97
    div-float/2addr v2, v3

    .line 98
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    add-int/2addr v4, v0

    .line 103
    int-to-float v0, v4

    .line 104
    div-float/2addr v0, v3

    .line 105
    add-float/2addr v2, v10

    .line 106
    add-float/2addr v0, v10

    .line 107
    iget-object v3, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 113
    .line 114
    const/16 v3, 0xc

    .line 115
    .line 116
    new-array v3, v3, [F

    .line 117
    .line 118
    aget v4, v6, v1

    .line 119
    .line 120
    add-float/2addr v4, v2

    .line 121
    aput v4, v3, v1

    .line 122
    .line 123
    aget v4, v6, v8

    .line 124
    .line 125
    add-float/2addr v4, v0

    .line 126
    aput v4, v3, v8

    .line 127
    .line 128
    aput v10, v3, v9

    .line 129
    .line 130
    aget v4, v12, v1

    .line 131
    .line 132
    add-float/2addr v4, v2

    .line 133
    aput v4, v3, v11

    .line 134
    .line 135
    aget v4, v12, v8

    .line 136
    .line 137
    add-float/2addr v4, v0

    .line 138
    aput v4, v3, v5

    .line 139
    .line 140
    const/4 v4, 0x5

    .line 141
    aput v10, v3, v4

    .line 142
    .line 143
    aget v4, v13, v1

    .line 144
    .line 145
    add-float/2addr v4, v2

    .line 146
    const/4 v5, 0x6

    .line 147
    aput v4, v3, v5

    .line 148
    .line 149
    aget v4, v13, v8

    .line 150
    .line 151
    add-float/2addr v4, v0

    .line 152
    const/4 v5, 0x7

    .line 153
    aput v4, v3, v5

    .line 154
    .line 155
    const/16 v4, 0x8

    .line 156
    .line 157
    aput v10, v3, v4

    .line 158
    .line 159
    aget v1, v7, v1

    .line 160
    .line 161
    add-float/2addr v1, v2

    .line 162
    const/16 v2, 0x9

    .line 163
    .line 164
    aput v1, v3, v2

    .line 165
    .line 166
    aget v1, v7, v8

    .line 167
    .line 168
    add-float/2addr v1, v0

    .line 169
    const/16 v0, 0xa

    .line 170
    .line 171
    aput v1, v3, v0

    .line 172
    .line 173
    const/16 v0, 0xb

    .line 174
    .line 175
    aput v10, v3, v0

    .line 176
    .line 177
    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 178
    .line 179
    .line 180
    return-void
.end method
