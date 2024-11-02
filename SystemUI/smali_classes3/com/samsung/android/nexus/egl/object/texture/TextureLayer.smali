.class public Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;
.super Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEFAULT_COORD:[F


# instance fields
.field public final alpha:F

.field public alphaHandle:I

.field public coordBuffer:Ljava/nio/FloatBuffer;

.field public coordHandle:I

.field public final mCoordinates:[F

.field public final mImage:Landroid/graphics/Bitmap;

.field public final mIndices:[S

.field public mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

.field public final mVertices:[F

.field public textureHandle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->DEFAULT_COORD:[F

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;-><init>(Landroid/graphics/Bitmap;[F[F[S)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[F[F[S)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alpha:F

    .line 6
    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mVertices:[F

    .line 8
    iput-object p3, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mCoordinates:[F

    .line 9
    iput-object p4, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mIndices:[S

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    .line 14
    .line 15
    filled-new-array {p0}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "glDeleteTextures handle = "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final drawElementInner()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alphaHandle:I

    .line 18
    .line 19
    iget v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alpha:F

    .line 20
    .line 21
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    .line 25
    .line 26
    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    .line 27
    .line 28
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    .line 32
    .line 33
    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    .line 34
    .line 35
    const/16 v2, 0xde1

    .line 36
    .line 37
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->textureHandle:I

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    .line 43
    .line 44
    iget v3, v3, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    .line 45
    .line 46
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    .line 50
    .line 51
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    iget v3, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    .line 60
    .line 61
    const/4 v4, 0x2

    .line 62
    const/16 v5, 0x1406

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    iget-object v8, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    .line 67
    .line 68
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    .line 72
    .line 73
    const/16 v3, 0x1403

    .line 74
    .line 75
    iget-object v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    invoke-static {v5, v0, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 82
    .line 83
    .line 84
    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    .line 85
    .line 86
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public generateElementNameList()[Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "aPosition"

    .line 2
    .line 3
    const-string v0, "aNormal"

    .line 4
    .line 5
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public generateElementSizeList()[I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    filled-new-array {p0, p0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->init()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/nexus/egl/core/Shader;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f120005

    .line 15
    .line 16
    .line 17
    const v3, 0x7f120004

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;II)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->loadHandles()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mVertices:[F

    .line 30
    .line 31
    if-eqz v1, :cond_8

    .line 32
    .line 33
    array-length v2, v1

    .line 34
    if-lez v2, :cond_8

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    .line 46
    .line 47
    :cond_2
    array-length v2, v1

    .line 48
    iget v3, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    .line 49
    .line 50
    div-int/2addr v2, v3

    .line 51
    array-length v2, v1

    .line 52
    shl-int/lit8 v2, v2, 0x2

    .line 53
    .line 54
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 76
    .line 77
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mCoordinates:[F

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    array-length v2, v1

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 90
    .line 91
    .line 92
    :cond_4
    array-length v2, v1

    .line 93
    shl-int/lit8 v2, v2, 0x2

    .line 94
    .line 95
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    .line 117
    .line 118
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mIndices:[S

    .line 119
    .line 120
    if-nez v1, :cond_6

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 124
    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 128
    .line 129
    .line 130
    :cond_7
    array-length v2, v1

    .line 131
    shl-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    .line 153
    .line 154
    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 155
    .line 156
    array-length v1, v1

    .line 157
    iput v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    .line 158
    .line 159
    :cond_8
    :goto_2
    new-instance v1, Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    .line 162
    .line 163
    invoke-direct {v1, v2, v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureData;-><init>(Landroid/graphics/Bitmap;I)V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    .line 167
    .line 168
    return-void
.end method

.method public final loadHandles()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    add-int/lit8 v5, v3, 0x1

    .line 11
    .line 12
    iget-object v6, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 13
    .line 14
    invoke-virtual {v6, v4}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iget-object v6, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    .line 19
    .line 20
    aput v4, v6, v3

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    move v3, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 27
    .line 28
    const-string v1, "uGlobalAlpha"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlphaHandle:I

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 37
    .line 38
    const-string v1, "uTextureOrig"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->textureHandle:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 47
    .line 48
    const-string v1, "aTextureCoordOrig"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 57
    .line 58
    const-string v1, "uTextureAlphaOrig"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alphaHandle:I

    .line 65
    .line 66
    return-void
.end method
