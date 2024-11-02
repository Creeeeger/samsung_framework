.class public Lcom/samsung/android/nexus/video/VideoGL;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;
    }
.end annotation


# static fields
.field public static final DEFAULT_HSV_HUE:F = 0.0f

.field public static final DEFAULT_HSV_SATURATION:F = 0.5f

.field public static final DEFAULT_HSV_VALUE:F = 0.5f

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final POSITION_OFFSET:I = 0x0

.field private static final STRIDE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VideoGL"

.field private static final TEXTURE_COORD_OFFSET:I = 0x3

.field private static final TEXTURE_UV_OFFSET:I = 0x2

.field private static final TOTAL_COMPONENT_COUNT:I = 0x5


# instance fields
.field protected mAngle:F

.field protected mBoundRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mContrast:F

.field private mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

.field private mGlobalAlpha:F

.field private mHdrSaturationConverted:F

.field private mHsvFilterColor:[F

.field private mHsvFilterColorConverted:[F

.field private mIsHdrModeEnabled:Z

.field private mIsTransparencyEnabled:Z

.field private mObjectCenter:Landroid/graphics/PointF;

.field private mObjectHalfHeight:F

.field private mObjectHalfWidth:F

.field private mObjectLeftBottom:[F

.field private mObjectLeftTop:[F

.field protected mObjectRect:Landroid/graphics/RectF;

.field private mObjectRightBottom:[F

.field private mObjectRightTop:[F

.field protected mOffsetX:F

.field protected mOffsetY:F

.field protected mOffsetZ:F

.field private mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

.field private mRgbFilterColor:[F

.field private mRotatedLeftBottom:[F

.field private mRotatedLeftTop:[F

.field private mRotatedRightBottom:[F

.field private mRotatedRightTop:[F

.field protected mRotationMatrix:[F

.field protected mRotationX:F

.field protected mRotationY:F

.field protected mRotationZ:F

.field protected mSTMatrix:[F

.field private mShader:Lcom/samsung/android/nexus/egl/core/Shader;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureID:I

.field private final mTriangleVerticesData:[F

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

.field private mWorldHeight:F

.field private mWorldWidth:F

.field protected mZ:F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muContrastHandle:I

.field private muGlobalAlphaHandle:I

.field private muHsvFilterColorHandle:I

.field private muNightFilterHandle:I

.field private muRgbFilterColorHandle:I

.field private muSTMatrixHandle:I

.field private muTransparencyHandle:I


# direct methods
.method public static synthetic $r8$lambda$R_WrVvLvhqmh983jNpv06cL80-c(Lcom/samsung/android/nexus/video/VideoGL;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->lambda$createVideoSurface$0(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/nexus/video/VideoGL;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;Landroid/graphics/Rect;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTriangleVerticesData:[F

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;-><init>(Lcom/samsung/android/nexus/video/VideoGL;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 6
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    new-array v1, v1, [F

    .line 7
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldWidth:F

    .line 9
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldHeight:F

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    .line 11
    iput-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    .line 12
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    .line 13
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    .line 16
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mZ:F

    .line 17
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    .line 18
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    .line 19
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetZ:F

    .line 20
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    .line 21
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationX:F

    .line 22
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationY:F

    .line 23
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationZ:F

    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 24
    iput-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    new-array v0, v0, [F

    .line 25
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    .line 26
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfWidth:F

    .line 27
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfHeight:F

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectCenter:Landroid/graphics/PointF;

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 29
    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    new-array v1, v0, [F

    .line 30
    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    new-array v1, v0, [F

    .line 31
    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    new-array v1, v0, [F

    .line 32
    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    new-array v1, v0, [F

    .line 33
    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    new-array v1, v0, [F

    .line 34
    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    new-array v1, v0, [F

    .line 35
    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    new-array v0, v0, [F

    .line 36
    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    .line 37
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->initElements()V

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->loadHandles()V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->generateTexture()V

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->createVideoSurface()V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setObjectRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic access$100(Lcom/samsung/android/nexus/video/VideoGL;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private applySize(FFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p1, "Object size is null. So cannot apply the size."

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    sub-float/2addr p1, v0

    .line 34
    const/high16 p3, 0x40000000    # 2.0f

    .line 35
    .line 36
    div-float/2addr p1, p3

    .line 37
    sub-float/2addr p2, v1

    .line 38
    div-float/2addr p2, p3

    .line 39
    iget-object p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 40
    .line 41
    iget v0, p3, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    sub-float/2addr v0, p1

    .line 44
    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 45
    .line 46
    iget v0, p3, Landroid/graphics/RectF;->top:F

    .line 47
    .line 48
    add-float/2addr v0, p1

    .line 49
    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 50
    .line 51
    iget v0, p3, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    add-float/2addr v0, p1

    .line 54
    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 55
    .line 56
    iget p1, p3, Landroid/graphics/RectF;->bottom:F

    .line 57
    .line 58
    sub-float/2addr p1, p2

    .line 59
    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 63
    .line 64
    iget v0, p3, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    add-float/2addr v0, p1

    .line 67
    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 68
    .line 69
    iget p1, p3, Landroid/graphics/RectF;->top:F

    .line 70
    .line 71
    sub-float/2addr p1, p2

    .line 72
    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    .line 73
    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateObjectFactors()V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private calculateBoundsOffset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldWidth:F

    .line 19
    .line 20
    sub-float/2addr v0, v1

    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr v0, v1

    .line 24
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    .line 25
    .line 26
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 27
    .line 28
    add-float/2addr v0, v2

    .line 29
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldHeight:F

    .line 40
    .line 41
    sub-float/2addr v2, v3

    .line 42
    div-float/2addr v2, v1

    .line 43
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 46
    .line 47
    add-float/2addr v2, v1

    .line 48
    const/high16 v1, -0x40800000    # -1.0f

    .line 49
    .line 50
    mul-float/2addr v2, v1

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/nexus/video/VideoGL;->setOffset(FFF)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method private calculateObjectFactors()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfWidth:F

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    div-float/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfHeight:F

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    new-array v3, v2, [F

    .line 34
    .line 35
    iget v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfWidth:F

    .line 36
    .line 37
    neg-float v5, v4

    .line 38
    const/4 v6, 0x0

    .line 39
    aput v5, v3, v6

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    aput v0, v3, v5

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    const/4 v8, 0x0

    .line 46
    aput v8, v3, v7

    .line 47
    .line 48
    const/4 v9, 0x3

    .line 49
    aput v8, v3, v9

    .line 50
    .line 51
    iput-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    .line 52
    .line 53
    new-array v3, v2, [F

    .line 54
    .line 55
    aput v4, v3, v6

    .line 56
    .line 57
    aput v0, v3, v5

    .line 58
    .line 59
    aput v8, v3, v7

    .line 60
    .line 61
    aput v8, v3, v9

    .line 62
    .line 63
    iput-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    .line 64
    .line 65
    new-array v3, v2, [F

    .line 66
    .line 67
    neg-float v10, v4

    .line 68
    aput v10, v3, v6

    .line 69
    .line 70
    neg-float v10, v0

    .line 71
    aput v10, v3, v5

    .line 72
    .line 73
    aput v8, v3, v7

    .line 74
    .line 75
    aput v8, v3, v9

    .line 76
    .line 77
    iput-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    .line 78
    .line 79
    new-array v2, v2, [F

    .line 80
    .line 81
    aput v4, v2, v6

    .line 82
    .line 83
    neg-float v0, v0

    .line 84
    aput v0, v2, v5

    .line 85
    .line 86
    aput v8, v2, v7

    .line 87
    .line 88
    aput v8, v2, v9

    .line 89
    .line 90
    iput-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectCenter:Landroid/graphics/PointF;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 95
    .line 96
    iget v2, p0, Landroid/graphics/RectF;->left:F

    .line 97
    .line 98
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 99
    .line 100
    add-float/2addr v2, v3

    .line 101
    div-float/2addr v2, v1

    .line 102
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 103
    .line 104
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 105
    .line 106
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 107
    .line 108
    add-float/2addr v2, p0

    .line 109
    div-float/2addr v2, v1

    .line 110
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 111
    .line 112
    return-void
.end method

.method private calculateRotatedFactors()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    iget-object v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 43
    .line 44
    .line 45
    iget-object v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    iget-object v10, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    iget-object v12, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    .line 52
    .line 53
    const/4 v13, 0x0

    .line 54
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    .line 61
    .line 62
    iget-object v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    .line 63
    .line 64
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    .line 68
    .line 69
    iget-object v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    .line 70
    .line 71
    iget-object v10, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    .line 72
    .line 73
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    .line 80
    .line 81
    array-length v2, v0

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    .line 87
    .line 88
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    .line 89
    .line 90
    array-length v2, v0

    .line 91
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    .line 95
    .line 96
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    .line 97
    .line 98
    array-length v2, v0

    .line 99
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    .line 105
    .line 106
    array-length v1, v0

    .line 107
    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method private createVideoSurface()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Create video surface."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 9
    .line 10
    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    .line 17
    new-instance v2, Lcom/samsung/android/nexus/video/VideoGL$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/samsung/android/nexus/video/VideoGL$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/nexus/video/VideoGL;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/view/Surface;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurface:Landroid/view/Surface;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Create surface media player = "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurface:Landroid/view/Surface;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method private generateTexture()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 6
    .line 7
    .line 8
    aget v0, v1, v2

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    .line 11
    .line 12
    const p0, 0x8d65

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x2801

    .line 19
    .line 20
    const v1, 0x46180400    # 9729.0f

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x2800

    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private initElements()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTriangleVerticesData:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    mul-int/lit8 v0, v0, 0x4

    .line 5
    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTriangleVerticesData:[F

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/samsung/android/nexus/egl/core/Shader;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    sget v3, Lcom/samsung/android/nexus/video/R$raw;->video_vert_shader:I

    .line 39
    .line 40
    sget v4, Lcom/samsung/android/nexus/video/R$raw;->video_frag_shader:I

    .line 41
    .line 42
    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;II)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    .line 48
    .line 49
    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private synthetic lambda$createVideoSurface$0(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->frameUpdated()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private loadHandles()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 2
    .line 3
    const-string v1, "aPosition"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->maPositionHandle:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 12
    .line 13
    const-string v1, "aTextureCoord"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->maTextureHandle:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 22
    .line 23
    const-string v1, "uGlobalAlpha"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muGlobalAlphaHandle:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 32
    .line 33
    const-string v1, "uNightFilter"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muNightFilterHandle:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 42
    .line 43
    const-string v1, "uRgbFilterColor"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muRgbFilterColorHandle:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 52
    .line 53
    const-string v1, "uHsvFilterColor"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muHsvFilterColorHandle:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 62
    .line 63
    const-string v1, "uContrast"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muContrastHandle:I

    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 72
    .line 73
    const-string v1, "uSTMatrix"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muSTMatrixHandle:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 82
    .line 83
    const-string v1, "uTransparency"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muTransparencyHandle:I

    .line 90
    .line 91
    return-void
.end method

.method private updateRotationMatrix()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    .line 11
    .line 12
    iget v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationX:F

    .line 13
    .line 14
    iget v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationY:F

    .line 15
    .line 16
    iget v7, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationZ:F

    .line 17
    .line 18
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private updateVertices()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "Cannot update vertices because of the object rect is null."

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectCenter:Landroid/graphics/PointF;

    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 16
    .line 17
    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    .line 18
    .line 19
    add-float/2addr v1, v2

    .line 20
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 21
    .line 22
    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    .line 23
    .line 24
    add-float/2addr v0, v2

    .line 25
    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mZ:F

    .line 26
    .line 27
    iget v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetZ:F

    .line 28
    .line 29
    add-float/2addr v2, v3

    .line 30
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    .line 39
    .line 40
    aget v5, v5, v4

    .line 41
    .line 42
    add-float/2addr v5, v1

    .line 43
    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    aget v5, v5, v6

    .line 52
    .line 53
    add-float/2addr v5, v0

    .line 54
    invoke-virtual {v3, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 58
    .line 59
    const/4 v5, 0x2

    .line 60
    invoke-virtual {v3, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 64
    .line 65
    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    .line 66
    .line 67
    aget v5, v5, v4

    .line 68
    .line 69
    add-float/2addr v5, v1

    .line 70
    const/4 v7, 0x5

    .line 71
    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    .line 77
    .line 78
    aget v5, v5, v6

    .line 79
    .line 80
    add-float/2addr v5, v0

    .line 81
    const/4 v7, 0x6

    .line 82
    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 86
    .line 87
    const/4 v5, 0x7

    .line 88
    invoke-virtual {v3, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 92
    .line 93
    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    .line 94
    .line 95
    aget v5, v5, v4

    .line 96
    .line 97
    add-float/2addr v5, v1

    .line 98
    const/16 v7, 0xa

    .line 99
    .line 100
    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    .line 106
    .line 107
    aget v5, v5, v6

    .line 108
    .line 109
    add-float/2addr v5, v0

    .line 110
    const/16 v7, 0xb

    .line 111
    .line 112
    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 116
    .line 117
    const/16 v5, 0xc

    .line 118
    .line 119
    invoke-virtual {v3, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 123
    .line 124
    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    .line 125
    .line 126
    aget v4, v5, v4

    .line 127
    .line 128
    add-float/2addr v4, v1

    .line 129
    const/16 v1, 0xf

    .line 130
    .line 131
    invoke-virtual {v3, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    .line 137
    .line 138
    aget v3, v3, v6

    .line 139
    .line 140
    add-float/2addr v3, v0

    .line 141
    const/16 v0, 0x10

    .line 142
    .line 143
    invoke-virtual {v1, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 147
    .line 148
    const/16 v0, 0x11

    .line 149
    .line 150
    invoke-virtual {p0, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 151
    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Clear"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurface:Landroid/view/Surface;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    .line 23
    .line 24
    filled-new-array {v0}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 39
    .line 40
    .line 41
    const-string v1, "glUseProgram : release"

    .line 42
    .line 43
    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v1, v0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    .line 47
    .line 48
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "glDeleteProgram id = "

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v2, v0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v1, v0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    .line 71
    .line 72
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "glDeleteShader : vertex id = "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v2, v0, Lcom/samsung/android/nexus/egl/core/Shader;->mVertexShaderId:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget v1, v0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    .line 95
    .line 96
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "glDeleteShader : fragment id = "

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v0, v0, Lcom/samsung/android/nexus/egl/core/Shader;->mFragmentShaderId:I

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 127
    .line 128
    return-void
.end method

.method public getContrast()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    .line 2
    .line 3
    return p0
.end method

.method public getGlobalAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    .line 2
    .line 3
    return p0
.end method

.method public getHdrModeEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public getHdrSaturation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    .line 2
    .line 3
    return p0
.end method

.method public getHsvFilterColor()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public getHsvHue()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p0, p0, v0

    .line 5
    .line 6
    return p0
.end method

.method public getHsvSaturation()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    aget p0, p0, v0

    .line 5
    .line 6
    return p0
.end method

.method public getHsvValue()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    aget p0, p0, v0

    .line 5
    .line 6
    return p0
.end method

.method public getOffsetX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    .line 2
    .line 3
    return p0
.end method

.method public getOffsetY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    .line 2
    .line 3
    return p0
.end method

.method public getTransparencyEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    .line 2
    .line 3
    return-object p0
.end method

.method public onDrawFrame()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->access$000(Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 17
    .line 18
    iget v0, v0, Lcom/samsung/android/nexus/egl/core/Shader;->mProgramId:I

    .line 19
    .line 20
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 21
    .line 22
    .line 23
    const-string v0, "use program"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/world/BaseWorld;->sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "send params"

    .line 36
    .line 37
    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muGlobalAlphaHandle:I

    .line 41
    .line 42
    iget v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x2

    .line 52
    const/4 v4, 0x1

    .line 53
    const/4 v5, 0x0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->muNightFilterHandle:I

    .line 57
    .line 58
    aget v0, v0, v1

    .line 59
    .line 60
    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muRgbFilterColorHandle:I

    .line 64
    .line 65
    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    .line 66
    .line 67
    aget v7, v6, v5

    .line 68
    .line 69
    aget v8, v6, v4

    .line 70
    .line 71
    aget v6, v6, v3

    .line 72
    .line 73
    invoke-static {v0, v7, v8, v6}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muNightFilterHandle:I

    .line 78
    .line 79
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muHsvFilterColorHandle:I

    .line 87
    .line 88
    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    .line 89
    .line 90
    aget v7, v6, v5

    .line 91
    .line 92
    iget v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    .line 93
    .line 94
    aget v3, v6, v3

    .line 95
    .line 96
    invoke-static {v0, v7, v8, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muContrastHandle:I

    .line 100
    .line 101
    iget v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    .line 102
    .line 103
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muHsvFilterColorHandle:I

    .line 108
    .line 109
    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    .line 110
    .line 111
    aget v7, v6, v5

    .line 112
    .line 113
    aget v8, v6, v4

    .line 114
    .line 115
    aget v3, v6, v3

    .line 116
    .line 117
    invoke-static {v0, v7, v8, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 118
    .line 119
    .line 120
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muContrastHandle:I

    .line 121
    .line 122
    const/high16 v3, -0x40800000    # -1.0f

    .line 123
    .line 124
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muTransparencyHandle:I

    .line 132
    .line 133
    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    .line 135
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 136
    .line 137
    .line 138
    const/16 v0, 0xbe2

    .line 139
    .line 140
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 141
    .line 142
    .line 143
    const/16 v0, 0x302

    .line 144
    .line 145
    const/16 v2, 0x303

    .line 146
    .line 147
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_3
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muTransparencyHandle:I

    .line 152
    .line 153
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 154
    .line 155
    .line 156
    :goto_2
    const v0, 0x84c0

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 160
    .line 161
    .line 162
    const v0, 0x8d65

    .line 163
    .line 164
    .line 165
    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    .line 166
    .line 167
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 168
    .line 169
    .line 170
    const-string v0, "bind texture"

    .line 171
    .line 172
    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 176
    .line 177
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    .line 179
    .line 180
    iget v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->maPositionHandle:I

    .line 181
    .line 182
    const/4 v7, 0x3

    .line 183
    const/16 v0, 0x1406

    .line 184
    .line 185
    const/4 v2, 0x0

    .line 186
    const/16 v12, 0x14

    .line 187
    .line 188
    iget-object v11, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 189
    .line 190
    const/16 v8, 0x1406

    .line 191
    .line 192
    const/4 v9, 0x0

    .line 193
    const/16 v10, 0x14

    .line 194
    .line 195
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 196
    .line 197
    .line 198
    iget v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->maPositionHandle:I

    .line 199
    .line 200
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 201
    .line 202
    .line 203
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    .line 207
    .line 208
    const-string v3, "send vertex data"

    .line 209
    .line 210
    invoke-static {v3}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 214
    .line 215
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    .line 217
    .line 218
    iget v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->maTextureHandle:I

    .line 219
    .line 220
    const/4 v9, 0x2

    .line 221
    iget-object v13, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 222
    .line 223
    move v10, v0

    .line 224
    move v11, v2

    .line 225
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 226
    .line 227
    .line 228
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->maTextureHandle:I

    .line 229
    .line 230
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 234
    .line 235
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    .line 237
    .line 238
    const-string v0, "send texture coord data"

    .line 239
    .line 240
    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muSTMatrixHandle:I

    .line 244
    .line 245
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    .line 246
    .line 247
    invoke-static {v0, v4, v5, p0, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 248
    .line 249
    .line 250
    const/4 p0, 0x5

    .line 251
    const/4 v0, 0x4

    .line 252
    invoke-static {p0, v5, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 253
    .line 254
    .line 255
    :cond_4
    :goto_3
    return-void
.end method

.method public setBoundRect(Landroid/graphics/RectF;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set bounds : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/graphics/RectF;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    cmpl-float v4, v1, v3

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    cmpl-float v3, v2, v3

    .line 49
    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 54
    .line 55
    div-float v0, v1, p1

    .line 56
    .line 57
    div-float p1, v2, p1

    .line 58
    .line 59
    new-instance v3, Landroid/graphics/RectF;

    .line 60
    .line 61
    neg-float v0, v0

    .line 62
    add-float/2addr v1, v0

    .line 63
    sub-float v2, p1, v2

    .line 64
    .line 65
    invoke-direct {v3, v0, p1, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v3}, Lcom/samsung/android/nexus/video/VideoGL;->setObjectRect(Landroid/graphics/RectF;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateBoundsOffset()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "Cannot set bound. Size is wrong. bounds : "

    .line 78
    .line 79
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public setContrast(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set contrast = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    .line 21
    .line 22
    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Apply crop rect = "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 32
    .line 33
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 66
    .line 67
    const/16 v1, 0xd

    .line 68
    .line 69
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 75
    .line 76
    const/16 v1, 0xe

    .line 77
    .line 78
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 84
    .line 85
    const/16 v1, 0x12

    .line 86
    .line 87
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 93
    .line 94
    const/16 v0, 0x13

    .line 95
    .line 96
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 97
    .line 98
    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public setGlobalAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    .line 2
    .line 3
    return-void
.end method

.method public setHdrModeEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set HDR mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    return-void
.end method

.method public setHdrModeEnabled(ZFF)V
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrSaturation(F)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setContrast(F)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(Z)V

    return-void
.end method

.method public setHdrSaturation(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set hdr saturation = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    .line 21
    .line 22
    mul-float/2addr p1, v0

    .line 23
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    .line 24
    .line 25
    return-void
.end method

.method public setHsvFilterColor([F)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x3

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget v0, p1, v0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvHue(F)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aget v0, p1, v0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvSaturation(F)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    aget p1, p1, v0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvValue(F)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setHsvHue(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    .line 7
    .line 8
    aput p1, p0, v1

    .line 9
    .line 10
    return-void
.end method

.method public setHsvSaturation(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    .line 7
    .line 8
    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    .line 10
    mul-float/2addr p1, v0

    .line 11
    aput p1, p0, v1

    .line 12
    .line 13
    return-void
.end method

.method public setHsvValue(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    .line 7
    .line 8
    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    .line 10
    mul-float/2addr p1, v0

    .line 11
    aput p1, p0, v1

    .line 12
    .line 13
    return-void
.end method

.method public setObjectRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoGL;->setObjectRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setObjectRect(Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set object rect : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateObjectFactors()V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateRotatedFactors()V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    return-void
.end method

.method public setOffset(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetZ:F

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setOffsetXY(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRgbFilterColor([F)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x4

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Set color filter R = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget v2, p1, v2

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", G = "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aget v2, p1, v2

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", B = "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    aget v2, p1, v2

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ", A = "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    aget v2, p1, v2

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [F

    .line 68
    .line 69
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "Set color filter to null"

    .line 75
    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    .line 81
    .line 82
    :goto_1
    return-void
.end method

.method public setRotation(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationX:F

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationY:F

    .line 6
    .line 7
    iput p4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationZ:F

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateRotationMatrix()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateRotatedFactors()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-float/2addr v0, p1

    .line 15
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    mul-float/2addr v1, p1

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/nexus/video/VideoGL;->applySize(FFI)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setSize(FF)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/nexus/video/VideoGL;->applySize(FFI)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setTransparencyEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Set transparency mode = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    .line 21
    .line 22
    return-void
.end method

.method public setVideoOrientation(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Apply video orientation : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string p1, "0"

    .line 27
    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Apply video orientation adj : "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/16 v1, 0x717

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eq v0, v1, :cond_5

    .line 57
    .line 58
    const v1, 0xbee9

    .line 59
    .line 60
    .line 61
    if-eq v0, v1, :cond_3

    .line 62
    .line 63
    const v1, 0xc28b

    .line 64
    .line 65
    .line 66
    if-eq v0, v1, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "270"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move p1, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-string v0, "180"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move p1, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const-string v0, "90"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_6

    .line 98
    .line 99
    :goto_0
    const/4 p1, -0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    const/4 p1, 0x0

    .line 102
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    if-eqz p1, :cond_9

    .line 106
    .line 107
    if-eq p1, v3, :cond_8

    .line 108
    .line 109
    if-eq p1, v2, :cond_7

    .line 110
    .line 111
    new-instance p1, Landroid/graphics/PointF;

    .line 112
    .line 113
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Landroid/graphics/PointF;

    .line 117
    .line 118
    invoke-direct {v2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Landroid/graphics/PointF;

    .line 122
    .line 123
    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Landroid/graphics/PointF;

    .line 127
    .line 128
    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    new-instance p1, Landroid/graphics/PointF;

    .line 133
    .line 134
    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 135
    .line 136
    .line 137
    new-instance v2, Landroid/graphics/PointF;

    .line 138
    .line 139
    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 140
    .line 141
    .line 142
    new-instance v3, Landroid/graphics/PointF;

    .line 143
    .line 144
    invoke-direct {v3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 145
    .line 146
    .line 147
    new-instance v4, Landroid/graphics/PointF;

    .line 148
    .line 149
    invoke-direct {v4, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_8
    new-instance p1, Landroid/graphics/PointF;

    .line 154
    .line 155
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Landroid/graphics/PointF;

    .line 159
    .line 160
    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 161
    .line 162
    .line 163
    new-instance v3, Landroid/graphics/PointF;

    .line 164
    .line 165
    invoke-direct {v3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 166
    .line 167
    .line 168
    new-instance v4, Landroid/graphics/PointF;

    .line 169
    .line 170
    invoke-direct {v4, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    new-instance p1, Landroid/graphics/PointF;

    .line 175
    .line 176
    invoke-direct {p1, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Landroid/graphics/PointF;

    .line 180
    .line 181
    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 182
    .line 183
    .line 184
    new-instance v3, Landroid/graphics/PointF;

    .line 185
    .line 186
    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 187
    .line 188
    .line 189
    new-instance v4, Landroid/graphics/PointF;

    .line 190
    .line 191
    invoke-direct {v4, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 192
    .line 193
    .line 194
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 195
    .line 196
    const/4 v1, 0x3

    .line 197
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 198
    .line 199
    invoke-virtual {v0, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 203
    .line 204
    const/4 v1, 0x4

    .line 205
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 206
    .line 207
    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 211
    .line 212
    const/16 v1, 0x8

    .line 213
    .line 214
    iget v3, v4, Landroid/graphics/PointF;->x:F

    .line 215
    .line 216
    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 220
    .line 221
    const/16 v1, 0x9

    .line 222
    .line 223
    iget v3, v4, Landroid/graphics/PointF;->y:F

    .line 224
    .line 225
    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 229
    .line 230
    const/16 v1, 0xd

    .line 231
    .line 232
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 233
    .line 234
    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 238
    .line 239
    const/16 v1, 0xe

    .line 240
    .line 241
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 242
    .line 243
    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 247
    .line 248
    const/16 v0, 0x12

    .line 249
    .line 250
    iget v1, v2, Landroid/graphics/PointF;->x:F

    .line 251
    .line 252
    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 253
    .line 254
    .line 255
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    .line 256
    .line 257
    const/16 p1, 0x13

    .line 258
    .line 259
    iget v0, v2, Landroid/graphics/PointF;->y:F

    .line 260
    .line 261
    invoke-virtual {p0, p1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 262
    .line 263
    .line 264
    return-void
.end method

.method public setWorldSize(II)V
    .locals 1

    .line 1
    int-to-float v0, p1

    .line 2
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldWidth:F

    .line 3
    .line 4
    int-to-float v0, p2

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldHeight:F

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateBoundsOffset()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
