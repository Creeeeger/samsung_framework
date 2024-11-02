.class public abstract Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mElementHandles:[I

.field public final mElementNameList:[Ljava/lang/String;

.field public final mElementSizeList:[I

.field public final mGlobalAlpha:F

.field public mGlobalAlphaHandle:I

.field public mIndexBuffer:Ljava/nio/ShortBuffer;

.field public mIndexCnt:I

.field public mShader:Lcom/samsung/android/nexus/egl/core/Shader;

.field public mStrideSize:I

.field public mTotalElementSize:I

.field public mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateElementSizeList()[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateElementNameList()[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    .line 35
    .line 36
    array-length v2, v2

    .line 37
    new-array v2, v2, [I

    .line 38
    .line 39
    iput-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    .line 40
    .line 41
    array-length v2, v1

    .line 42
    :goto_0
    if-ge v0, v2, :cond_0

    .line 43
    .line 44
    aget v3, v1, v0

    .line 45
    .line 46
    iget v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    .line 47
    .line 48
    add-int/2addr v4, v3

    .line 49
    iput v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    .line 55
    .line 56
    mul-int/lit8 v0, v0, 0x4

    .line 57
    .line 58
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    .line 17
    .line 18
    return-void
.end method

.method public abstract drawElementInner()V
.end method

.method public generateElementNameList()[Ljava/lang/String;
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

.method public generateElementSizeList()[I
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

.method public init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v2, v2, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/egl/world/WorldPerspective;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDraw()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onDrawElements()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDrawElements()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_4

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget v1, v1, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    .line 24
    .line 25
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/samsung/android/nexus/egl/world/BaseWorld;->sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlphaHandle:I

    .line 36
    .line 37
    if-ltz v1, :cond_2

    .line 38
    .line 39
    iget v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 42
    .line 43
    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    move v2, v1

    .line 46
    move v3, v2

    .line 47
    :goto_0
    array-length v4, v0

    .line 48
    iget-object v5, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    .line 49
    .line 50
    if-ge v2, v4, :cond_4

    .line 51
    .line 52
    aget v4, v5, v2

    .line 53
    .line 54
    if-gez v4, :cond_3

    .line 55
    .line 56
    aget v4, v0, v2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 60
    .line 61
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    .line 63
    .line 64
    aget v7, v0, v2

    .line 65
    .line 66
    const/16 v8, 0x1406

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    iget v10, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    .line 70
    .line 71
    iget-object v11, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 72
    .line 73
    move v6, v4

    .line 74
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 78
    .line 79
    .line 80
    aget v4, v0, v2

    .line 81
    .line 82
    :goto_1
    add-int/2addr v3, v4

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->drawElementInner()V

    .line 87
    .line 88
    .line 89
    :goto_2
    array-length p0, v0

    .line 90
    if-ge v1, p0, :cond_6

    .line 91
    .line 92
    aget p0, v5, v1

    .line 93
    .line 94
    if-gez p0, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 98
    .line 99
    .line 100
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    :goto_4
    return-void
.end method

.method public final onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method
