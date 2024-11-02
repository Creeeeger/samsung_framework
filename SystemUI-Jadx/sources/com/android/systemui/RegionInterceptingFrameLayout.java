package com.android.systemui;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class RegionInterceptingFrameLayout extends FrameLayout {
    public final RegionInterceptingFrameLayout$$ExternalSyntheticLambda0 mInsetsListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface RegionInterceptableView {
    }

    /* renamed from: $r8$lambda$Q1SOsU-hqbybjrejNJ9Qnk04mvU, reason: not valid java name */
    public static void m71$r8$lambda$Q1SOsUhqbybjrejNJ9Qnk04mvU(RegionInterceptingFrameLayout regionInterceptingFrameLayout, ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
        boolean z;
        Region region;
        regionInterceptingFrameLayout.getClass();
        internalInsetsInfo.setTouchableInsets(3);
        internalInsetsInfo.touchableRegion.setEmpty();
        for (int i = 0; i < regionInterceptingFrameLayout.getChildCount(); i++) {
            KeyEvent.Callback childAt = regionInterceptingFrameLayout.getChildAt(i);
            if (childAt instanceof RegionInterceptableView) {
                DisplayCutoutBaseView displayCutoutBaseView = (DisplayCutoutBaseView) ((RegionInterceptableView) childAt);
                if (displayCutoutBaseView.displayInfo.displayCutout != null && displayCutoutBaseView.getVisibility() == 0 && displayCutoutBaseView.shouldDrawCutout) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    DisplayCutout displayCutout = displayCutoutBaseView.displayInfo.displayCutout;
                    if (displayCutout == null) {
                        region = null;
                    } else {
                        List<Rect> boundingRects = displayCutout.getBoundingRects();
                        Region obtain = Region.obtain();
                        if (boundingRects != null) {
                            for (Rect rect : boundingRects) {
                                if (rect != null && !rect.isEmpty()) {
                                    obtain.op(rect, Region.Op.UNION);
                                }
                            }
                        }
                        displayCutoutBaseView.getRootView().getLocationOnScreen(displayCutoutBaseView.location);
                        int[] iArr = displayCutoutBaseView.location;
                        obtain.translate(-iArr[0], -iArr[1]);
                        obtain.op(displayCutoutBaseView.getRootView().getLeft(), displayCutoutBaseView.getRootView().getTop(), displayCutoutBaseView.getRootView().getRight(), displayCutoutBaseView.getRootView().getBottom(), Region.Op.INTERSECT);
                        region = obtain;
                    }
                    if (region != null) {
                        internalInsetsInfo.touchableRegion.op(region, Region.Op.UNION);
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0] */
    public RegionInterceptingFrameLayout(Context context) {
        super(context);
        final int i = 0;
        this.mInsetsListener = new ViewTreeObserver.OnComputeInternalInsetsListener(this) { // from class: com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0
            public final /* synthetic */ RegionInterceptingFrameLayout f$0;

            {
                this.f$0 = this;
            }

            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        RegionInterceptingFrameLayout.m71$r8$lambda$Q1SOsUhqbybjrejNJ9Qnk04mvU(this.f$0, internalInsetsInfo);
                        return;
                }
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnComputeInternalInsetsListener(this.mInsetsListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnComputeInternalInsetsListener(this.mInsetsListener);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0] */
    public RegionInterceptingFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        final int i = 2;
        this.mInsetsListener = new ViewTreeObserver.OnComputeInternalInsetsListener(this) { // from class: com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0
            public final /* synthetic */ RegionInterceptingFrameLayout f$0;

            {
                this.f$0 = this;
            }

            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        RegionInterceptingFrameLayout.m71$r8$lambda$Q1SOsUhqbybjrejNJ9Qnk04mvU(this.f$0, internalInsetsInfo);
                        return;
                }
            }
        };
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0] */
    public RegionInterceptingFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        final int i2 = 3;
        this.mInsetsListener = new ViewTreeObserver.OnComputeInternalInsetsListener(this) { // from class: com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0
            public final /* synthetic */ RegionInterceptingFrameLayout f$0;

            {
                this.f$0 = this;
            }

            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                switch (i2) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        RegionInterceptingFrameLayout.m71$r8$lambda$Q1SOsUhqbybjrejNJ9Qnk04mvU(this.f$0, internalInsetsInfo);
                        return;
                }
            }
        };
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0] */
    public RegionInterceptingFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        final int i3 = 1;
        this.mInsetsListener = new ViewTreeObserver.OnComputeInternalInsetsListener(this) { // from class: com.android.systemui.RegionInterceptingFrameLayout$$ExternalSyntheticLambda0
            public final /* synthetic */ RegionInterceptingFrameLayout f$0;

            {
                this.f$0 = this;
            }

            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                switch (i3) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        RegionInterceptingFrameLayout.m71$r8$lambda$Q1SOsUhqbybjrejNJ9Qnk04mvU(this.f$0, internalInsetsInfo);
                        return;
                }
            }
        };
    }
}
