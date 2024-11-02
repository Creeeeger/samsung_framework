.class public final Lcom/samsung/android/nexus/particle/emitter/Emitter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public isSubEmitter:Z

.field public final mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

.field public final mEmitters:Ljava/util/ArrayList;

.field public final mEnable:Z

.field public final mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

.field public mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

.field public subEmitterKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    .line 6
    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/World;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    .line 13
    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 14
    iput-object p3, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 15
    iput-object p4, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->destroy()V

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onDestroy()V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
