package com.samsung.android.nexus.particle.emitter;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final /* synthetic */ class Emitter$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ World f$0;

    public /* synthetic */ Emitter$$ExternalSyntheticLambda0(World world) {
        this.f$0 = world;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        World world = this.f$0;
        Emitter emitter = (Emitter) obj;
        emitter.mWorld = world;
        emitter.mEmitters.forEach(new Emitter$$ExternalSyntheticLambda0(world));
    }
}
