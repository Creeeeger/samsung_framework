package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Trace;
import android.util.LruCache;
import android.util.Pair;
import android.view.DisplayCutout;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.policy.CallbackController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.leak.RotationUtils;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarContentInsetsProvider implements CallbackController, ConfigurationController.ConfigurationListener, Dumpable {
    public final ConfigurationController configurationController;
    public final Context context;
    public final IndicatorGardenPresenter indicatorGardenPresenter;
    public final IndicatorScaleGardener indicatorScaleGardener;
    public final LruCache insetsCache = new LruCache(16);
    public final Set listeners = new LinkedHashSet();
    public final Lazy isPrivacyDotEnabled$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.android.systemui.statusbar.phone.StatusBarContentInsetsProvider$isPrivacyDotEnabled$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(StatusBarContentInsetsProvider.this.context.getResources().getBoolean(R.bool.config_enablePrivacyDot));
        }
    });

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CacheKey {
        public final DisplayCutout displayCutout;
        public final Rect displaySize;
        public final int rotation;

        public CacheKey(int i, Rect rect, DisplayCutout displayCutout) {
            this.rotation = i;
            this.displaySize = rect;
            this.displayCutout = displayCutout;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CacheKey)) {
                return false;
            }
            CacheKey cacheKey = (CacheKey) obj;
            if (this.rotation == cacheKey.rotation && Intrinsics.areEqual(this.displaySize, cacheKey.displaySize) && Intrinsics.areEqual(this.displayCutout, cacheKey.displayCutout)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = (this.displaySize.hashCode() + (Integer.hashCode(this.rotation) * 31)) * 31;
            DisplayCutout displayCutout = this.displayCutout;
            if (displayCutout == null) {
                hashCode = 0;
            } else {
                hashCode = displayCutout.hashCode();
            }
            return hashCode2 + hashCode;
        }

        public final String toString() {
            return "CacheKey(rotation=" + this.rotation + ", displaySize=" + this.displaySize + ", displayCutout=" + this.displayCutout + ")";
        }
    }

    public StatusBarContentInsetsProvider(Context context, ConfigurationController configurationController, DumpManager dumpManager, IndicatorGardenPresenter indicatorGardenPresenter, IndicatorScaleGardener indicatorScaleGardener) {
        this.context = context;
        this.configurationController = configurationController;
        this.indicatorGardenPresenter = indicatorGardenPresenter;
        this.indicatorScaleGardener = indicatorScaleGardener;
        ((ConfigurationControllerImpl) configurationController).addCallback(this);
        DumpManager.registerDumpable$default(dumpManager, "StatusBarInsetsProvider", this);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        this.listeners.add((StatusBarContentInsetsChangedListener) obj);
    }

    public final boolean currentRotationHasCornerCutout() {
        Context context = this.context;
        DisplayCutout cutout = context.getDisplay().getCutout();
        if (cutout == null) {
            return false;
        }
        Rect boundingRectTop = cutout.getBoundingRectTop();
        Point point = new Point();
        context.getDisplay().getRealSize(point);
        if (boundingRectTop.left > 0 && boundingRectTop.right < point.x) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        LruCache lruCache = this.insetsCache;
        for (Map.Entry entry : lruCache.snapshot().entrySet()) {
            printWriter.println(((CacheKey) entry.getKey()) + " -> " + ((Rect) entry.getValue()));
        }
        printWriter.println(lruCache);
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0188, code lost:
    
        r10 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0186, code lost:
    
        if (r8.right >= r13) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x014f, code lost:
    
        r14 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Rect getAndSetCalculatedAreaForRotation(int r20, android.view.DisplayCutout r21, android.content.res.Resources r22, com.android.systemui.statusbar.phone.StatusBarContentInsetsProvider.CacheKey r23) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarContentInsetsProvider.getAndSetCalculatedAreaForRotation(int, android.view.DisplayCutout, android.content.res.Resources, com.android.systemui.statusbar.phone.StatusBarContentInsetsProvider$CacheKey):android.graphics.Rect");
    }

    public final Rect getBoundingRectForPrivacyChipForRotation(int i, DisplayCutout displayCutout) {
        Rect rect = (Rect) this.insetsCache.get(getCacheKey(i, displayCutout));
        if (rect == null) {
            rect = getStatusBarContentAreaForRotation(i);
        }
        Resources resourcesForRotation = RotationUtils.getResourcesForRotation(i, this.context);
        return StatusBarContentInsetsProviderKt.getPrivacyChipBoundingRectForInsets(rect, resourcesForRotation.getDimensionPixelSize(R.dimen.ongoing_appops_dot_diameter), resourcesForRotation.getDimensionPixelSize(R.dimen.ongoing_appops_chip_max_width), ((ConfigurationControllerImpl) this.configurationController).isLayoutRtl());
    }

    public final CacheKey getCacheKey(int i, DisplayCutout displayCutout) {
        return new CacheKey(i, new Rect(this.context.getResources().getConfiguration().windowConfiguration.getMaxBounds()), displayCutout);
    }

    public final Rect getStatusBarContentAreaForRotation(int i) {
        Context context = this.context;
        DisplayCutout cutout = context.getDisplay().getCutout();
        CacheKey cacheKey = getCacheKey(i, cutout);
        Rect rect = (Rect) this.insetsCache.get(cacheKey);
        if (rect == null) {
            return getAndSetCalculatedAreaForRotation(i, cutout, RotationUtils.getResourcesForRotation(i, context), cacheKey);
        }
        return rect;
    }

    public final Pair getStatusBarContentInsetsForCurrentRotation() {
        int i;
        int i2;
        Context context = this.context;
        int exactRotation = RotationUtils.getExactRotation(context);
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        LruCache lruCache = this.insetsCache;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "StatusBarContentInsetsProvider.getStatusBarContentInsetsForRotation");
            try {
                DisplayCutout cutout = context.getDisplay().getCutout();
                CacheKey cacheKey = getCacheKey(exactRotation, cutout);
                Rect maxBounds = context.getResources().getConfiguration().windowConfiguration.getMaxBounds();
                Point point = new Point(maxBounds.width(), maxBounds.height());
                int exactRotation2 = RotationUtils.getExactRotation(context);
                if (exactRotation2 != 0 && exactRotation2 != 2) {
                    int i3 = point.y;
                    point.y = point.x;
                    point.x = i3;
                }
                if (exactRotation != 0 && exactRotation != 2) {
                    i2 = point.y;
                } else {
                    i2 = point.x;
                }
                Rect rect = (Rect) lruCache.get(cacheKey);
                if (rect == null) {
                    rect = getAndSetCalculatedAreaForRotation(exactRotation, cutout, RotationUtils.getResourcesForRotation(exactRotation, context), cacheKey);
                }
                return new Pair(Integer.valueOf(rect.left), Integer.valueOf(i2 - rect.right));
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        DisplayCutout cutout2 = context.getDisplay().getCutout();
        CacheKey cacheKey2 = getCacheKey(exactRotation, cutout2);
        Rect maxBounds2 = context.getResources().getConfiguration().windowConfiguration.getMaxBounds();
        Point point2 = new Point(maxBounds2.width(), maxBounds2.height());
        int exactRotation3 = RotationUtils.getExactRotation(context);
        if (exactRotation3 != 0 && exactRotation3 != 2) {
            int i4 = point2.y;
            point2.y = point2.x;
            point2.x = i4;
        }
        if (exactRotation != 0 && exactRotation != 2) {
            i = point2.y;
        } else {
            i = point2.x;
        }
        Rect rect2 = (Rect) lruCache.get(cacheKey2);
        if (rect2 == null) {
            rect2 = getAndSetCalculatedAreaForRotation(exactRotation, cutout2, RotationUtils.getResourcesForRotation(exactRotation, context), cacheKey2);
        }
        return new Pair(Integer.valueOf(rect2.left), Integer.valueOf(i - rect2.right));
    }

    public final int getStatusBarPaddingTop() {
        return this.indicatorGardenPresenter.gardenAlgorithm.calculateCameraTopMargin() + MathKt__MathJVMKt.roundToInt(r0.getResources().getDimensionPixelSize(R.dimen.privacy_dot_padding_top) * this.indicatorScaleGardener.getLatestScaleModel(this.context).ratio);
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onDensityOrFontScaleChanged() {
        this.insetsCache.evictAll();
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((StatusBarContentInsetsChangedListener) it.next()).onStatusBarContentInsetsChanged();
        }
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onMaxBoundsChanged() {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((StatusBarContentInsetsChangedListener) it.next()).onStatusBarContentInsetsChanged();
        }
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onThemeChanged() {
        this.insetsCache.evictAll();
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((StatusBarContentInsetsChangedListener) it.next()).onStatusBarContentInsetsChanged();
        }
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        this.listeners.remove((StatusBarContentInsetsChangedListener) obj);
    }
}
