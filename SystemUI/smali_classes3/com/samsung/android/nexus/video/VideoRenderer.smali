.class public final Lcom/samsung/android/nexus/video/VideoRenderer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoRenderer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

.field private static final DEFAULT_CONTRAST:F = 1.6f

.field private static final DEFAULT_SATURATION:F = 0.7f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBoundRect:Landroid/graphics/RectF;

.field private final mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field private mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/nexus/video/VideoRenderer;->Companion:Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/samsung/android/nexus/video/VideoRenderer;

    .line 10
    .line 11
    const-string v0, "VideoRenderer"

    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/nexus/video/VideoRenderer;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/nexus/video/VideoRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 4
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p3, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    :cond_0
    const/4 p3, 0x2

    .line 6
    invoke-virtual {p2, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 7
    invoke-virtual {p2, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoRenderer;->generateLayer()V

    return-void
.end method

.method private final generateLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 21
    .line 22
    return-void
.end method

.method private final loggingError(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/nexus/video/VideoRenderer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getContrast()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getContrast()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHdrModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHdrModeEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHsvHue()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvHue()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHsvSaturation()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvSaturation()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHsvValue()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvValue()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getVideoLayer()Lcom/samsung/android/nexus/video/VideoLayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->draw()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setSize(II)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    .line 12
    .line 13
    int-to-float p2, p2

    .line 14
    int-to-float p3, p3

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoRenderer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final pausePlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->pausePlayer()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setBoundRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setContrast(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setContrast(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHdrModeEnabled(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3fcccccd    # 1.6f

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    return-void
.end method

.method public final setHdrModeEnabled(ZFF)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    return-void
.end method

.method public final setHsvColorFilter([F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvFilterColor([F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHsvHue(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvHue(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHsvSaturation(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvSaturation(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHsvValue(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMediaSource(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/net/Uri;)V

    return-void
.end method

.method public final setMediaSource(Landroid/net/Uri;Landroid/graphics/RectF;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/samsung/android/nexus/video/VideoRenderer;->setBoundRect(Landroid/graphics/RectF;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoRenderer;->setMediaSource(Landroid/net/Uri;)V

    return-void
.end method

.method public final setMediaSourceAfd(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startPlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->startPlayer()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final stopPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->stopPlayer()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
