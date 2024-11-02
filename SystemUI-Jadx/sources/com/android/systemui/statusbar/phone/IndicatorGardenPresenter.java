package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.internal.policy.SystemBarUtils;
import com.android.systemui.BasicRune;
import com.android.systemui.Dumpable;
import com.android.systemui.biometrics.SideFpsController$$ExternalSyntheticOutline0;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.util.DeviceType;
import java.io.PrintWriter;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorGardenPresenter implements Dumpable {
    public int displayDeviceType;
    public IndicatorGardenAlgorithm gardenAlgorithm;
    public final IndicatorCutoutUtil indicatorCutoutUtil;
    public final IndicatorGardenAlgorithmFactory indicatorGardenAlgorithmFactory;
    public final IndicatorGardenInputProperties inputProperties;
    public final Handler mainHandler;
    public final ArrayList statusIconContainerCallbacks;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface StatusIconContainerCallback {
        void updateStatusIconContainer();
    }

    public IndicatorGardenPresenter(DumpManager dumpManager, Context context, IndicatorGardenAlgorithmFactory indicatorGardenAlgorithmFactory, IndicatorGardenInputProperties indicatorGardenInputProperties, Handler handler, IndicatorCutoutUtil indicatorCutoutUtil) {
        IndicatorGardenAlgorithm indicatorGardenAlgorithm;
        this.indicatorGardenAlgorithmFactory = indicatorGardenAlgorithmFactory;
        this.inputProperties = indicatorGardenInputProperties;
        this.mainHandler = handler;
        this.indicatorCutoutUtil = indicatorCutoutUtil;
        DeviceType.isEngOrUTBinary();
        IndicatorCutoutUtil indicatorCutoutUtil2 = indicatorGardenAlgorithmFactory.indicatorCutoutUtil;
        if (indicatorCutoutUtil2.cutoutType == CutoutType.CENTER_CUTOUT) {
            indicatorGardenAlgorithm = indicatorGardenAlgorithmFactory.indicatorGardenAlgorithmCenterCutout;
        } else if (BasicRune.STATUS_LAYOUT_SIDELING_CUTOUT && indicatorCutoutUtil2.isMainDisplay()) {
            indicatorGardenAlgorithm = indicatorGardenAlgorithmFactory.indicatorGardenAlgorithmSidelingCenterCutout;
        } else {
            indicatorGardenAlgorithm = indicatorGardenAlgorithmFactory.indicatorGardenAlgorithmNoCutout;
        }
        this.gardenAlgorithm = indicatorGardenAlgorithm;
        this.statusIconContainerCallbacks = new ArrayList();
        if (BasicRune.BASIC_FOLDABLE_TYPE_FOLD) {
            this.displayDeviceType = context.getResources().getConfiguration().semDisplayDeviceType;
        }
        dumpManager.registerNormalDumpable("IndicatorGardenPresenter", this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("IndicatorGardenPresenter");
        printWriter.println("    " + this.gardenAlgorithm.name);
        printWriter.println("");
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        indicatorGardenInputProperties.getClass();
        printWriter.println("    IndicatorGardenInputProperties");
        SideFpsController$$ExternalSyntheticOutline0.m("        rotation(0-0,90-1,180-2,270-3)=", indicatorGardenInputProperties.rotation, printWriter);
        int i = indicatorGardenInputProperties.statusBarWidth;
        Context context = indicatorGardenInputProperties.context;
        int statusBarHeight = SystemBarUtils.getStatusBarHeight(context);
        Rect bounds = context.getResources().getConfiguration().windowConfiguration.getBounds();
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("        statusBarWidth=", i, ", statusBarHeight=", statusBarHeight, " ");
        m.append(bounds);
        printWriter.println(m.toString());
        printWriter.println(SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("        cornerPaddingC=", indicatorGardenInputProperties.cornerPaddingC, " (defaultStartPadding=", indicatorGardenInputProperties.defaultStartPadding, ")"));
        int i2 = indicatorGardenInputProperties.cutoutSidePaddingD;
        int i3 = indicatorGardenInputProperties.cutoutInnerPaddingD;
        int i4 = indicatorGardenInputProperties.defaultCenterPadding;
        StringBuilder m2 = GridLayoutManager$$ExternalSyntheticOutline0.m("        cutoutSidePaddingD=", i2, ", cutoutInnerPaddingD=", i3, " (defaultCenterPadding=");
        m2.append(i4);
        m2.append(")");
        printWriter.println(m2.toString());
        SideFpsController$$ExternalSyntheticOutline0.m("        cutoutTopMarginB=", indicatorGardenInputProperties.cutoutTopMarginB, printWriter);
        printWriter.println("        density=" + indicatorGardenInputProperties.density);
        printWriter.println("        displayCutout=" + indicatorGardenInputProperties.displayCutout);
        IndicatorCutoutUtil indicatorCutoutUtil = this.indicatorGardenAlgorithmFactory.indicatorCutoutUtil;
        indicatorCutoutUtil.getClass();
        printWriter.println("    IndicatorCutoutUtil");
        printWriter.println("        cutoutType=" + indicatorCutoutUtil.cutoutType + " isUDC=" + indicatorCutoutUtil.isUDCModel + " isMainDisplay=" + indicatorCutoutUtil.isMainDisplay());
        Rect displayCutoutAreaToExclude = indicatorCutoutUtil.getDisplayCutoutAreaToExclude();
        StringBuilder sb = new StringBuilder("        excludeArea=");
        sb.append(displayCutoutAreaToExclude);
        printWriter.println(sb.toString());
    }

    public final void onGardenApplyWindowInsets(IndicatorGarden indicatorGarden) {
        if (indicatorGarden.getGardenWindowInsets() != null) {
            WindowInsets gardenWindowInsets = indicatorGarden.getGardenWindowInsets();
            Intrinsics.checkNotNull(gardenWindowInsets);
            if (gardenWindowInsets.getDisplayCutout() != null) {
                WindowInsets gardenWindowInsets2 = indicatorGarden.getGardenWindowInsets();
                Intrinsics.checkNotNull(gardenWindowInsets2);
                DisplayCutout displayCutout = gardenWindowInsets2.getDisplayCutout();
                this.inputProperties.displayCutout = displayCutout;
                Log.d("IndicatorGardenInputProperties", "Set cutout=" + displayCutout);
            }
        }
        updateGardenWithNewModel(indicatorGarden);
    }

    public final void onGardenConfigurationChanged(IndicatorGarden indicatorGarden, Configuration configuration) {
        IndicatorGardenAlgorithm indicatorGardenAlgorithm;
        this.inputProperties.updateWindowMetrics();
        if (BasicRune.BASIC_FOLDABLE_TYPE_FOLD) {
            int i = this.displayDeviceType;
            int i2 = configuration.semDisplayDeviceType;
            if (i != i2) {
                this.displayDeviceType = i2;
                IndicatorGardenAlgorithmFactory indicatorGardenAlgorithmFactory = this.indicatorGardenAlgorithmFactory;
                indicatorGardenAlgorithmFactory.indicatorCutoutUtil.loadDisplayCutout();
                IndicatorCutoutUtil indicatorCutoutUtil = indicatorGardenAlgorithmFactory.indicatorCutoutUtil;
                if (indicatorCutoutUtil.cutoutType == CutoutType.CENTER_CUTOUT) {
                    indicatorGardenAlgorithm = indicatorGardenAlgorithmFactory.indicatorGardenAlgorithmCenterCutout;
                } else if (BasicRune.STATUS_LAYOUT_SIDELING_CUTOUT && indicatorCutoutUtil.isMainDisplay()) {
                    indicatorGardenAlgorithm = indicatorGardenAlgorithmFactory.indicatorGardenAlgorithmSidelingCenterCutout;
                } else {
                    indicatorGardenAlgorithm = indicatorGardenAlgorithmFactory.indicatorGardenAlgorithmNoCutout;
                }
                this.gardenAlgorithm = indicatorGardenAlgorithm;
            }
        }
        updateGardenWithNewModel(indicatorGarden);
    }

    public final void updateGardenWithNewModel(IndicatorGarden indicatorGarden) {
        IndicatorGardenAlgorithm indicatorGardenAlgorithm = this.gardenAlgorithm;
        indicatorGardenAlgorithm.initResources();
        IndicatorGardenModel indicatorGardenModel = new IndicatorGardenModel();
        indicatorGardenModel.totalHeight = SystemBarUtils.getStatusBarHeight(indicatorGardenAlgorithm.context);
        indicatorGardenModel.paddingLeft = indicatorGardenAlgorithm.calculateLeftPadding();
        indicatorGardenModel.paddingRight = indicatorGardenAlgorithm.calculateRightPadding();
        indicatorGardenModel.hasCameraTopMargin = indicatorGardenAlgorithm.hasCameraTopMargin();
        indicatorGardenModel.cameraTopMargin = indicatorGardenAlgorithm.calculateCameraTopMargin();
        indicatorGardenModel.maxWidthCenterContainer = indicatorGardenAlgorithm.calculateCenterContainerMaxWidth();
        indicatorGardenModel.maxWidthLeftContainer = indicatorGardenAlgorithm.calculateLeftContainerMaxWidth(indicatorGarden);
        indicatorGardenModel.maxWidthRightContainer = indicatorGardenAlgorithm.calculateRightContainerMaxWidth(indicatorGarden);
        indicatorGarden.updateGarden(indicatorGardenModel, this.inputProperties);
    }
}
