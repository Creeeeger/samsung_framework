.class public final Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;
.super Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public createSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final retain(I)Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;
    .locals 9

    .line 1
    new-instance v6, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    .line 2
    .line 3
    invoke-direct {v6}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 7
    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    const/4 v8, 0x1

    .line 13
    if-lez v7, :cond_1

    .line 14
    .line 15
    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 16
    .line 17
    move-object v4, v3

    .line 18
    move v0, v8

    .line 19
    :goto_0
    if-ge v0, v7, :cond_0

    .line 20
    .line 21
    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    move-object v0, v6

    .line 28
    move-object v1, p0

    .line 29
    move v5, v7

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V

    .line 31
    .line 32
    .line 33
    sub-int v0, p1, v7

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, p1

    .line 37
    :goto_1
    if-lez v0, :cond_5

    .line 38
    .line 39
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    .line 40
    .line 41
    add-int v2, v1, v0

    .line 42
    .line 43
    const/16 v3, 0x4e20

    .line 44
    .line 45
    if-gt v3, v2, :cond_2

    .line 46
    .line 47
    sub-int/2addr v3, v1

    .line 48
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :cond_2
    if-nez v0, :cond_3

    .line 53
    .line 54
    return-object v6

    .line 55
    :cond_3
    new-instance p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    .line 56
    .line 57
    invoke-direct {p1}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/Particle;-><init>()V

    .line 63
    .line 64
    .line 65
    move-object v2, v1

    .line 66
    :goto_2
    if-ge v8, v0, :cond_4

    .line 67
    .line 68
    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 69
    .line 70
    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/Particle;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v3, v2, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 74
    .line 75
    add-int/lit8 v8, v8, 0x1

    .line 76
    .line 77
    move-object v2, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iput-object v1, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 80
    .line 81
    iput-object v2, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 82
    .line 83
    iput v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 84
    .line 85
    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    .line 86
    .line 87
    add-int/2addr v1, v0

    .line 88
    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    .line 89
    .line 90
    invoke-virtual {v6, p1}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-object v6
.end method
