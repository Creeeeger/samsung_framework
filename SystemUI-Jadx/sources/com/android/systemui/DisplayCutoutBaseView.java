package com.android.systemui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.AttributeSet;
import android.util.IndentingPrintWriter;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.View;
import com.android.systemui.RegionInterceptingFrameLayout;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.statusbar.phone.IndicatorCutoutUtil;
import com.android.systemui.statusbar.phone.IndicatorGardenInputProperties;
import com.android.systemui.util.DumpUtilsKt;
import com.android.systemui.util.SettingsHelper;
import java.io.PrintWriter;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class DisplayCutoutBaseView extends View implements RegionInterceptingFrameLayout.RegionInterceptableView {
    public static final Companion Companion = new Companion(null);
    public float cameraProtectionProgress;
    public final Path cutoutPath;
    public final IndicatorCutoutUtil cutoutUtil;
    public final DisplayInfo displayInfo;
    public Display.Mode displayMode;
    public int displayRotation;
    public String displayUniqueId;
    public int initialDisplayDensity;
    public int initialDisplayWidth;
    public final int[] location;
    public final Rect mBoundingRect;
    public final Paint paint;
    public final Paint paintForCameraProtection;
    public boolean pendingConfigChange;
    public final Path protectionPath;
    public final Path protectionPathOrig;
    public final RectF protectionRect;
    public final RectF protectionRectOrig;
    public final SettingsHelper settingsHelper;
    public boolean shouldDrawCutout;
    public boolean showProtection;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DisplayCutoutBaseView(Context context) {
        super(context);
        Resources resources = getContext().getResources();
        Display display = getContext().getDisplay();
        this.shouldDrawCutout = DisplayCutout.getFillBuiltInDisplayCutout(resources, display != null ? display.getUniqueId() : null);
        this.location = new int[2];
        this.displayInfo = new DisplayInfo();
        this.paint = new Paint();
        this.cutoutPath = new Path();
        this.protectionRect = new RectF();
        this.protectionPath = new Path();
        this.protectionRectOrig = new RectF();
        this.protectionPathOrig = new Path();
        this.cameraProtectionProgress = 1.0f;
        this.paintForCameraProtection = new Paint();
        this.mBoundingRect = new Rect();
        this.settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.cutoutUtil = new IndicatorCutoutUtil(getContext(), new IndicatorGardenInputProperties(getContext()), (DisplayLifecycle) Dependency.get(DisplayLifecycle.class));
    }

    public void drawCutoutProtection(Canvas canvas) {
        if (this.cameraProtectionProgress > 0.5f) {
            boolean z = true;
            if (this.cutoutUtil.isUDCMainDisplay() ? this.protectionRect.isEmpty() : this.mBoundingRect.isEmpty()) {
                z = false;
            }
            if (z) {
                if (!this.cutoutUtil.isUDCMainDisplay()) {
                    canvas.drawPath(this.cutoutPath, this.paintForCameraProtection);
                } else {
                    canvas.drawPath(this.protectionPath, this.paintForCameraProtection);
                }
            }
        }
    }

    public void drawCutouts(Canvas canvas) {
        Path path;
        DisplayCutout displayCutout = this.displayInfo.displayCutout;
        if (displayCutout != null) {
            path = displayCutout.getCutoutPath();
        } else {
            path = null;
        }
        if (path == null) {
            return;
        }
        canvas.drawPath(this.cutoutPath, this.paint);
    }

    public void dump(PrintWriter printWriter) {
        IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.increaseIndent();
        asIndenting.println("DisplayCutoutBaseView:");
        asIndenting.increaseIndent();
        DisplayCutoutBaseView$$ExternalSyntheticOutline0.m("shouldDrawCutout=", this.shouldDrawCutout, asIndenting);
        asIndenting.println("cutout=" + this.displayInfo.displayCutout);
        asIndenting.println("cameraProtectionProgress=" + this.cameraProtectionProgress);
        asIndenting.println("protectionRect=" + this.protectionRect);
        asIndenting.println("protectionRectOrig=" + this.protectionRectOrig);
        asIndenting.decreaseIndent();
        asIndenting.decreaseIndent();
    }

    public void enableShowProtection(boolean z) {
        if (this.showProtection == z) {
            return;
        }
        this.showProtection = z;
        updateProtectionBoundingPath();
        invalidate();
    }

    public float getPhysicalPixelDisplaySizeRatio() {
        DisplayCutout displayCutout = this.displayInfo.displayCutout;
        if (displayCutout != null) {
            return displayCutout.getCutoutPathParserInfo().getPhysicalPixelDisplaySizeRatio();
        }
        return 1.0f;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        String str;
        super.onAttachedToWindow();
        Display display = getContext().getDisplay();
        if (display != null) {
            str = display.getUniqueId();
        } else {
            str = null;
        }
        this.displayUniqueId = str;
        updateCutout();
        updateProtectionBoundingPath();
        onUpdate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.shouldDrawCutout && !this.showProtection) {
            return;
        }
        canvas.save();
        getLocationOnScreen(this.location);
        int[] iArr = this.location;
        canvas.translate(-iArr[0], -iArr[1]);
        if (this.shouldDrawCutout) {
            drawCutouts(canvas);
        }
        if (this.showProtection) {
            drawCutoutProtection(canvas);
        }
        canvas.restore();
    }

    public final void setProtection(Path path, Rect rect) {
        this.protectionPathOrig.reset();
        this.protectionPathOrig.set(path);
        this.protectionPath.reset();
        this.protectionRectOrig.setEmpty();
        this.protectionRectOrig.set(rect);
        this.protectionRect.setEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r6) == false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateConfiguration(java.lang.String r9) {
        /*
            r8 = this;
            android.view.DisplayInfo r0 = new android.view.DisplayInfo
            r0.<init>()
            android.content.Context r1 = r8.getContext()
            android.view.Display r1 = r1.getDisplay()
            if (r1 == 0) goto L12
            r1.getDisplayInfo(r0)
        L12:
            android.view.Display$Mode r1 = r8.displayMode
            android.view.Display$Mode r2 = r0.getMode()
            r8.displayMode = r2
            java.lang.String r2 = r0.uniqueId
            java.lang.String r3 = r8.displayUniqueId
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r2)
            r4 = 0
            r5 = 1
            if (r3 != 0) goto L62
            r8.displayUniqueId = r2
            android.content.Context r2 = r8.getContext()
            android.content.res.Resources r2 = r2.getResources()
            java.lang.String r3 = r8.displayUniqueId
            boolean r2 = android.view.DisplayCutout.getFillBuiltInDisplayCutout(r2, r3)
            r8.shouldDrawCutout = r2
            com.android.systemui.statusbar.phone.IndicatorCutoutUtil r2 = r8.cutoutUtil
            boolean r3 = r2.isUDCModel
            if (r3 == 0) goto L5f
            boolean r2 = r2.isUDCMainDisplay()
            if (r2 == 0) goto L5b
            com.android.systemui.util.SettingsHelper r2 = r8.settingsHelper
            com.android.systemui.util.SettingsHelper$ItemMap r2 = r2.mItemLists
            java.lang.String r3 = "fill_udc_display_cutout"
            com.android.systemui.util.SettingsHelper$Item r2 = r2.get(r3)
            int r2 = r2.getIntValue()
            if (r2 == 0) goto L56
            r2 = r5
            goto L57
        L56:
            r2 = r4
        L57:
            if (r2 == 0) goto L5b
            r2 = r5
            goto L5c
        L5b:
            r2 = r4
        L5c:
            r8.enableShowProtection(r2)
        L5f:
            r8.invalidate()
        L62:
            android.view.Display$Mode r2 = r8.displayMode
            if (r1 != 0) goto L67
            goto L9a
        L67:
            int r3 = r1.getPhysicalHeight()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r6 = 0
            if (r2 == 0) goto L7b
            int r7 = r2.getPhysicalHeight()
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            goto L7c
        L7b:
            r7 = r6
        L7c:
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r7)
            if (r3 == 0) goto L9a
            int r1 = r1.getPhysicalWidth()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            if (r2 == 0) goto L94
            int r2 = r2.getPhysicalWidth()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
        L94:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r6)
            if (r1 != 0) goto L9b
        L9a:
            r4 = r5
        L9b:
            if (r4 != 0) goto Lb0
            android.view.DisplayInfo r1 = r8.displayInfo
            android.view.DisplayCutout r1 = r1.displayCutout
            android.view.DisplayCutout r2 = r0.displayCutout
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 == 0) goto Lb0
            int r1 = r8.displayRotation
            int r2 = r0.rotation
            if (r1 != r2) goto Lb0
            return
        Lb0:
            java.lang.String r1 = r0.uniqueId
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r1)
            if (r9 == 0) goto Lc5
            int r9 = r0.rotation
            r8.displayRotation = r9
            r8.updateCutout()
            r8.updateProtectionBoundingPath()
            r8.onUpdate()
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.DisplayCutoutBaseView.updateConfiguration(java.lang.String):void");
    }

    public void updateCutout() {
        Path cutoutPath;
        if (this.pendingConfigChange) {
            return;
        }
        this.cutoutPath.reset();
        Display display = getContext().getDisplay();
        if (display != null) {
            display.getDisplayInfo(this.displayInfo);
        }
        DisplayCutout displayCutout = this.displayInfo.displayCutout;
        if (displayCutout != null && (cutoutPath = displayCutout.getCutoutPath()) != null) {
            this.cutoutPath.set(cutoutPath);
        }
        invalidate();
    }

    public void updateProtectionBoundingPath() {
        boolean z;
        int i;
        if (this.pendingConfigChange) {
            return;
        }
        Matrix matrix = new Matrix();
        float physicalPixelDisplaySizeRatio = getPhysicalPixelDisplaySizeRatio();
        matrix.postScale(physicalPixelDisplaySizeRatio, physicalPixelDisplaySizeRatio);
        DisplayInfo displayInfo = this.displayInfo;
        int i2 = displayInfo.logicalWidth;
        int i3 = displayInfo.logicalHeight;
        int i4 = displayInfo.rotation;
        if (i4 != 1 && i4 != 3) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            i = i3;
        } else {
            i = i2;
        }
        if (!z) {
            i2 = i3;
        }
        Companion.getClass();
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        matrix.postRotate(90.0f);
                        matrix.postTranslate(i2, 0.0f);
                    } else {
                        throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unknown rotation: ", i4));
                    }
                } else {
                    matrix.postRotate(180.0f);
                    matrix.postTranslate(i, i2);
                }
            } else {
                matrix.postRotate(270.0f);
                matrix.postTranslate(0.0f, i);
            }
        }
        if (!this.protectionPathOrig.isEmpty()) {
            this.protectionPath.set(this.protectionPathOrig);
            this.protectionPath.transform(matrix);
            matrix.mapRect(this.protectionRect, this.protectionRectOrig);
        }
    }

    public DisplayCutoutBaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = getContext().getResources();
        Display display = getContext().getDisplay();
        this.shouldDrawCutout = DisplayCutout.getFillBuiltInDisplayCutout(resources, display != null ? display.getUniqueId() : null);
        this.location = new int[2];
        this.displayInfo = new DisplayInfo();
        this.paint = new Paint();
        this.cutoutPath = new Path();
        this.protectionRect = new RectF();
        this.protectionPath = new Path();
        this.protectionRectOrig = new RectF();
        this.protectionPathOrig = new Path();
        this.cameraProtectionProgress = 1.0f;
        this.paintForCameraProtection = new Paint();
        this.mBoundingRect = new Rect();
        this.settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.cutoutUtil = new IndicatorCutoutUtil(getContext(), new IndicatorGardenInputProperties(getContext()), (DisplayLifecycle) Dependency.get(DisplayLifecycle.class));
    }

    public static /* synthetic */ void getCameraProtectionProgress$annotations() {
    }

    public static /* synthetic */ void getDisplayInfo$annotations() {
    }

    public static /* synthetic */ void getProtectionPath$annotations() {
    }

    public static /* synthetic */ void getProtectionRect$annotations() {
    }

    public void onUpdate() {
    }

    public DisplayCutoutBaseView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = getContext().getResources();
        Display display = getContext().getDisplay();
        this.shouldDrawCutout = DisplayCutout.getFillBuiltInDisplayCutout(resources, display != null ? display.getUniqueId() : null);
        this.location = new int[2];
        this.displayInfo = new DisplayInfo();
        this.paint = new Paint();
        this.cutoutPath = new Path();
        this.protectionRect = new RectF();
        this.protectionPath = new Path();
        this.protectionRectOrig = new RectF();
        this.protectionPathOrig = new Path();
        this.cameraProtectionProgress = 1.0f;
        this.paintForCameraProtection = new Paint();
        this.mBoundingRect = new Rect();
        this.settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.cutoutUtil = new IndicatorCutoutUtil(getContext(), new IndicatorGardenInputProperties(getContext()), (DisplayLifecycle) Dependency.get(DisplayLifecycle.class));
    }
}
