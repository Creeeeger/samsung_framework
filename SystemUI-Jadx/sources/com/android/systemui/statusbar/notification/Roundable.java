package com.android.systemui.statusbar.notification;

import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface Roundable {
    default void applyRoundnessAndInvalidate() {
        getRoundableState().targetView.invalidate();
    }

    default float getBottomCornerRadius() {
        return getMaxRadius() * getBottomRoundness();
    }

    default float getBottomRoundness() {
        return getRoundableState().bottomRoundness;
    }

    default float getMaxRadius() {
        return getRoundableState().maxRadius;
    }

    RoundableState getRoundableState();

    default float getTopCornerRadius() {
        return getMaxRadius() * getTopRoundness();
    }

    default float getTopRoundness() {
        return getRoundableState().topRoundness;
    }

    default boolean hasRoundedCorner() {
        boolean z;
        boolean z2;
        if (getTopRoundness() == 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return true;
        }
        if (getBottomRoundness() == 0.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            return true;
        }
        return false;
    }

    default boolean requestBottomRoundness(float f, SourceType sourceType, boolean z) {
        float f2;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        LinkedHashMap linkedHashMap = (LinkedHashMap) getRoundableState().bottomRoundnessMap;
        Float maxOrNull = CollectionsKt___CollectionsKt.maxOrNull(linkedHashMap.values());
        float f3 = 0.0f;
        if (maxOrNull != null) {
            f2 = maxOrNull.floatValue();
        } else {
            f2 = 0.0f;
        }
        boolean z6 = false;
        if (f == 0.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            linkedHashMap.remove(sourceType);
        } else {
            linkedHashMap.put(sourceType, Float.valueOf(f));
        }
        Float maxOrNull2 = CollectionsKt___CollectionsKt.maxOrNull(linkedHashMap.values());
        if (maxOrNull2 != null) {
            f3 = maxOrNull2.floatValue();
        }
        if (f2 == f3) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            return false;
        }
        RoundableState roundableState = getRoundableState();
        if (roundableState.targetView.getTag(roundableState.bottomAnimatable.val$animatorTag) != null) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z4 && Math.abs(f3 - f2) > 0.5f) {
            z5 = true;
        } else {
            z5 = false;
        }
        RoundableState roundableState2 = getRoundableState();
        if (z5 || z) {
            z6 = true;
        }
        PropertyAnimator.setProperty(roundableState2.targetView, roundableState2.bottomAnimatable, f3, RoundableState.DURATION, z6);
        return true;
    }

    default boolean requestRoundness(float f, float f2, SourceType sourceType, boolean z) {
        return requestTopRoundness(f, sourceType, z) || requestBottomRoundness(f2, sourceType, z);
    }

    default void requestRoundnessReset(SourceType sourceType) {
        requestRoundness(0.0f, 0.0f, sourceType, getRoundableState().targetView.isShown());
    }

    default boolean requestTopRoundness(float f, SourceType sourceType, boolean z) {
        float f2;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        LinkedHashMap linkedHashMap = (LinkedHashMap) getRoundableState().topRoundnessMap;
        Float maxOrNull = CollectionsKt___CollectionsKt.maxOrNull(linkedHashMap.values());
        float f3 = 0.0f;
        if (maxOrNull != null) {
            f2 = maxOrNull.floatValue();
        } else {
            f2 = 0.0f;
        }
        boolean z6 = false;
        if (f == 0.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            linkedHashMap.remove(sourceType);
        } else {
            linkedHashMap.put(sourceType, Float.valueOf(f));
        }
        Float maxOrNull2 = CollectionsKt___CollectionsKt.maxOrNull(linkedHashMap.values());
        if (maxOrNull2 != null) {
            f3 = maxOrNull2.floatValue();
        }
        if (f2 == f3) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            return false;
        }
        RoundableState roundableState = getRoundableState();
        if (roundableState.targetView.getTag(roundableState.topAnimatable.val$animatorTag) != null) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z4 && Math.abs(f3 - f2) > 0.5f) {
            z5 = true;
        } else {
            z5 = false;
        }
        RoundableState roundableState2 = getRoundableState();
        if (z5 || z) {
            z6 = true;
        }
        PropertyAnimator.setProperty(roundableState2.targetView, roundableState2.topAnimatable, f3, RoundableState.DURATION, z6);
        return true;
    }

    default void requestRoundness(float f, float f2, SourceType$Companion$from$1 sourceType$Companion$from$1) {
        requestRoundness(f, f2, sourceType$Companion$from$1, getRoundableState().targetView.isShown());
    }
}
