package com.facebook.rebound;

import android.view.Choreographer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SpringSystem extends BaseSpringSystem {
    private SpringSystem(SpringLooper springLooper) {
        super(springLooper);
    }

    public static SpringSystem create() {
        return new SpringSystem(new AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper(Choreographer.getInstance()));
    }
}
