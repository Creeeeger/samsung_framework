.class public Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public head:Lcom/samsung/android/nexus/particle/emitter/Particle;

.field public size:I

.field public tail:Lcom/samsung/android/nexus/particle/emitter/Particle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 18
    .line 19
    iput-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 20
    .line 21
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 24
    .line 25
    iget p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 26
    .line 27
    add-int/2addr p1, v0

    .line 28
    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 29
    .line 30
    return-void
.end method

.method public final transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 4
    .line 5
    iput-object v0, p2, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 6
    .line 7
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 8
    .line 9
    if-ne p3, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 12
    .line 13
    iput-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 16
    .line 17
    if-ne p4, v0, :cond_2

    .line 18
    .line 19
    iput-object p2, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 20
    .line 21
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 22
    .line 23
    if-nez p2, :cond_3

    .line 24
    .line 25
    iput-object p3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 29
    .line 30
    iput-object p3, p2, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 31
    .line 32
    :goto_0
    iput-object p4, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-object p2, p4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    .line 36
    .line 37
    iget p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 38
    .line 39
    add-int/2addr p2, p5

    .line 40
    iput p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 41
    .line 42
    iget p0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 43
    .line 44
    sub-int/2addr p0, p5

    .line 45
    iput p0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    .line 46
    .line 47
    return-void
.end method
