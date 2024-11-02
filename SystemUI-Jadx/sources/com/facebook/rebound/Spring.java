package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Spring {
    public static int ID;
    public final PhysicsState mCurrentState;
    public double mEndValue;
    public final String mId;
    public final PhysicsState mPreviousState;
    public SpringConfig mSpringConfig;
    public final BaseSpringSystem mSpringSystem;
    public final PhysicsState mTempState;
    public boolean mWasAtRest = true;
    public double mRestSpeedThreshold = 0.005d;
    public double mDisplacementFromRestThreshold = 0.005d;
    public final CopyOnWriteArraySet mListeners = new CopyOnWriteArraySet();
    public double mTimeAccumulator = 0.0d;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PhysicsState {
        public double position;
        public double velocity;

        private PhysicsState() {
        }
    }

    public Spring(BaseSpringSystem baseSpringSystem) {
        this.mCurrentState = new PhysicsState();
        this.mPreviousState = new PhysicsState();
        this.mTempState = new PhysicsState();
        if (baseSpringSystem != null) {
            this.mSpringSystem = baseSpringSystem;
            StringBuilder sb = new StringBuilder("spring:");
            int i = ID;
            ID = i + 1;
            sb.append(i);
            this.mId = sb.toString();
            setSpringConfig(SpringConfig.defaultConfig);
            return;
        }
        throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
    }

    public final void addListener(SpringListener springListener) {
        if (springListener != null) {
            this.mListeners.add(springListener);
            return;
        }
        throw new IllegalArgumentException("newListener is required");
    }

    public final boolean isAtRest() {
        PhysicsState physicsState = this.mCurrentState;
        if (Math.abs(physicsState.velocity) <= this.mRestSpeedThreshold && (Math.abs(this.mEndValue - physicsState.position) <= this.mDisplacementFromRestThreshold || this.mSpringConfig.tension == 0.0d)) {
            return true;
        }
        return false;
    }

    public final void setAtRest() {
        PhysicsState physicsState = this.mCurrentState;
        double d = physicsState.position;
        this.mEndValue = d;
        this.mTempState.position = d;
        physicsState.velocity = 0.0d;
    }

    public final void setCurrentValue(double d) {
        this.mCurrentState.position = d;
        this.mSpringSystem.activateSpring(this.mId);
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ((SpringListener) it.next()).onSpringUpdate(this);
        }
        setAtRest();
    }

    public final void setEndValue(double d) {
        if (this.mEndValue == d && isAtRest()) {
            return;
        }
        double d2 = this.mCurrentState.position;
        this.mEndValue = d;
        this.mSpringSystem.activateSpring(this.mId);
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ((SpringListener) it.next()).onSpringEndStateChange(this);
        }
    }

    public final void setSpringConfig(SpringConfig springConfig) {
        if (springConfig != null) {
            this.mSpringConfig = springConfig;
            return;
        }
        throw new IllegalArgumentException("springConfig is required");
    }

    public final void setVelocity(double d) {
        PhysicsState physicsState = this.mCurrentState;
        if (d == physicsState.velocity) {
            return;
        }
        physicsState.velocity = d;
        this.mSpringSystem.activateSpring(this.mId);
    }
}
