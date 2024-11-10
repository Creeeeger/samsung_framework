package com.android.server.wm;

import android.R;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManagerInternal;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Slog;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.DisplayShape;
import android.view.InsetsSource;
import android.view.InsetsState;
import android.view.PrivacyIndicatorBounds;
import android.view.RoundedCorners;
import android.view.WindowInsets;
import com.android.server.wm.utils.RotationCache;
import com.android.server.wm.utils.WmDisplayCutout;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public class UdcCutoutPolicy {
    public static ConcurrentHashMap sUseLayoutInUdcCutoutActivities;
    public static ConcurrentHashMap sUseLayoutInUdcCutoutApplications;
    public static ConcurrentHashMap sUseLayoutInUdcCutoutWindows;
    public final Context mContext;
    public final DisplayContent mDisplayContent;
    public final RotationCache mDisplayCutoutCache;
    public Rect mTmpBarContentFrame;
    public Configuration mUdcConfiguration;
    public DisplayCutout mUdcCutout;
    public DisplayFrames mUdcDisplayFrames;

    public UdcCutoutPolicy(DisplayContent displayContent, RotationCache rotationCache) {
        this.mDisplayContent = displayContent;
        this.mContext = displayContent.mWmService.mContext;
        this.mDisplayCutoutCache = rotationCache;
    }

    public void updateUdcCutout(DisplayInfo displayInfo, int i, int i2) {
        int proportionalDensity = DisplayContent.getProportionalDensity(displayInfo.getNaturalWidth(), i, displayInfo.logicalDensityDpi);
        String string = this.mContext.getString(R.string.fingerprint_name_template);
        DisplayCutout fromResourcesRectApproximation = TextUtils.isEmpty(string) ? null : DisplayCutout.fromResourcesRectApproximation(this.mContext.getResources(), i, i2, i, i2, proportionalDensity, string);
        this.mUdcCutout = fromResourcesRectApproximation;
        if (fromResourcesRectApproximation != null) {
            Slog.v(StartingSurfaceController.TAG, "UdcCutoutPolicy: updateUdcCutout=" + this.mUdcCutout);
            return;
        }
        if (CoreRune.isSamsungLogEnabled()) {
            Slog.v(StartingSurfaceController.TAG, "UdcCutoutPolicy: updateUdcCutout=null, isPrimaryDisplay=true");
        }
    }

    public boolean hasUdcCutout() {
        return this.mUdcCutout != null;
    }

    public DisplayCutout calculateDisplayCutoutForRotation(int i) {
        return ((WmDisplayCutout) this.mDisplayCutoutCache.getOrCompute(this.mUdcCutout, i)).getDisplayCutout();
    }

    public void dump(PrintWriter printWriter, String str) {
        DisplayCutout displayCutout = this.mUdcCutout;
        if (displayCutout == null || displayCutout.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.print(" udcCutout=");
        printWriter.print(this.mUdcCutout);
        Configuration configuration = this.mUdcConfiguration;
        if (configuration != null && !configuration.equals(Configuration.EMPTY)) {
            printWriter.print(", config=");
            printWriter.print(this.mUdcConfiguration);
        }
        printWriter.println();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002b, code lost:
    
        if (supportsUdcCutout(getApplicationInfo(r0)) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0044, code lost:
    
        if (supportsUdcCutout(r0.info.applicationInfo) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void updateUseLayoutInUdcCutoutIfNeeded(com.android.server.wm.WindowContainer r4) {
        /*
            boolean r0 = com.samsung.android.rune.CoreRune.SAFE_DEBUG
            if (r0 == 0) goto Lb
            boolean r0 = updateUseForceLayoutInUdcCutoutIfNeeded(r4)
            if (r0 == 0) goto Lb
            return
        Lb:
            com.android.server.wm.WindowState r0 = r4.asWindowState()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L2e
            com.android.server.wm.ActivityRecord r3 = r0.mActivityRecord
            if (r3 == 0) goto L1b
            boolean r1 = r3.mUseLayoutInUdcCutout
        L19:
            r2 = r1
            goto L48
        L1b:
            android.view.WindowManager$LayoutParams r3 = r0.mAttrs
            int r3 = r3.samsungFlags
            r3 = r3 & 8192(0x2000, float:1.14794E-41)
            if (r3 != 0) goto L48
            android.content.pm.ApplicationInfo r0 = getApplicationInfo(r0)
            boolean r0 = supportsUdcCutout(r0)
            if (r0 == 0) goto L47
            goto L48
        L2e:
            com.android.server.wm.ActivityRecord r0 = r4.asActivityRecord()
            if (r0 == 0) goto L47
            android.content.pm.ActivityInfo r3 = r0.info
            boolean r3 = supportsUdcCutout(r3)
            if (r3 != 0) goto L19
            android.content.pm.ActivityInfo r0 = r0.info
            android.content.pm.ApplicationInfo r0 = r0.applicationInfo
            boolean r0 = supportsUdcCutout(r0)
            if (r0 == 0) goto L47
            goto L19
        L47:
            r1 = r2
        L48:
            r4.mUseLayoutInUdcCutout = r1
            r4.mUseConfigurationInUdcCutout = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.UdcCutoutPolicy.updateUseLayoutInUdcCutoutIfNeeded(com.android.server.wm.WindowContainer):void");
    }

    public static boolean supportsUdcCutout(PackageItemInfo packageItemInfo) {
        Bundle bundle;
        return (packageItemInfo == null || (bundle = packageItemInfo.metaData) == null || bundle.getBoolean("com.samsung.android.supports_udc_cutout", true)) ? false : true;
    }

    public static ApplicationInfo getApplicationInfo(WindowState windowState) {
        PackageManagerInternal packageManagerInternal = windowState.mWmService.mPmInternal;
        String str = windowState.mAttrs.packageName;
        int i = windowState.mOwnerUid;
        return packageManagerInternal.getApplicationInfo(str, 0L, i, UserHandle.getUserId(i));
    }

    public void onDisplayInfoUpdated(InsetsState insetsState, int i, int i2, int i3, RoundedCorners roundedCorners, PrivacyIndicatorBounds privacyIndicatorBounds, DisplayShape displayShape) {
        DisplayCutout calculateDisplayCutoutForRotation = calculateDisplayCutoutForRotation(i);
        DisplayFrames displayFrames = this.mUdcDisplayFrames;
        if (displayFrames == null) {
            DisplayInfo displayInfo = new DisplayInfo();
            displayInfo.rotation = i;
            displayInfo.logicalWidth = i2;
            displayInfo.logicalHeight = i3;
            this.mUdcDisplayFrames = new DisplayFrames(new InsetsState(insetsState, true), displayInfo, calculateDisplayCutoutForRotation, roundedCorners, privacyIndicatorBounds, displayShape);
            return;
        }
        displayFrames.mInsetsState.set(insetsState, true);
        this.mUdcDisplayFrames.update(i, i2, i3, calculateDisplayCutoutForRotation, roundedCorners, privacyIndicatorBounds, displayShape);
    }

    public Rect getIntersectedCutout(Rect rect) {
        if (this.mTmpBarContentFrame == null) {
            this.mTmpBarContentFrame = new Rect();
        }
        this.mTmpBarContentFrame.set(rect);
        this.mTmpBarContentFrame.intersectUnchecked(this.mUdcDisplayFrames.mDisplayCutoutSafe);
        return this.mTmpBarContentFrame;
    }

    public void adjustInsetsForUdc(WindowContainer windowContainer, InsetsState insetsState) {
        updateInsetsStateForDisplayCutout(getFixedRotationTransformDisplayFrames(windowContainer), insetsState);
    }

    public final void updateInsetsStateForDisplayCutout(DisplayFrames displayFrames, InsetsState insetsState) {
        DisplayCutout displayCutout = displayFrames.mInsetsState.getDisplayCutout();
        insetsState.setDisplayCutout(displayCutout);
        if (displayCutout.isEmpty()) {
            for (int sourceSize = insetsState.sourceSize() - 1; sourceSize >= 0; sourceSize--) {
                if (insetsState.sourceAt(sourceSize).getType() == WindowInsets.Type.displayCutout()) {
                    insetsState.removeSourceAt(sourceSize);
                }
            }
            return;
        }
        Rect rect = displayFrames.mUnrestricted;
        Rect rect2 = displayFrames.mDisplayCutoutSafe;
        for (int sourceSize2 = insetsState.sourceSize() - 1; sourceSize2 >= 0; sourceSize2--) {
            InsetsSource sourceAt = insetsState.sourceAt(sourceSize2);
            if (sourceAt.getType() == WindowInsets.Type.displayCutout()) {
                int i = rect2.left;
                if (i != 0) {
                    sourceAt.setFrame(rect.left, rect.top, i, rect.bottom);
                    return;
                }
                int i2 = rect2.top;
                if (i2 != 0) {
                    sourceAt.setFrame(rect.left, rect.top, rect.right, i2);
                    return;
                }
                int i3 = rect2.right;
                if (i3 != 0) {
                    sourceAt.setFrame(i3, rect.top, rect.right, rect.bottom);
                    return;
                }
                int i4 = rect2.bottom;
                if (i4 != 0) {
                    sourceAt.setFrame(rect.left, i4, rect.right, rect.bottom);
                    return;
                }
                return;
            }
        }
    }

    public final DisplayFrames getFixedRotationTransformDisplayFrames(WindowContainer windowContainer) {
        DisplayFrames displayFrames;
        if (windowContainer instanceof ActivityRecord) {
            displayFrames = windowContainer.asActivityRecord().getFixedRotationTransformDisplayFrames();
        } else if (windowContainer instanceof WindowState) {
            WindowState asWindowState = windowContainer.asWindowState();
            ActivityRecord activityRecord = asWindowState.mActivityRecord;
            DisplayFrames fixedRotationTransformDisplayFrames = activityRecord != null ? activityRecord.getFixedRotationTransformDisplayFrames() : null;
            displayFrames = fixedRotationTransformDisplayFrames == null ? asWindowState.mToken.getFixedRotationTransformDisplayFrames() : fixedRotationTransformDisplayFrames;
        } else {
            displayFrames = null;
        }
        return displayFrames != null ? displayFrames : this.mUdcDisplayFrames;
    }

    public void onRequestedOverrideConfigurationChanged(Configuration configuration) {
        int rotation = configuration.windowConfiguration.getRotation();
        if (rotation == -1) {
            return;
        }
        Configuration configuration2 = this.mUdcConfiguration;
        if (configuration2 == null) {
            this.mUdcConfiguration = new Configuration();
        } else {
            configuration2.unset();
        }
        this.mDisplayContent.computeScreenConfiguration(this.mUdcConfiguration, rotation, true);
    }

    static {
        sUseLayoutInUdcCutoutApplications = CoreRune.SAFE_DEBUG ? new ConcurrentHashMap() : null;
        sUseLayoutInUdcCutoutActivities = CoreRune.SAFE_DEBUG ? new ConcurrentHashMap() : null;
        sUseLayoutInUdcCutoutWindows = CoreRune.SAFE_DEBUG ? new ConcurrentHashMap() : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean executeShellCommandLocked(java.lang.String r8, java.lang.String[] r9, java.io.PrintWriter r10, com.android.server.wm.WindowManagerService r11) {
        /*
            java.lang.String r0 = "-udc_reset"
            boolean r0 = r0.equals(r8)
            r1 = 1
            if (r0 == 0) goto L21
            java.util.concurrent.ConcurrentHashMap r8 = com.android.server.wm.UdcCutoutPolicy.sUseLayoutInUdcCutoutApplications
            r8.clear()
            java.util.concurrent.ConcurrentHashMap r8 = com.android.server.wm.UdcCutoutPolicy.sUseLayoutInUdcCutoutActivities
            r8.clear()
            java.util.concurrent.ConcurrentHashMap r8 = com.android.server.wm.UdcCutoutPolicy.sUseLayoutInUdcCutoutWindows
            r8.clear()
            updateUseForceLayoutInUdcCutoutIfNeeded(r11)
            java.lang.String r8 = "Reset"
            r10.println(r8)
            return r1
        L21:
            java.lang.String r0 = "-udc"
            boolean r2 = r0.equals(r8)
            java.lang.String r3 = "-udc_w"
            java.lang.String r4 = "-udc_a"
            r5 = 0
            if (r2 != 0) goto L3b
            boolean r2 = r4.equals(r8)
            if (r2 != 0) goto L3b
            boolean r2 = r3.equals(r8)
            if (r2 != 0) goto L3b
            return r5
        L3b:
            int r2 = r9.length
            r6 = 2
            if (r2 == r1) goto L42
            int r2 = r9.length
            if (r2 != r6) goto Lca
        L42:
            r2 = r9[r5]
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto Lca
            int r2 = r9.length
            if (r2 != r6) goto L58
            r2 = r9[r1]     // Catch: java.lang.Exception -> L58
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch: java.lang.Exception -> L58
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Exception -> L58
            goto L59
        L58:
            r2 = r1
        L59:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r8)
            java.lang.String r7 = ", Enabled="
            r6.append(r7)
            r6.append(r2)
            java.lang.String r6 = r6.toString()
            r10.println(r6)
            r9 = r9[r5]
            java.lang.String r6 = ":"
            java.lang.String[] r9 = r9.split(r6)
            boolean r0 = r0.equals(r8)
            if (r0 == 0) goto L92
            int r8 = r9.length
        L7f:
            if (r5 >= r8) goto Lc6
            r0 = r9[r5]
            java.util.concurrent.ConcurrentHashMap r3 = com.android.server.wm.UdcCutoutPolicy.sUseLayoutInUdcCutoutApplications
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r2)
            r3.put(r0, r4)
            r10.println(r0)
            int r5 = r5 + 1
            goto L7f
        L92:
            boolean r0 = r4.equals(r8)
            if (r0 == 0) goto Lac
            int r8 = r9.length
        L99:
            if (r5 >= r8) goto Lc6
            r0 = r9[r5]
            java.util.concurrent.ConcurrentHashMap r3 = com.android.server.wm.UdcCutoutPolicy.sUseLayoutInUdcCutoutActivities
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r2)
            r3.put(r0, r4)
            r10.println(r0)
            int r5 = r5 + 1
            goto L99
        Lac:
            boolean r8 = r3.equals(r8)
            if (r8 == 0) goto Lc6
            int r8 = r9.length
        Lb3:
            if (r5 >= r8) goto Lc6
            r0 = r9[r5]
            java.util.concurrent.ConcurrentHashMap r3 = com.android.server.wm.UdcCutoutPolicy.sUseLayoutInUdcCutoutWindows
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r2)
            r3.put(r0, r4)
            r10.println(r0)
            int r5 = r5 + 1
            goto Lb3
        Lc6:
            updateUseForceLayoutInUdcCutoutIfNeeded(r11)
            return r1
        Lca:
            java.lang.String r8 = "Error: -udc requires [packageName | packageName:packageName:...] [true/false]"
            r10.println(r8)
            java.lang.String r8 = "Error: -udc_a requires [ComponentName | ComponentName:ComponentName:...] [true/false]"
            r10.println(r8)
            java.lang.String r8 = "Error: -udc_w requires [WindowTitle | WindowTitle:WindowTitle:...] [true/false]"
            r10.println(r8)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.UdcCutoutPolicy.executeShellCommandLocked(java.lang.String, java.lang.String[], java.io.PrintWriter, com.android.server.wm.WindowManagerService):boolean");
    }

    public static void updateUseForceLayoutInUdcCutoutIfNeeded(WindowManagerService windowManagerService) {
        DisplayContent defaultDisplayContentLocked = windowManagerService.getDefaultDisplayContentLocked();
        if (defaultDisplayContentLocked == null) {
            return;
        }
        defaultDisplayContentLocked.forAllActivities(new Consumer() { // from class: com.android.server.wm.UdcCutoutPolicy$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                UdcCutoutPolicy.updateUseForceLayoutInUdcCutoutIfNeeded((ActivityRecord) obj);
            }
        });
        defaultDisplayContentLocked.forAllWindows(new Consumer() { // from class: com.android.server.wm.UdcCutoutPolicy$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                UdcCutoutPolicy.updateUseForceLayoutInUdcCutoutIfNeeded((WindowState) obj);
            }
        }, true);
    }

    public static boolean updateUseForceLayoutInUdcCutoutIfNeeded(WindowContainer windowContainer) {
        WindowState asWindowState = windowContainer.asWindowState();
        if (asWindowState != null) {
            if (asWindowState.mActivityRecord == null) {
                String str = asWindowState.mAttrs.packageName;
                if (sUseLayoutInUdcCutoutApplications.containsKey(str)) {
                    asWindowState.mUseLayoutInUdcCutout = ((Boolean) sUseLayoutInUdcCutoutApplications.get(str)).booleanValue();
                    asWindowState.mUseConfigurationInUdcCutout = false;
                    return true;
                }
                String charSequence = asWindowState.mAttrs.getTitle().toString();
                if (!TextUtils.isEmpty(charSequence) && sUseLayoutInUdcCutoutWindows.containsKey(charSequence)) {
                    asWindowState.mUseLayoutInUdcCutout = ((Boolean) sUseLayoutInUdcCutoutWindows.get(charSequence)).booleanValue();
                    asWindowState.mUseConfigurationInUdcCutout = false;
                    return true;
                }
            }
        } else {
            ActivityRecord asActivityRecord = windowContainer.asActivityRecord();
            if (asActivityRecord != null) {
                String str2 = asActivityRecord.packageName;
                if (sUseLayoutInUdcCutoutApplications.containsKey(str2)) {
                    boolean booleanValue = ((Boolean) sUseLayoutInUdcCutoutApplications.get(str2)).booleanValue();
                    asActivityRecord.mUseLayoutInUdcCutout = booleanValue;
                    asActivityRecord.mUseConfigurationInUdcCutout = booleanValue;
                    return true;
                }
                String flattenToShortString = asActivityRecord.intent.getComponent().flattenToShortString();
                if (sUseLayoutInUdcCutoutActivities.containsKey(flattenToShortString)) {
                    boolean booleanValue2 = ((Boolean) sUseLayoutInUdcCutoutActivities.get(flattenToShortString)).booleanValue();
                    asActivityRecord.mUseLayoutInUdcCutout = booleanValue2;
                    asActivityRecord.mUseConfigurationInUdcCutout = booleanValue2;
                    return true;
                }
            }
        }
        return false;
    }
}
