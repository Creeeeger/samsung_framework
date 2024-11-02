package com.android.systemui.shade;

import android.util.Log;
import android.widget.FrameLayout;
import com.android.systemui.QpRune;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.util.DeviceState;
import dagger.Lazy;
import java.util.function.BooleanSupplier;
import java.util.function.DoubleSupplier;
import java.util.function.IntConsumer;
import java.util.function.IntSupplier;
import java.util.function.Supplier;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecTabletHorizontalPanelPositionHelper {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final DoubleSupplier expandedFractionSupplier;
    public final ShadeHeaderController headerController;
    public float horizontalPanelTranslation;
    public final BooleanSupplier isFullyCollapsedSupplier;
    public final BooleanSupplier isFullyExpandedSupplier;
    public int lastOrientation = -1;
    public final NotificationStackScrollLayoutController notificationStackScrollLayoutController;
    public final Lazy panelViewControllerLazy;
    public final IntSupplier positionMinSideMarginSupplier;
    public final IntConsumer privacyDialogHorizontalPositionConsumer;
    public final Supplier qsFrameLayoutSupplier;
    public SecTabletHorizontalPanelPositionHelper$setNextUpdateHorizontalPosition$1 updateHorizontalPositionRunnable;
    public final Supplier viewSupplier;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
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

    public SecTabletHorizontalPanelPositionHelper(DoubleSupplier doubleSupplier, ShadeHeaderController shadeHeaderController, BooleanSupplier booleanSupplier, BooleanSupplier booleanSupplier2, NotificationStackScrollLayoutController notificationStackScrollLayoutController, IntSupplier intSupplier, IntConsumer intConsumer, Supplier<FrameLayout> supplier, Supplier<NotificationPanelView> supplier2, Lazy lazy) {
        this.expandedFractionSupplier = doubleSupplier;
        this.headerController = shadeHeaderController;
        this.isFullyCollapsedSupplier = booleanSupplier;
        this.isFullyExpandedSupplier = booleanSupplier2;
        this.notificationStackScrollLayoutController = notificationStackScrollLayoutController;
        this.positionMinSideMarginSupplier = intSupplier;
        this.privacyDialogHorizontalPositionConsumer = intConsumer;
        this.qsFrameLayoutSupplier = supplier;
        this.viewSupplier = supplier2;
        this.panelViewControllerLazy = lazy;
    }

    public final void resetHorizontalPanelPosition(boolean z) {
        boolean z2;
        boolean z3 = QpRune.QUICK_TABLET;
        boolean z4 = false;
        DoubleSupplier doubleSupplier = this.expandedFractionSupplier;
        if (z3 && ((float) doubleSupplier.getAsDouble()) > 0.01f) {
            if (((NotificationPanelView) this.viewSupplier.get()).getResources().getConfiguration().orientation == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 && !z) {
                z4 = true;
            }
        }
        if (z4) {
            Log.d("SecTabletHorizontalPanelPositionHelperImpl", "skip resetHorizontalPanelPosition(" + this.horizontalPanelTranslation + "), isFullyCollapsed():" + this.isFullyCollapsedSupplier.getAsBoolean() + ", isFullyExpanded():" + this.isFullyExpandedSupplier.getAsBoolean() + ", getExpandedFraction():" + ((float) doubleSupplier.getAsDouble()));
            return;
        }
        setHorizontalPanelTranslation(0.0f);
    }

    public final void setHorizontalPanelTranslation(float f) {
        this.horizontalPanelTranslation = f;
        this.headerController.header.setTranslationX(f);
        this.notificationStackScrollLayoutController.mView.setTranslationX(f);
        ((FrameLayout) this.qsFrameLayoutSupplier.get()).setTranslationX(f);
        ((NotificationPanelViewController) this.panelViewControllerLazy.get()).mNotificationContainerParent.requestLayout();
        this.privacyDialogHorizontalPositionConsumer.accept((int) f);
    }

    public final void updateTabletHorizontalPanelPosition(float f) {
        Supplier supplier = this.viewSupplier;
        float displayWidth = DeviceState.getDisplayWidth(((NotificationPanelView) supplier.get()).getContext());
        float width = this.notificationStackScrollLayoutController.mView.getWidth();
        if (1.75f * width <= displayWidth) {
            boolean z = true;
            if (((NotificationPanelView) supplier.get()).getResources().getConfiguration().orientation != 1) {
                z = false;
            }
            if (!z) {
                float f2 = 2;
                float f3 = displayWidth / f2;
                float asInt = this.positionMinSideMarginSupplier.getAsInt() + (width / f2);
                float f4 = displayWidth - asInt;
                float f5 = displayWidth / 3;
                float f6 = f2 * f5;
                if (f >= f5) {
                    if (f > f6) {
                        asInt = f4;
                    } else {
                        asInt = f3;
                    }
                }
                setHorizontalPanelTranslation(asInt - f3);
                return;
            }
        }
        resetHorizontalPanelPosition(false);
    }
}
