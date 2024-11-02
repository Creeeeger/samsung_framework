package com.android.systemui.multishade.shared.model;

import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import java.util.Collections;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ShadeConfig {
    public final List shadeIds;
    public final float swipeCollapseThreshold;
    public final float swipeExpandThreshold;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DualShadeConfig extends ShadeConfig {
        public final int leftShadeWidthPx;
        public final int rightShadeWidthPx;
        public final float scrimAlpha;
        public final float splitFraction;
        public final float swipeCollapseThreshold;
        public final float swipeExpandThreshold;

        public DualShadeConfig(int i, int i2, float f, float f2, float f3, float f4) {
            super(CollectionsKt__CollectionsKt.listOf(ShadeId.LEFT, ShadeId.RIGHT), f, f2, null);
            this.leftShadeWidthPx = i;
            this.rightShadeWidthPx = i2;
            this.swipeCollapseThreshold = f;
            this.swipeExpandThreshold = f2;
            this.splitFraction = f3;
            this.scrimAlpha = f4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DualShadeConfig)) {
                return false;
            }
            DualShadeConfig dualShadeConfig = (DualShadeConfig) obj;
            if (this.leftShadeWidthPx == dualShadeConfig.leftShadeWidthPx && this.rightShadeWidthPx == dualShadeConfig.rightShadeWidthPx && Float.compare(this.swipeCollapseThreshold, dualShadeConfig.swipeCollapseThreshold) == 0 && Float.compare(this.swipeExpandThreshold, dualShadeConfig.swipeExpandThreshold) == 0 && Float.compare(this.splitFraction, dualShadeConfig.splitFraction) == 0 && Float.compare(this.scrimAlpha, dualShadeConfig.scrimAlpha) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.scrimAlpha) + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.splitFraction, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.swipeExpandThreshold, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.swipeCollapseThreshold, AppInfoViewData$$ExternalSyntheticOutline0.m(this.rightShadeWidthPx, Integer.hashCode(this.leftShadeWidthPx) * 31, 31), 31), 31), 31);
        }

        public final String toString() {
            return "DualShadeConfig(leftShadeWidthPx=" + this.leftShadeWidthPx + ", rightShadeWidthPx=" + this.rightShadeWidthPx + ", swipeCollapseThreshold=" + this.swipeCollapseThreshold + ", swipeExpandThreshold=" + this.swipeExpandThreshold + ", splitFraction=" + this.splitFraction + ", scrimAlpha=" + this.scrimAlpha + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SingleShadeConfig extends ShadeConfig {
        public final float swipeCollapseThreshold;
        public final float swipeExpandThreshold;

        public SingleShadeConfig(float f, float f2) {
            super(Collections.singletonList(ShadeId.SINGLE), f, f2, null);
            this.swipeCollapseThreshold = f;
            this.swipeExpandThreshold = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SingleShadeConfig)) {
                return false;
            }
            SingleShadeConfig singleShadeConfig = (SingleShadeConfig) obj;
            if (Float.compare(this.swipeCollapseThreshold, singleShadeConfig.swipeCollapseThreshold) == 0 && Float.compare(this.swipeExpandThreshold, singleShadeConfig.swipeExpandThreshold) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.swipeExpandThreshold) + (Float.hashCode(this.swipeCollapseThreshold) * 31);
        }

        public final String toString() {
            return "SingleShadeConfig(swipeCollapseThreshold=" + this.swipeCollapseThreshold + ", swipeExpandThreshold=" + this.swipeExpandThreshold + ")";
        }
    }

    public /* synthetic */ ShadeConfig(List list, float f, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, f, f2);
    }

    private ShadeConfig(List<? extends ShadeId> list, float f, float f2) {
        this.shadeIds = list;
        this.swipeCollapseThreshold = f;
        this.swipeExpandThreshold = f2;
    }
}
