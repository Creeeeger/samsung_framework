package com.android.systemui.common.ui.view;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LongPressHandlingViewInteractionHandler {
    public final Function0 isAttachedToWindow;
    public final Function2 onLongPressDetected;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class MotionEventModel {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Cancel extends MotionEventModel {
            public static final /* synthetic */ int $r8$clinit = 0;

            static {
                new Cancel();
            }

            private Cancel() {
                super(null);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Down extends MotionEventModel {
            public final int x;
            public final int y;

            public Down(int i, int i2) {
                super(null);
                this.x = i;
                this.y = i2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Down)) {
                    return false;
                }
                Down down = (Down) obj;
                if (this.x == down.x && this.y == down.y) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return Integer.hashCode(this.y) + (Integer.hashCode(this.x) * 31);
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Down(x=");
                sb.append(this.x);
                sb.append(", y=");
                return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.y, ")");
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Move extends MotionEventModel {
            public final float distanceMoved;

            public Move(float f) {
                super(null);
                this.distanceMoved = f;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof Move) && Float.compare(this.distanceMoved, ((Move) obj).distanceMoved) == 0) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return Float.hashCode(this.distanceMoved);
            }

            public final String toString() {
                return "Move(distanceMoved=" + this.distanceMoved + ")";
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Other extends MotionEventModel {
            public static final /* synthetic */ int $r8$clinit = 0;

            static {
                new Other();
            }

            private Other() {
                super(null);
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Up extends MotionEventModel {
            public final float distanceMoved;
            public final long gestureDuration;

            public Up(float f, long j) {
                super(null);
                this.distanceMoved = f;
                this.gestureDuration = j;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Up)) {
                    return false;
                }
                Up up = (Up) obj;
                if (Float.compare(this.distanceMoved, up.distanceMoved) == 0 && this.gestureDuration == up.gestureDuration) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return Long.hashCode(this.gestureDuration) + (Float.hashCode(this.distanceMoved) * 31);
            }

            public final String toString() {
                return "Up(distanceMoved=" + this.distanceMoved + ", gestureDuration=" + this.gestureDuration + ")";
            }
        }

        private MotionEventModel() {
        }

        public /* synthetic */ MotionEventModel(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public LongPressHandlingViewInteractionHandler(Function2 function2, Function0 function0, Function2 function22, Function0 function02) {
        this.isAttachedToWindow = function0;
        this.onLongPressDetected = function22;
    }
}
