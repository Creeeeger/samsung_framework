.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBoundRect:Landroid/graphics/RectF;

.field public final mDraw:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

.field public final mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

.field public mInvalidateCount:I

.field public mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field public mMediaFd:Landroid/content/res/AssetFileDescriptor;

.field public mMediaPath:Ljava/lang/String;

.field public final mRenderUserMode:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mVideoInputStream:Ljava/io/FileInputStream;

.field public mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

.field public final mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/graphics/Rect;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 4
    new-instance v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;I)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mDraw:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    .line 5
    new-instance v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;I)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mRenderUserMode:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mMediaPath:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mMediaFd:Landroid/content/res/AssetFileDescriptor;

    .line 8
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoInputStream:Ljava/io/FileInputStream;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWallpaperVideoRenderer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageWallpaperVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mWorker:Landroid/os/HandlerThread;

    .line 11
    new-instance p2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    invoke-direct {p2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 12
    new-instance p2, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 13
    invoke-virtual {p2, v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    if-eqz p3, :cond_0

    .line 14
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->createVideoLayer()V

    return-void
.end method

.method private invalidate()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mDraw:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mWorker:Landroid/os/HandlerThread;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final createVideoLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ImageWallpaperVideoRenderer"

    .line 6
    .line 7
    const-string v0, "Cannot create video layer. Layer container is null."

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onSurfaceChanged(II)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onSurfaceChanged : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " , "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "ImageWallpaperVideoRenderer"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    cmpg-float v0, v0, v2

    .line 47
    .line 48
    if-lez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    cmpg-float v0, v0, v2

    .line 57
    .line 58
    if-gtz v0, :cond_2

    .line 59
    .line 60
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    .line 61
    .line 62
    int-to-float v3, p1

    .line 63
    int-to-float v4, p2

    .line 64
    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "onSurfaceChanged : mBoundRect is NULL or all values is 0 = "

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 89
    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setSize(II)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p2, "onSurfaceChanged : bound rect = "

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    :goto_0
    const-string p0, "onSurfaceChanged : Cannot update. Layer is null."

    .line 121
    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 1
    const-string v0, "ImageWallpaperVideoRenderer"

    .line 2
    .line 3
    const-string/jumbo v1, "reset"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglSurface()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglContext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->destroyEglContext()V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglDisplay()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 45
    .line 46
    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 47
    .line 48
    .line 49
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 52
    .line 53
    :cond_3
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglReady:Z

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->init(Landroid/view/SurfaceHolder;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->createVideoLayer()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 65
    .line 66
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->onSurfaceChanged(II)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mMediaPath:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setMediaPath(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mMediaFd:Landroid/content/res/AssetFileDescriptor;

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->setMediaFd(Landroid/content/res/AssetFileDescriptor;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->start()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    :goto_0
    const-string p0, "Cannot reset. Layer is null."

    .line 103
    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final setBoundRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setBoundRect : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "ImageWallpaperVideoRenderer"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string p0, "Cannot set bound rect. It is null."

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    :goto_0
    const-string p0, "Cannot set bound rect. Layer is null."

    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final setMediaFd(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setMediaFd : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "ImageWallpaperVideoRenderer"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string/jumbo p0, "setMediaFd : fd is null"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mMediaFd:Landroid/content/res/AssetFileDescriptor;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :goto_0
    const-string p0, "Cannot set media fd. Layer is null."

    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final setMediaPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setMediaPath : "

    .line 2
    .line 3
    .line 4
    const-string v1, "ImageWallpaperVideoRenderer"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mMediaPath:Ljava/lang/String;

    .line 19
    .line 20
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mMediaPath:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/io/FileInputStream;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoInputStream:Ljava/io/FileInputStream;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Ljava/io/FileDescriptor;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 54
    .line 55
    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda2;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    const-string/jumbo p0, "setMediaUri : SecurityException"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_1
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo p0, "setMediaUri : NullPointerException"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_2
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    const-string/jumbo p0, "setMediaUri : IOException"

    .line 91
    .line 92
    .line 93
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void

    .line 97
    :cond_1
    :goto_1
    const-string/jumbo p0, "setMediaPath : video file path is NULL"

    .line 98
    .line 99
    .line 100
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    const-string v0, "ImageWallpaperVideoRenderer"

    .line 2
    .line 3
    const-string/jumbo v1, "start"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mWorker:Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mRenderUserMode:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "makeCurrent : "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "EglHelper"

    .line 48
    .line 49
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->hasEglSurface()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, v1, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 59
    .line 60
    iget-object v3, v1, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;->mEglContext:Landroid/opengl/EGLContext;

    .line 63
    .line 64
    invoke-static {v0, v3, v3, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "makeCurrent failed: "

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->startPlayer()V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 101
    .line 102
    const/4 v0, 0x2

    .line 103
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    :goto_0
    const-string p0, "Cannot start. Layer is null."

    .line 108
    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    const-string v0, "ImageWallpaperVideoRenderer"

    .line 2
    .line 3
    const-string/jumbo v1, "stop"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/nexus/video/VideoLayer;->pausePlayer()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->seekToPlayer(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mWorker:Landroid/os/HandlerThread;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mRenderUserMode:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const-wide/16 v1, 0x64

    .line 36
    .line 37
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    const-string/jumbo p0, "stop: Layer is null."

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void
.end method
