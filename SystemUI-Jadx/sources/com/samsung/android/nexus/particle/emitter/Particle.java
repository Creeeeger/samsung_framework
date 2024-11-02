package com.samsung.android.nexus.particle.emitter;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import com.samsung.android.nexus.base.utils.Log;
import com.samsung.android.nexus.base.utils.range.FloatRangeable;
import com.samsung.android.nexus.base.utils.range.LongRangeable;
import com.samsung.android.nexus.particle.emitter.texture.ParticleTexture;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Particle {
    public static final Particle$$ExternalSyntheticLambda0 mEmitterScheduleComparator = new Particle$$ExternalSyntheticLambda0();
    public static float sDensity;
    public static final Paint sPaint;
    public static final ParticleLinkedListPool sPool;
    public PorterDuffColorFilter mColorFilter;
    public float mFraction;
    public long mLifeTime;
    public Emitter mParentEmitter;
    public ParticleTexture mParticleTexture;
    public String mSubEmitterKey;
    public Particle next;
    public boolean mEnable = true;
    public boolean mEnableEmission = true;
    public boolean mIsInSight = false;
    public final RectF mTempWorldBounds = new RectF();
    public final ArrayList mEmitterSchedules = new ArrayList();
    public final ArrayList mTempEmitterSchedules = new ArrayList();
    public boolean mScheduleCheckLock = false;
    public final Status status = new Status();
    public long mStartTime = 0;
    public long mEndTime = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class EmitterSchedule {
        public final Emitter emitter;
        public long nextTime;

        public EmitterSchedule(Particle particle, Emitter emitter, long j) {
            this.emitter = emitter;
            this.nextTime = j;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class ParticleLinkedList {
        public Particle head = null;
        public Particle tail = null;
        public int size = 0;

        public final void put(ParticleLinkedList particleLinkedList) {
            int i = particleLinkedList.size;
            if (i <= 0) {
                return;
            }
            if (this.head == null) {
                this.head = particleLinkedList.head;
            } else {
                this.tail.next = particleLinkedList.head;
            }
            this.tail = particleLinkedList.tail;
            this.size += i;
        }

        public final void transferFrom(ParticleLinkedList particleLinkedList, Particle particle, Particle particle2, Particle particle3, int i) {
            if (particle != null) {
                particle.next = particle3.next;
            }
            if (particle2 == particleLinkedList.head) {
                particleLinkedList.head = particle3.next;
            }
            if (particle3 == particleLinkedList.tail) {
                particleLinkedList.tail = particle;
            }
            if (this.head == null) {
                this.head = particle2;
            } else {
                this.tail.next = particle2;
            }
            this.tail = particle3;
            particle3.next = null;
            this.size += i;
            particleLinkedList.size -= i;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ParticleLinkedListPool extends ParticleLinkedList {
        public int createSize = 0;

        public final ParticleLinkedList retain(int i) {
            int i2;
            ParticleLinkedList particleLinkedList = new ParticleLinkedList();
            int min = Math.min(this.size, i);
            int i3 = 1;
            if (min > 0) {
                Particle particle = this.head;
                Particle particle2 = particle;
                for (int i4 = 1; i4 < min; i4++) {
                    particle2 = particle2.next;
                }
                particleLinkedList.transferFrom(this, null, particle, particle2, min);
                i2 = i - min;
            } else {
                i2 = i;
            }
            if (i2 > 0) {
                int i5 = this.createSize;
                if (20000 <= i5 + i2) {
                    i2 = Math.min(20000 - i5, i);
                }
                if (i2 == 0) {
                    return particleLinkedList;
                }
                ParticleLinkedList particleLinkedList2 = new ParticleLinkedList();
                Particle particle3 = new Particle();
                Particle particle4 = particle3;
                while (i3 < i2) {
                    Particle particle5 = new Particle();
                    particle4.next = particle5;
                    i3++;
                    particle4 = particle5;
                }
                particleLinkedList2.head = particle3;
                particleLinkedList2.tail = particle4;
                particleLinkedList2.size = i2;
                this.createSize += i2;
                particleLinkedList.put(particleLinkedList2);
            }
            return particleLinkedList;
        }
    }

    static {
        ParticleLinkedListPool particleLinkedListPool = new ParticleLinkedListPool();
        sPool = particleLinkedListPool;
        Paint paint = new Paint();
        Paint paint2 = new Paint(1);
        sPaint = paint2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2.0f);
        paint.setTextSize(20.0f);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setDither(true);
        long nanoTime = System.nanoTime();
        particleLinkedListPool.put(particleLinkedListPool.retain(3000));
        Log.i("Particle", "static initializer: took" + TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime) + "ms");
    }

    public Particle() {
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0389  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void checkEmitterSchedule(long r58, com.samsung.android.nexus.particle.emitter.Status r60) {
        /*
            Method dump skipped, instructions count: 1747
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.nexus.particle.emitter.Particle.checkEmitterSchedule(long, com.samsung.android.nexus.particle.emitter.Status):void");
    }

    public final void start(long j) {
        boolean z;
        long j2;
        ParticleRule particleRule = this.mParentEmitter.mParticleRule;
        if (particleRule != null) {
            Status status = this.status;
            Integer valueOf = Integer.valueOf(status.color);
            if (valueOf == null) {
                status.color = 0;
                this.mColorFilter = null;
            } else {
                status.color = valueOf.intValue();
                this.mColorFilter = new PorterDuffColorFilter(valueOf.intValue(), PorterDuff.Mode.SRC_ATOP);
            }
            ParticleTexture particleTexture = particleRule.particleTexture;
            this.mParticleTexture = particleTexture;
            if (particleTexture != null) {
                particleTexture.onCreate();
            }
            this.mEnable = true;
            this.mEnableEmission = true;
            this.mIsInSight = false;
            this.mStartTime = j;
            LongRangeable longRangeable = particleRule.lifeTime;
            if (longRangeable.get() < 0) {
                this.mEndTime = Long.MAX_VALUE;
            } else {
                this.mEndTime = longRangeable.get() + j;
            }
            this.mLifeTime = this.mEndTime - this.mStartTime;
            status.factor.validate();
            if (!this.mParentEmitter.mEmitters.isEmpty()) {
                ArrayList arrayList = this.mParentEmitter.mEmitters;
                int size = arrayList.size();
                long j3 = this.mStartTime;
                for (int i = 0; i < size; i++) {
                    Emitter emitter = (Emitter) arrayList.get(i);
                    EmissionRule emissionRule = emitter.mEmissionRule;
                    if (emitter.mEnable && emitter.mWorld != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        long j4 = this.mLifeTime;
                        FloatRangeable floatRangeable = emissionRule.beginFraction;
                        if (floatRangeable != null) {
                            j2 = floatRangeable.get() * ((float) j4);
                        } else {
                            j2 = emissionRule.beginTime.get();
                        }
                        EmitterSchedule emitterSchedule = new EmitterSchedule(this, emitter, j2 + j3);
                        if (this.mScheduleCheckLock) {
                            this.mTempEmitterSchedules.add(emitterSchedule);
                        } else {
                            this.mEmitterSchedules.add(emitterSchedule);
                        }
                    }
                }
                this.mSubEmitterKey = this.mParentEmitter.subEmitterKey;
                return;
            }
            return;
        }
        throw new IllegalStateException("can not start with null rule");
    }

    public final String toString() {
        return "Particle{mEnable=" + this.mEnable + ", mEnableEmission=" + this.mEnableEmission + ", mIsInSight=" + this.mIsInSight + ", mStartTime=" + this.mStartTime + ", mEndTime=" + this.mEndTime + ", mLifeTime=" + this.mLifeTime + ", mFraction=" + this.mFraction + '}';
    }

    public Particle(Emitter emitter) {
        this.mParentEmitter = emitter;
    }
}
