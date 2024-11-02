package com.android.wm.shell.animation;

import android.util.ArrayMap;
import android.util.Log;
import androidx.dynamicanimation.animation.FlingAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PhysicsAnimator {
    public static final Companion Companion = new Companion(null);
    public static final Function1 instanceConstructor = PhysicsAnimator$Companion$instanceConstructor$1.INSTANCE;
    public final Function1 cancelAction;
    public final SpringConfig defaultSpring;
    public final ArrayList endActions;
    public final ArrayList endListeners;
    public final ArrayMap flingAnimations;
    public final ArrayMap flingConfigs;
    public final ArrayList internalListeners;
    public final ArrayMap springAnimations;
    public final ArrayMap springConfigs;
    public final Function0 startAction;
    public final ArrayList updateListeners;
    public final WeakReference weakTarget;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AnimationUpdate {
        public final float value;
        public final float velocity;

        public AnimationUpdate(float f, float f2) {
            this.value = f;
            this.velocity = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnimationUpdate)) {
                return false;
            }
            AnimationUpdate animationUpdate = (AnimationUpdate) obj;
            if (Float.compare(this.value, animationUpdate.value) == 0 && Float.compare(this.velocity, animationUpdate.velocity) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.velocity) + (Float.hashCode(this.value) * 31);
        }

        public final String toString() {
            return "AnimationUpdate(value=" + this.value + ", velocity=" + this.velocity + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static PhysicsAnimator getInstance(Object obj) {
            WeakHashMap weakHashMap = PhysicsAnimatorKt.animators;
            if (!weakHashMap.containsKey(obj)) {
                weakHashMap.put(obj, ((PhysicsAnimator$Companion$instanceConstructor$1) PhysicsAnimator.instanceConstructor).invoke(obj));
            }
            return (PhysicsAnimator) weakHashMap.get(obj);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface EndListener {
        void onAnimationEnd(Object obj, FloatPropertyCompat floatPropertyCompat, boolean z, boolean z2, float f, float f2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class InternalListener {
        public final List endActions;
        public final List endListeners;
        public int numPropertiesAnimating;
        public final Set properties;
        public final Object target;
        public final ArrayMap undispatchedUpdates = new ArrayMap();
        public final List updateListeners;

        public InternalListener(Object obj, Set<? extends FloatPropertyCompat> set, List<? extends UpdateListener> list, List<? extends EndListener> list2, List<? extends Function0> list3) {
            this.target = obj;
            this.properties = set;
            this.updateListeners = list;
            this.endListeners = list2;
            this.endActions = list3;
            this.numPropertiesAnimating = set.size();
        }

        public final void maybeDispatchUpdates() {
            ArrayMap arrayMap = this.undispatchedUpdates;
            if (arrayMap.size() >= this.numPropertiesAnimating && arrayMap.size() > 0) {
                for (UpdateListener updateListener : this.updateListeners) {
                    new ArrayMap(arrayMap);
                    updateListener.onAnimationUpdateForProperty(this.target);
                }
                arrayMap.clear();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface UpdateListener {
        void onAnimationUpdateForProperty(Object obj);
    }

    public /* synthetic */ PhysicsAnimator(Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj);
    }

    public static final float estimateFlingEndValue(float f, float f2, FlingConfig flingConfig) {
        Companion.getClass();
        return Math.min(flingConfig.max, Math.max(flingConfig.min, f + (f2 / (flingConfig.friction * 4.2f))));
    }

    public static final PhysicsAnimator getInstance(Object obj) {
        Companion.getClass();
        return Companion.getInstance(obj);
    }

    public final boolean arePropertiesAnimating(Set set) {
        if (set.isEmpty()) {
            return false;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (isPropertyAnimating((FloatPropertyCompat) it.next())) {
                return true;
            }
        }
        return false;
    }

    public final void cancel() {
        ArrayMap arrayMap = this.flingAnimations;
        int size = arrayMap.size();
        Function1 function1 = this.cancelAction;
        if (size > 0) {
            ((PhysicsAnimator$cancelAction$1) function1).invoke(arrayMap.keySet());
        }
        ArrayMap arrayMap2 = this.springAnimations;
        if (arrayMap2.size() > 0) {
            ((PhysicsAnimator$cancelAction$1) function1).invoke(arrayMap2.keySet());
        }
    }

    public final PhysicsAnimator flingThenSpring(FloatPropertyCompat floatPropertyCompat, float f, FlingConfig flingConfig, SpringConfig springConfig, boolean z) {
        float f2;
        boolean z2;
        boolean z3;
        float f3 = f;
        Object obj = this.weakTarget.get();
        if (obj == null) {
            Log.w("PhysicsAnimator", "Trying to animate a GC-ed target.");
            return this;
        }
        float f4 = flingConfig.min;
        float f5 = flingConfig.max;
        float f6 = flingConfig.startVelocity;
        float f7 = flingConfig.friction;
        FlingConfig flingConfig2 = new FlingConfig(f7, f4, f5, f6);
        SpringConfig springConfig2 = new SpringConfig(springConfig.stiffness, springConfig.dampingRatio, springConfig.startVelocity, springConfig.finalPosition);
        if (f3 < 0.0f) {
            f2 = flingConfig.min;
        } else {
            f2 = flingConfig.max;
        }
        if (z) {
            if (f2 < Float.MAX_VALUE && f2 > -3.4028235E38f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                float f8 = f7 * 4.2f;
                float value = (f3 / f8) + floatPropertyCompat.getValue(obj);
                float f9 = flingConfig.min;
                float f10 = flingConfig.max;
                float f11 = (f9 + f10) / 2;
                if ((f3 < 0.0f && value > f11) || (f3 > 0.0f && value < f11)) {
                    if (value >= f11) {
                        f9 = f10;
                    }
                    if (f9 < Float.MAX_VALUE && f9 > -3.4028235E38f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        spring(floatPropertyCompat, f9, f3, springConfig);
                        return this;
                    }
                }
                float value2 = f2 - floatPropertyCompat.getValue(obj);
                float f12 = f8 * value2;
                if (value2 > 0.0f && f3 >= 0.0f) {
                    f3 = Math.max(f12, f3);
                } else if (value2 < 0.0f && f3 <= 0.0f) {
                    f3 = Math.min(f12, f3);
                }
                flingConfig2.startVelocity = f3;
                springConfig2.finalPosition = f2;
                this.flingConfigs.put(floatPropertyCompat, flingConfig2);
                this.springConfigs.put(floatPropertyCompat, springConfig2);
                return this;
            }
        }
        flingConfig2.startVelocity = f3;
        this.flingConfigs.put(floatPropertyCompat, flingConfig2);
        this.springConfigs.put(floatPropertyCompat, springConfig2);
        return this;
    }

    public final boolean isPropertyAnimating(FloatPropertyCompat floatPropertyCompat) {
        boolean z;
        boolean z2;
        SpringAnimation springAnimation = (SpringAnimation) this.springAnimations.get(floatPropertyCompat);
        if (springAnimation != null) {
            z = springAnimation.mRunning;
        } else {
            z = false;
        }
        if (!z) {
            FlingAnimation flingAnimation = (FlingAnimation) this.flingAnimations.get(floatPropertyCompat);
            if (flingAnimation != null) {
                z2 = flingAnimation.mRunning;
            } else {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    public final boolean isRunning() {
        Set keySet = this.springAnimations.keySet();
        Set keySet2 = this.flingAnimations.keySet();
        Set mutableSet = CollectionsKt___CollectionsKt.toMutableSet(keySet);
        CollectionsKt__MutableCollectionsKt.addAll(keySet2, mutableSet);
        return arePropertiesAnimating(mutableSet);
    }

    public final void spring(FloatPropertyCompat floatPropertyCompat, float f, float f2, SpringConfig springConfig) {
        WeakHashMap weakHashMap = PhysicsAnimatorKt.animators;
        this.springConfigs.put(floatPropertyCompat, new SpringConfig(springConfig.stiffness, springConfig.dampingRatio, f2, f));
    }

    public final void start() {
        ((PhysicsAnimator$startAction$1) this.startAction).invoke();
    }

    public final void withEndActions(Runnable... runnableArr) {
        ArrayList arrayList = this.endActions;
        List filterNotNull = ArraysKt___ArraysKt.filterNotNull(runnableArr);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(filterNotNull, 10));
        Iterator it = ((ArrayList) filterNotNull).iterator();
        while (it.hasNext()) {
            arrayList2.add(new PhysicsAnimator$withEndActions$1$1((Runnable) it.next()));
        }
        arrayList.addAll(arrayList2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FlingConfig {
        public final float friction;
        public float max;
        public float min;
        public float startVelocity;

        public FlingConfig() {
            this(PhysicsAnimatorKt.globalDefaultFling.friction);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingConfig)) {
                return false;
            }
            FlingConfig flingConfig = (FlingConfig) obj;
            if (Float.compare(this.friction, flingConfig.friction) == 0 && Float.compare(this.min, flingConfig.min) == 0 && Float.compare(this.max, flingConfig.max) == 0 && Float.compare(this.startVelocity, flingConfig.startVelocity) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.startVelocity) + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.max, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.min, Float.hashCode(this.friction) * 31, 31), 31);
        }

        public final String toString() {
            return "FlingConfig(friction=" + this.friction + ", min=" + this.min + ", max=" + this.max + ", startVelocity=" + this.startVelocity + ")";
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public FlingConfig(float r3) {
            /*
                r2 = this;
                com.android.wm.shell.animation.PhysicsAnimator$FlingConfig r0 = com.android.wm.shell.animation.PhysicsAnimatorKt.globalDefaultFling
                float r1 = r0.min
                float r0 = r0.max
                r2.<init>(r3, r1, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.animation.PhysicsAnimator.FlingConfig.<init>(float):void");
        }

        public FlingConfig(float f, float f2, float f3, float f4) {
            this.friction = f;
            this.min = f2;
            this.max = f3;
            this.startVelocity = f4;
        }

        public FlingConfig(float f, float f2, float f3) {
            this(f, f2, f3, 0.0f);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SpringConfig {
        public final float dampingRatio;
        public float finalPosition;
        public float startVelocity;
        public final float stiffness;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public SpringConfig() {
            /*
                r2 = this;
                com.android.wm.shell.animation.PhysicsAnimator$SpringConfig r0 = com.android.wm.shell.animation.PhysicsAnimatorKt.globalDefaultSpring
                float r1 = r0.stiffness
                float r0 = r0.dampingRatio
                r2.<init>(r1, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.animation.PhysicsAnimator.SpringConfig.<init>():void");
        }

        public final void applyToAnimation$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell(SpringAnimation springAnimation) {
            boolean z;
            SpringForce springForce = springAnimation.mSpring;
            if (springForce == null) {
                springForce = new SpringForce();
            }
            springForce.setStiffness(this.stiffness);
            springForce.setDampingRatio(this.dampingRatio);
            springForce.mFinalPosition = this.finalPosition;
            springAnimation.mSpring = springForce;
            float f = this.startVelocity;
            if (f == 0.0f) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                springAnimation.mVelocity = f;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SpringConfig)) {
                return false;
            }
            SpringConfig springConfig = (SpringConfig) obj;
            if (Float.compare(this.stiffness, springConfig.stiffness) == 0 && Float.compare(this.dampingRatio, springConfig.dampingRatio) == 0 && Float.compare(this.startVelocity, springConfig.startVelocity) == 0 && Float.compare(this.finalPosition, springConfig.finalPosition) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.finalPosition) + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.startVelocity, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.dampingRatio, Float.hashCode(this.stiffness) * 31, 31), 31);
        }

        public final String toString() {
            return "SpringConfig(stiffness=" + this.stiffness + ", dampingRatio=" + this.dampingRatio + ", startVelocity=" + this.startVelocity + ", finalPosition=" + this.finalPosition + ")";
        }

        public SpringConfig(float f, float f2, float f3, float f4) {
            this.stiffness = f;
            this.dampingRatio = f2;
            this.startVelocity = f3;
            this.finalPosition = f4;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public /* synthetic */ SpringConfig(float r1, float r2, float r3, float r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
            /*
                r0 = this;
                r6 = r5 & 4
                if (r6 == 0) goto L5
                r3 = 0
            L5:
                r5 = r5 & 8
                if (r5 == 0) goto Le
                java.util.WeakHashMap r4 = com.android.wm.shell.animation.PhysicsAnimatorKt.animators
                r4 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            Le:
                r0.<init>(r1, r2, r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.animation.PhysicsAnimator.SpringConfig.<init>(float, float, float, float, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public SpringConfig(float f, float f2) {
            this(f, f2, 0.0f, 0.0f, 8, null);
        }
    }

    private PhysicsAnimator(Object obj) {
        this.weakTarget = new WeakReference(obj);
        this.springAnimations = new ArrayMap();
        this.flingAnimations = new ArrayMap();
        this.springConfigs = new ArrayMap();
        this.flingConfigs = new ArrayMap();
        this.updateListeners = new ArrayList();
        this.endListeners = new ArrayList();
        this.endActions = new ArrayList();
        this.defaultSpring = PhysicsAnimatorKt.globalDefaultSpring;
        this.internalListeners = new ArrayList();
        this.startAction = new PhysicsAnimator$startAction$1(this);
        this.cancelAction = new PhysicsAnimator$cancelAction$1(this);
    }

    public final void cancel(FloatPropertyCompat... floatPropertyCompatArr) {
        ((PhysicsAnimator$cancelAction$1) this.cancelAction).invoke(ArraysKt___ArraysKt.toSet(floatPropertyCompatArr));
    }
}
