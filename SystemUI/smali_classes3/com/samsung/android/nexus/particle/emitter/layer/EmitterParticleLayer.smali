.class public final Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;
.super Lcom/samsung/android/nexus/particle/BaseParticleLayer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mWorld:Lcom/samsung/android/nexus/particle/emitter/World;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;-><init>(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/World;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;-><init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 10
    .line 11
    iget p0, p2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 12
    .line 13
    int-to-float p0, p0

    .line 14
    iget p1, p2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    .line 15
    .line 16
    int-to-float p1, p1

    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;->setSize(FF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/World;->start()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/World;->resume()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final drawOnCanvas(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/nexus/particle/emitter/World;->step(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;->draw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onDestroy()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "World"

    .line 7
    .line 8
    const-string v1, "stop: "

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    .line 23
    .line 24
    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 25
    .line 26
    if-gtz v4, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v5, v3, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 30
    .line 31
    move v6, v0

    .line 32
    :goto_0
    if-ge v6, v4, :cond_2

    .line 33
    .line 34
    iput-boolean v0, v5, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    .line 35
    .line 36
    iput-wide v1, v5, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    .line 37
    .line 38
    iput-wide v1, v5, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    .line 39
    .line 40
    iget-object v7, v5, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v7, v5, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 46
    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    .line 50
    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    iput-object v7, v5, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 54
    .line 55
    :cond_1
    iget-object v5, v5, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->destroy()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    iget p1, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;->setSize(FF)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/World;->start()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/World;->resume()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/World;->resume()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string p1, "World"

    .line 18
    .line 19
    const-string v0, "pause: "

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final prepareToDraw()V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    return-void
.end method
