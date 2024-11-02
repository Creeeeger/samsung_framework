.class public abstract Lcom/samsung/android/nexus/particle/BaseParticleLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapCanvas:Landroid/graphics/Canvas;

.field public mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

.field public mNeedToInit:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setLayerParams(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract drawOnCanvas(Landroid/graphics/Canvas;)V
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onDraw()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "BaseParticleLayer"

    const-string v2, "Start to init path effect elements"

    .line 2
    invoke-static {v0, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v0

    .line 6
    iget v0, v0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v2

    .line 8
    iget v2, v2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    .line 9
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 10
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->clear()V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    .line 14
    iget v0, v0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v3

    .line 16
    iget v3, v3, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    neg-float v0, v0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v2

    .line 18
    iget v2, v2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v2

    .line 20
    iget v2, v2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    .line 21
    new-instance v2, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v3, v3

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v5

    .line 23
    iget v5, v5, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    add-int/2addr v5, v0

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v6

    .line 25
    iget v6, v6, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    sub-int v6, v3, v6

    .line 26
    invoke-direct {v4, v0, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->init()V

    .line 29
    iput-boolean v1, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->prepareToDraw()V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    iget-object v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 36
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    .line 37
    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    if-gez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0xde1

    .line 39
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 40
    invoke-static {v3, v1, v2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 41
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mEffectLayer:Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onDrawElements()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->drawOnCanvas(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    .line 3
    .line 4
    return-void
.end method

.method public onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract prepareToDraw()V
.end method
