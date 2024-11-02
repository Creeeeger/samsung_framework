package com.samsung.android.nexus.particle.emitter;

import com.samsung.android.nexus.particle.emitter.Particle;
import java.util.Comparator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final /* synthetic */ class Particle$$ExternalSyntheticLambda0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Long.compare(((Particle.EmitterSchedule) obj2).nextTime, ((Particle.EmitterSchedule) obj).nextTime);
    }
}
