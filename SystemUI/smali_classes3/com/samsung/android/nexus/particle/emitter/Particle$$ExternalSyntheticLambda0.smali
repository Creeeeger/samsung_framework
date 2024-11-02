.class public final synthetic Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    .line 2
    .line 3
    check-cast p2, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    .line 4
    .line 5
    iget-wide v0, p2, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    .line 6
    .line 7
    iget-wide p0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    .line 8
    .line 9
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
