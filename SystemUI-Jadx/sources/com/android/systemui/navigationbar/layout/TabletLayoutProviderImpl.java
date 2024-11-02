package com.android.systemui.navigationbar.layout;

import android.content.Context;
import android.graphics.Point;
import com.android.systemui.R;
import com.samsung.systemui.splugins.navigationbar.LayoutProvider;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TabletLayoutProviderImpl implements LayoutProvider {
    public final Context mContext;
    public int mCurrentAlign = 1;
    public int mCurrentNavigationMode;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public TabletLayoutProviderImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final int getButtonDistanceSize(Point point, boolean z) {
        int min;
        double min2;
        double d;
        if (z) {
            min = Math.max(point.x, point.y);
        } else {
            min = Math.min(point.x, point.y);
        }
        if (this.mCurrentNavigationMode == 0) {
            min2 = min;
            d = 0.013d;
        } else {
            min2 = Math.min(point.x, point.y);
            d = 0.095d;
        }
        return (int) (min2 * d);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final int getButtonWidth(Point point, boolean z) {
        int min;
        double d;
        if (z) {
            min = Math.max(point.x, point.y);
        } else {
            min = Math.min(point.x, point.y);
        }
        if (this.mCurrentNavigationMode == 0) {
            double d2 = min;
            if (this.mCurrentAlign == 1) {
                d = 0.207d;
            } else {
                d = 0.12d;
            }
            return (int) (d2 * d);
        }
        return (int) (Math.min(point.x, point.y) * 0.13d);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final String getGesturalLayout(boolean z, boolean z2) {
        int i;
        int i2;
        Context context = this.mContext;
        if (z) {
            this.mCurrentNavigationMode = 2;
            if (z2) {
                i2 = R.string.config_secNavBarGestureTabletRevLayoutHandle;
            } else {
                i2 = R.string.config_secNavBarGestureTabletLayoutHandle;
            }
            return context.getString(i2);
        }
        this.mCurrentNavigationMode = 1;
        if (z2) {
            i = R.string.config_secNavBarRevLayoutHandle;
        } else {
            i = R.string.config_secNavBarLayoutHandle;
        }
        return context.getString(i);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final int getGestureWidth(Point point, boolean z) {
        return (int) (Math.min(point.x, point.y) * 0.3d);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final String getLayout(boolean z) {
        Context context = this.mContext;
        if (z) {
            return context.getString(R.string.config_navBarRevTabletLayout);
        }
        return context.getString(R.string.config_navBarTabletLayout);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final int getSpaceSidePadding(Point point, boolean z) {
        int min;
        if (z) {
            min = Math.max(point.x, point.y);
        } else {
            min = Math.min(point.x, point.y);
        }
        double d = 0.03325d;
        if (this.mCurrentNavigationMode == 0) {
            double d2 = min;
            if (this.mCurrentAlign != 1) {
                d = 0.0d;
            }
            return (int) (d2 * d);
        }
        return (int) (Math.min(point.x, point.y) * 0.03325d);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final int getSpaceWidth(Point point, boolean z, boolean z2) {
        int min;
        if (z) {
            min = Math.max(point.x, point.y);
        } else {
            min = Math.min(point.x, point.y);
        }
        double d = 0.11d;
        if (this.mCurrentNavigationMode == 0) {
            double d2 = min;
            if (this.mCurrentAlign != 1) {
                d = 0.075d;
            }
            return (int) (d2 * d);
        }
        return (int) (min * 0.11d);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final int getVerticalLayoutID(boolean z) {
        if (z) {
            return R.layout.samsung_navigation_layout_tablet;
        }
        return R.layout.samsung_navigation_layout;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.LayoutProvider
    public final String getLayout(boolean z, int i) {
        this.mCurrentAlign = i;
        this.mCurrentNavigationMode = 0;
        Context context = this.mContext;
        if (i == 0) {
            return context.getString(z ? R.string.config_navBarRevFoldLayoutAlignLeft : R.string.config_navBarFoldLayoutAlignLeft);
        }
        if (i != 2) {
            return getLayout(z);
        }
        return context.getString(z ? R.string.config_navBarRevFoldLayoutAlignRight : R.string.config_navBarFoldLayoutAlignRight);
    }
}
