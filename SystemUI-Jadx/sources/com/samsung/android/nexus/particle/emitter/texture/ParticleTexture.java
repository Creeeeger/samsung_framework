package com.samsung.android.nexus.particle.emitter.texture;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ParticleTexture {
    public final RectF mBounds = new RectF();
    public final Context mContext;

    public ParticleTexture(Context context) {
        this.mContext = context;
    }

    public abstract void draw(Canvas canvas, Paint paint);

    public abstract void onBoundChanged();

    public abstract void onCreate();

    public abstract void onDestroy();

    public abstract void onRelease();
}
