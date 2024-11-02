.class public Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCustomInvalidator:Ljava/lang/Object;

.field public mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

.field public mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDestroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->setEffectLayerSize(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    if-lez p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->setEffectLayerSize(II)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-int v4, v0

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    float-to-int v5, v0

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->tapCommand(IIIJ)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 36
    .line 37
    const/4 v9, 0x2

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    float-to-int v10, v0

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    float-to-int v11, v0

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v12

    .line 52
    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->tapCommand(IIIJ)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    float-to-int v2, v2

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    float-to-int v3, v3

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->tapCommand(IIIJ)V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "setVisibility() : "

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "LayerContainer"

    .line 32
    .line 33
    invoke-static {v0, p2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onVisibilityChanged(Ljava/lang/Boolean;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "setVisibility() : "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "LayerContainer"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onVisibilityChanged(Ljava/lang/Boolean;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final setEffectLayerSize(II)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;-><init>(II)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    :cond_0
    new-instance v2, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v2, v3, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 25
    .line 26
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;-><init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget v2, v1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 52
    .line 53
    if-ne v2, p1, :cond_2

    .line 54
    .line 55
    iget v1, v1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    .line 56
    .line 57
    if-ne v1, p2, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setLayerParams(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setSize(II)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
