package androidx.picker.features.composable;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ComposableType {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static boolean isSame(ComposableType composableType, ComposableTypeSet composableTypeSet) {
            if (composableTypeSet == composableType) {
                return true;
            }
            if (Intrinsics.areEqual(composableType.getLeftFrame(), composableTypeSet.getLeftFrame()) && Intrinsics.areEqual(composableType.getIconFrame(), composableTypeSet.getIconFrame()) && Intrinsics.areEqual(composableType.getTitleFrame(), composableTypeSet.getTitleFrame()) && Intrinsics.areEqual(composableType.getWidgetFrame(), composableTypeSet.getWidgetFrame())) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ComposableTypeImpl implements ComposableType {
        public final ComposableFrame iconFrame;
        public final ComposableFrame leftFrame;
        public final ComposableFrame titleFrame;
        public final ComposableFrame widgetFrame;

        public ComposableTypeImpl(ComposableFrame composableFrame, ComposableFrame composableFrame2, ComposableFrame composableFrame3, ComposableFrame composableFrame4) {
            this.leftFrame = composableFrame;
            this.iconFrame = composableFrame2;
            this.titleFrame = composableFrame3;
            this.widgetFrame = composableFrame4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ComposableTypeImpl)) {
                return false;
            }
            ComposableTypeImpl composableTypeImpl = (ComposableTypeImpl) obj;
            if (Intrinsics.areEqual(this.leftFrame, composableTypeImpl.leftFrame) && Intrinsics.areEqual(this.iconFrame, composableTypeImpl.iconFrame) && Intrinsics.areEqual(this.titleFrame, composableTypeImpl.titleFrame) && Intrinsics.areEqual(this.widgetFrame, composableTypeImpl.widgetFrame)) {
                return true;
            }
            return false;
        }

        @Override // androidx.picker.features.composable.ComposableType
        public final ComposableFrame getIconFrame() {
            return this.iconFrame;
        }

        @Override // androidx.picker.features.composable.ComposableType
        public final ComposableFrame getLeftFrame() {
            return this.leftFrame;
        }

        @Override // androidx.picker.features.composable.ComposableType
        public final ComposableFrame getTitleFrame() {
            return this.titleFrame;
        }

        @Override // androidx.picker.features.composable.ComposableType
        public final ComposableFrame getWidgetFrame() {
            return this.widgetFrame;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int i = 0;
            ComposableFrame composableFrame = this.leftFrame;
            if (composableFrame == null) {
                hashCode = 0;
            } else {
                hashCode = composableFrame.hashCode();
            }
            int i2 = hashCode * 31;
            ComposableFrame composableFrame2 = this.iconFrame;
            if (composableFrame2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = composableFrame2.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            ComposableFrame composableFrame3 = this.titleFrame;
            if (composableFrame3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = composableFrame3.hashCode();
            }
            int i4 = (i3 + hashCode3) * 31;
            ComposableFrame composableFrame4 = this.widgetFrame;
            if (composableFrame4 != null) {
                i = composableFrame4.hashCode();
            }
            return i4 + i;
        }

        public final String toString() {
            return "ComposableTypeImpl(leftFrame=" + this.leftFrame + ", iconFrame=" + this.iconFrame + ", titleFrame=" + this.titleFrame + ", widgetFrame=" + this.widgetFrame + ')';
        }
    }

    ComposableFrame getIconFrame();

    ComposableFrame getLeftFrame();

    ComposableFrame getTitleFrame();

    ComposableFrame getWidgetFrame();
}
