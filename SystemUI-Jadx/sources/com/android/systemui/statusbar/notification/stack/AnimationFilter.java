package com.android.systemui.statusbar.notification.stack;

import android.util.Property;
import androidx.collection.ArraySet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AnimationFilter {
    public boolean animateAlpha;
    public boolean animateDimmed;
    public boolean animateHeight;
    public boolean animateHideSensitive;
    public boolean animateTopInset;
    public boolean animateX;
    public boolean animateY;
    public boolean animateZ;
    public long customDelay;
    public boolean hasDelays;
    public boolean hasGoToFullShadeEvent;
    public boolean shadeLockedFromNotiIcon;
    public final ArraySet animateYViews = new ArraySet();
    public final ArraySet mAnimatedProperties = new ArraySet();

    public final void combineFilter(AnimationFilter animationFilter) {
        this.animateAlpha |= animationFilter.animateAlpha;
        this.animateX |= animationFilter.animateX;
        this.animateY |= animationFilter.animateY;
        this.animateYViews.addAll(animationFilter.animateYViews);
        this.animateZ |= animationFilter.animateZ;
        this.animateHeight |= animationFilter.animateHeight;
        this.animateTopInset |= animationFilter.animateTopInset;
        this.animateDimmed |= animationFilter.animateDimmed;
        this.animateHideSensitive |= animationFilter.animateHideSensitive;
        this.hasDelays |= animationFilter.hasDelays;
        this.mAnimatedProperties.addAll(animationFilter.mAnimatedProperties);
    }

    public final void reset() {
        this.animateAlpha = false;
        this.animateX = false;
        this.animateY = false;
        this.animateYViews.clear();
        this.animateZ = false;
        this.animateHeight = false;
        this.animateTopInset = false;
        this.animateDimmed = false;
        this.animateHideSensitive = false;
        this.hasDelays = false;
        this.hasGoToFullShadeEvent = false;
        this.shadeLockedFromNotiIcon = false;
        this.customDelay = -1L;
        this.mAnimatedProperties.clear();
    }

    public boolean shouldAnimateProperty(Property property) {
        return this.mAnimatedProperties.contains(property);
    }
}
