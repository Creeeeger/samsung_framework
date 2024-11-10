package com.android.server.display;

import android.R;
import android.app.ActivityThread;
import android.content.Context;
import android.content.res.Resources;
import android.hardware.display.DisplayManagerInternal;
import android.hardware.sidekick.SidekickInternal;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.Looper;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.DisplayUtils;
import android.util.EventLog;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.Display;
import android.view.DisplayAddress;
import android.view.DisplayCutout;
import android.view.DisplayEventReceiver;
import android.view.DisplayShape;
import android.view.RoundedCorners;
import android.view.SurfaceControl;
import com.android.internal.display.BrightnessSynchronizer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.display.DisplayAdapter;
import com.android.server.display.DisplayManagerService;
import com.android.server.display.LocalDisplayAdapter;
import com.android.server.display.mode.DisplayModeDirector;
import com.android.server.lights.LightsManager;
import com.android.server.lights.LogicalLight;
import com.android.server.power.PowerManagerUtil;
import com.android.server.power.Slog;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class LocalDisplayAdapter extends DisplayAdapter {
    public final LongSparseArray mDevices;
    public final Injector mInjector;
    public final boolean mIsBootDisplayModeSupported;
    public Context mOverlayContext;
    public final SurfaceControlProxy mSurfaceControlProxy;

    /* loaded from: classes2.dex */
    public interface DisplayEventListener {
        void onFrameRateOverridesChanged(long j, long j2, DisplayEventReceiver.FrameRateOverride[] frameRateOverrideArr);

        void onHotplug(long j, long j2, boolean z);

        void onModeChanged(long j, long j2, int i, long j3);
    }

    public LocalDisplayAdapter(DisplayManagerService.SyncRoot syncRoot, Context context, Handler handler, DisplayAdapter.Listener listener) {
        this(syncRoot, context, handler, listener, new Injector());
    }

    public LocalDisplayAdapter(DisplayManagerService.SyncRoot syncRoot, Context context, Handler handler, DisplayAdapter.Listener listener, Injector injector) {
        super(syncRoot, context, handler, listener, "LocalDisplayAdapter");
        this.mDevices = new LongSparseArray();
        this.mInjector = injector;
        SurfaceControlProxy surfaceControlProxy = injector.getSurfaceControlProxy();
        this.mSurfaceControlProxy = surfaceControlProxy;
        this.mIsBootDisplayModeSupported = surfaceControlProxy.getBootDisplayModeSupport();
    }

    @Override // com.android.server.display.DisplayAdapter
    public void registerLocked() {
        super.registerLocked();
        this.mInjector.setDisplayEventListenerLocked(getHandler().getLooper(), new LocalDisplayEventListener());
        for (long j : this.mSurfaceControlProxy.getPhysicalDisplayIds()) {
            tryConnectDisplayLocked(j);
        }
    }

    public final void tryConnectDisplayLocked(long j) {
        IBinder physicalDisplayToken = this.mSurfaceControlProxy.getPhysicalDisplayToken(j);
        if (physicalDisplayToken != null) {
            SurfaceControl.StaticDisplayInfo staticDisplayInfo = this.mSurfaceControlProxy.getStaticDisplayInfo(j);
            if (staticDisplayInfo == null) {
                Slog.w("LocalDisplayAdapter", "No valid static info found for display device " + j);
                return;
            }
            SurfaceControl.DynamicDisplayInfo dynamicDisplayInfo = this.mSurfaceControlProxy.getDynamicDisplayInfo(j);
            if (dynamicDisplayInfo == null) {
                Slog.w("LocalDisplayAdapter", "No valid dynamic info found for display device " + j);
                return;
            }
            if (dynamicDisplayInfo.supportedDisplayModes == null) {
                Slog.w("LocalDisplayAdapter", "No valid modes found for display device " + j);
                return;
            }
            if (dynamicDisplayInfo.activeDisplayModeId < 0) {
                Slog.w("LocalDisplayAdapter", "No valid active mode found for display device " + j);
                return;
            }
            if (dynamicDisplayInfo.activeColorMode < 0) {
                Slog.w("LocalDisplayAdapter", "No valid active color mode for display device " + j);
                dynamicDisplayInfo.activeColorMode = -1;
            }
            SurfaceControl.DesiredDisplayModeSpecs desiredDisplayModeSpecs = this.mSurfaceControlProxy.getDesiredDisplayModeSpecs(physicalDisplayToken);
            LocalDisplayDevice localDisplayDevice = (LocalDisplayDevice) this.mDevices.get(j);
            if (localDisplayDevice == null) {
                boolean z = this.mDevices.size() == 0;
                if (CoreRune.FW_VRR_RESOLUTION_POLICY && staticDisplayInfo.isInternal) {
                    dynamicDisplayInfo.activeDisplayModeId = getOptimizedDisplayMode(dynamicDisplayInfo.supportedDisplayModes);
                }
                LocalDisplayDevice localDisplayDevice2 = new LocalDisplayDevice(physicalDisplayToken, j, staticDisplayInfo, dynamicDisplayInfo, desiredDisplayModeSpecs, z);
                this.mDevices.put(j, localDisplayDevice2);
                sendDisplayDeviceEventLocked(localDisplayDevice2, 1);
                return;
            }
            if (localDisplayDevice.updateDisplayPropertiesLocked(staticDisplayInfo, dynamicDisplayInfo, desiredDisplayModeSpecs)) {
                sendDisplayDeviceEventLocked(localDisplayDevice, 2);
            }
        }
    }

    public final void tryDisconnectDisplayLocked(long j) {
        LocalDisplayDevice localDisplayDevice = (LocalDisplayDevice) this.mDevices.get(j);
        if (localDisplayDevice != null) {
            this.mDevices.remove(j);
            sendDisplayDeviceEventLocked(localDisplayDevice, 3);
        }
    }

    public static int getPowerModeForState(int i) {
        if (i == 1) {
            return 0;
        }
        if (i != 6) {
            return i != 3 ? (i == 4 && !PowerManagerUtil.SEC_FEATURE_AOD_LOOK_CHARGING_UI) ? 3 : 2 : PowerManagerUtil.SEC_FEATURE_AOD_LOOK_CHARGING_UI ? 2 : 1;
        }
        return 4;
    }

    public final int getOptimizedDisplayMode(SurfaceControl.DisplayMode[] displayModeArr) {
        int i = 0;
        int i2 = 0;
        float f = 0.0f;
        int i3 = 0;
        for (SurfaceControl.DisplayMode displayMode : displayModeArr) {
            int i4 = displayMode.width;
            int i5 = displayMode.height;
            int i6 = i * i2;
            if (i4 * i5 >= i6) {
                float f2 = displayMode.refreshRate;
                if (f2 >= 59.99f && (i4 * i5 > i6 || f2 < f)) {
                    i3 = Arrays.asList(displayModeArr).indexOf(displayMode);
                    i = i4;
                    i2 = i5;
                    f = f2;
                }
            }
        }
        return i3;
    }

    /* loaded from: classes2.dex */
    public final class LocalDisplayDevice extends DisplayDevice {
        public int mActiveColorMode;
        public int mActiveModeId;
        public float mActiveRenderFrameRate;
        public SurfaceControl.DisplayMode mActiveSfDisplayMode;
        public int mActiveSfDisplayModeAtStartId;
        public boolean mAllmRequested;
        public boolean mAllmSupported;
        public final BacklightAdapter mBacklightAdapter;
        public float mBrightnessState;
        public int mCommittedState;
        public float mCurrentHdrSdrRatio;
        public int mDefaultModeGroup;
        public int mDefaultModeId;
        public final DisplayModeDirector.DesiredDisplayModeSpecs mDisplayModeSpecs;
        public boolean mDisplayModeSpecsInvalid;
        public int mDisplayStateCount;
        public DisplayEventReceiver.FrameRateOverride[] mFrameRateOverrides;
        public boolean mGameContentTypeRequested;
        public boolean mGameContentTypeSupported;
        public boolean mHavePendingChanges;
        public Display.HdrCapabilities mHdrCapabilities;
        public DisplayDeviceInfo mInfo;
        public final boolean mIsFirstDisplay;
        public long mLastBrightnessRequestedTime;
        public int mLastResolution;
        public final long mPhysicalDisplayId;
        public int mRequestedState;
        public float mSdrBrightnessState;
        public SurfaceControl.DisplayMode[] mSfDisplayModes;
        public boolean mSidekickActive;
        public final SidekickInternal mSidekickInternal;
        public int mState;
        public final ArrayList mStateChangeCallbacks;
        public int mStateLimit;
        public SurfaceControl.StaticDisplayInfo mStaticDisplayInfo;
        public final ArrayList mSupportedColorModes;
        public final SparseArray mSupportedModes;
        public int mSystemPreferredModeId;
        public Display.Mode mUserPreferredMode;
        public int mUserPreferredModeId;

        @Override // com.android.server.display.DisplayDevice
        public boolean hasStableUniqueId() {
            return true;
        }

        public LocalDisplayDevice(IBinder iBinder, long j, SurfaceControl.StaticDisplayInfo staticDisplayInfo, SurfaceControl.DynamicDisplayInfo dynamicDisplayInfo, SurfaceControl.DesiredDisplayModeSpecs desiredDisplayModeSpecs, boolean z) {
            super(LocalDisplayAdapter.this, iBinder, "local:" + j, LocalDisplayAdapter.this.getContext());
            this.mSupportedModes = new SparseArray();
            this.mSupportedColorModes = new ArrayList();
            this.mDisplayModeSpecs = new DisplayModeDirector.DesiredDisplayModeSpecs();
            this.mState = 0;
            this.mCommittedState = 0;
            this.mBrightnessState = Float.NaN;
            this.mSdrBrightnessState = Float.NaN;
            this.mCurrentHdrSdrRatio = Float.NaN;
            this.mDefaultModeId = -1;
            this.mSystemPreferredModeId = -1;
            this.mUserPreferredModeId = -1;
            this.mActiveSfDisplayModeAtStartId = -1;
            this.mActiveModeId = -1;
            this.mLastResolution = 0;
            this.mFrameRateOverrides = new DisplayEventReceiver.FrameRateOverride[0];
            this.mStateLimit = 0;
            this.mRequestedState = 0;
            this.mDisplayStateCount = 0;
            this.mLastBrightnessRequestedTime = -1L;
            this.mStateChangeCallbacks = new ArrayList();
            this.mPhysicalDisplayId = j;
            this.mIsFirstDisplay = z;
            updateDisplayPropertiesLocked(staticDisplayInfo, dynamicDisplayInfo, desiredDisplayModeSpecs);
            this.mSidekickInternal = (SidekickInternal) LocalServices.getService(SidekickInternal.class);
            this.mBacklightAdapter = new BacklightAdapter(iBinder, z, LocalDisplayAdapter.this.mSurfaceControlProxy, j);
            this.mActiveSfDisplayModeAtStartId = dynamicDisplayInfo.activeDisplayModeId;
        }

        @Override // com.android.server.display.DisplayDevice
        public Display.Mode getActiveDisplayModeAtStartLocked() {
            return findMode(findMatchingModeIdLocked(this.mActiveSfDisplayModeAtStartId));
        }

        public boolean updateDisplayPropertiesLocked(SurfaceControl.StaticDisplayInfo staticDisplayInfo, SurfaceControl.DynamicDisplayInfo dynamicDisplayInfo, SurfaceControl.DesiredDisplayModeSpecs desiredDisplayModeSpecs) {
            boolean updateStaticInfo = updateStaticInfo(staticDisplayInfo) | updateDisplayModesLocked(dynamicDisplayInfo.supportedDisplayModes, dynamicDisplayInfo.preferredBootDisplayMode, dynamicDisplayInfo.activeDisplayModeId, dynamicDisplayInfo.renderFrameRate, desiredDisplayModeSpecs) | updateColorModesLocked(dynamicDisplayInfo.supportedColorModes, dynamicDisplayInfo.activeColorMode) | updateHdrCapabilitiesLocked(dynamicDisplayInfo.hdrCapabilities) | updateAllmSupport(dynamicDisplayInfo.autoLowLatencyModeSupported) | updateGameContentTypeSupport(dynamicDisplayInfo.gameContentTypeSupported);
            if (updateStaticInfo) {
                this.mHavePendingChanges = true;
            }
            return updateStaticInfo;
        }

        /* JADX WARN: Code restructure failed: missing block: B:94:0x0191, code lost:
        
            if (r16.mDisplayModeSpecs.appRequest.equals(r21.appRequestRanges) != false) goto L88;
         */
        /* JADX WARN: Removed duplicated region for block: B:101:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x01b6  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x016f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean updateDisplayModesLocked(android.view.SurfaceControl.DisplayMode[] r17, int r18, int r19, float r20, android.view.SurfaceControl.DesiredDisplayModeSpecs r21) {
            /*
                Method dump skipped, instructions count: 623
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.LocalDisplayAdapter.LocalDisplayDevice.updateDisplayModesLocked(android.view.SurfaceControl$DisplayMode[], int, int, float, android.view.SurfaceControl$DesiredDisplayModeSpecs):boolean");
        }

        @Override // com.android.server.display.DisplayDevice
        public DisplayDeviceConfig getDisplayDeviceConfig() {
            if (this.mDisplayDeviceConfig == null) {
                loadDisplayDeviceConfig();
            }
            return this.mDisplayDeviceConfig;
        }

        public final int getPreferredModeId() {
            int i = this.mUserPreferredModeId;
            return i != -1 ? i : this.mDefaultModeId;
        }

        public final int getLogicalDensity() {
            DensityMapping densityMapping = getDisplayDeviceConfig().getDensityMapping();
            if (densityMapping == null) {
                return (int) ((this.mStaticDisplayInfo.density * 160.0f) + 0.5d);
            }
            DisplayDeviceInfo displayDeviceInfo = this.mInfo;
            return densityMapping.getDensityForResolution(displayDeviceInfo.width, displayDeviceInfo.height);
        }

        public final void loadDisplayDeviceConfig() {
            DisplayDeviceConfig create = DisplayDeviceConfig.create(LocalDisplayAdapter.this.getOverlayContext(), this.mIsFirstDisplay, this.mStaticDisplayInfo.isInternal, this.mBacklightAdapter.mUseSurfaceControlBrightness);
            this.mDisplayDeviceConfig = create;
            this.mBacklightAdapter.setForceSurfaceControl(create.hasQuirk("canSetBrightnessViaHwc"));
        }

        public final boolean updateStaticInfo(SurfaceControl.StaticDisplayInfo staticDisplayInfo) {
            if (Objects.equals(this.mStaticDisplayInfo, staticDisplayInfo)) {
                return false;
            }
            this.mStaticDisplayInfo = staticDisplayInfo;
            return true;
        }

        public final boolean updateColorModesLocked(int[] iArr, int i) {
            if (iArr == null) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (int i2 : iArr) {
                if (!this.mSupportedColorModes.contains(Integer.valueOf(i2))) {
                    z = true;
                }
                arrayList.add(Integer.valueOf(i2));
            }
            if (!(arrayList.size() != this.mSupportedColorModes.size() || z)) {
                return false;
            }
            this.mSupportedColorModes.clear();
            this.mSupportedColorModes.addAll(arrayList);
            Collections.sort(this.mSupportedColorModes);
            if (!this.mSupportedColorModes.contains(Integer.valueOf(this.mActiveColorMode))) {
                if (this.mActiveColorMode != 0) {
                    Slog.w("LocalDisplayAdapter", "Active color mode no longer available, reverting to default mode.");
                    this.mActiveColorMode = 0;
                } else if (!this.mSupportedColorModes.isEmpty()) {
                    Slog.e("LocalDisplayAdapter", "Default and active color mode is no longer available! Reverting to first available mode.");
                    this.mActiveColorMode = ((Integer) this.mSupportedColorModes.get(0)).intValue();
                } else {
                    Slog.e("LocalDisplayAdapter", "No color modes available!");
                }
            }
            return true;
        }

        public final boolean updateHdrCapabilitiesLocked(Display.HdrCapabilities hdrCapabilities) {
            if (Objects.equals(this.mHdrCapabilities, hdrCapabilities)) {
                return false;
            }
            this.mHdrCapabilities = hdrCapabilities;
            return true;
        }

        public final boolean updateAllmSupport(boolean z) {
            if (this.mAllmSupported == z) {
                return false;
            }
            this.mAllmSupported = z;
            return true;
        }

        public final boolean updateGameContentTypeSupport(boolean z) {
            if (this.mGameContentTypeSupported == z) {
                return false;
            }
            this.mGameContentTypeSupported = z;
            return true;
        }

        public final SurfaceControl.DisplayMode getModeById(SurfaceControl.DisplayMode[] displayModeArr, int i) {
            for (SurfaceControl.DisplayMode displayMode : displayModeArr) {
                if (displayMode.id == i) {
                    return displayMode;
                }
            }
            Slog.e("LocalDisplayAdapter", "Can't find display mode with id " + i);
            return null;
        }

        public final DisplayModeRecord findDisplayModeRecord(SurfaceControl.DisplayMode displayMode, List list) {
            for (int i = 0; i < this.mSupportedModes.size(); i++) {
                DisplayModeRecord displayModeRecord = (DisplayModeRecord) this.mSupportedModes.valueAt(i);
                if (displayModeRecord.hasMatchingMode(displayMode) && refreshRatesEquals(list, displayModeRecord.mMode.getAlternativeRefreshRates()) && LocalDisplayAdapter.this.hdrTypesEqual(displayMode.supportedHdrTypes, displayModeRecord.mMode.getSupportedHdrTypes())) {
                    return displayModeRecord;
                }
            }
            return null;
        }

        public final boolean refreshRatesEquals(List list, float[] fArr) {
            if (list.size() != fArr.length) {
                return false;
            }
            for (int i = 0; i < list.size(); i++) {
                if (Float.floatToIntBits(((Float) list.get(i)).floatValue()) != Float.floatToIntBits(fArr[i])) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.android.server.display.DisplayDevice
        public void applyPendingDisplayDeviceInfoChangesLocked() {
            if (this.mHavePendingChanges) {
                this.mInfo = null;
                this.mHavePendingChanges = false;
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public DisplayDeviceInfo getDisplayDeviceInfoLocked() {
            SurfaceControl.DisplayMode displayMode;
            if (this.mInfo == null) {
                if (CoreRune.FW_VRR_RESOLUTION_POLICY && this.mStaticDisplayInfo.isInternal) {
                    displayMode = getModeById(this.mSfDisplayModes, findSfDisplayModeIdLocked(this.mDefaultModeId, this.mDefaultModeGroup));
                } else {
                    displayMode = this.mActiveSfDisplayMode;
                }
                DisplayDeviceInfo displayDeviceInfo = new DisplayDeviceInfo();
                this.mInfo = displayDeviceInfo;
                displayDeviceInfo.width = displayMode.width;
                displayDeviceInfo.height = displayMode.height;
                displayDeviceInfo.modeId = this.mActiveModeId;
                displayDeviceInfo.renderFrameRate = this.mActiveRenderFrameRate;
                displayDeviceInfo.defaultModeId = getPreferredModeId();
                this.mInfo.supportedModes = getDisplayModes(this.mSupportedModes);
                DisplayDeviceInfo displayDeviceInfo2 = this.mInfo;
                displayDeviceInfo2.colorMode = this.mActiveColorMode;
                displayDeviceInfo2.allmSupported = this.mAllmSupported;
                displayDeviceInfo2.gameContentTypeSupported = this.mGameContentTypeSupported;
                displayDeviceInfo2.supportedColorModes = new int[this.mSupportedColorModes.size()];
                for (int i = 0; i < this.mSupportedColorModes.size(); i++) {
                    this.mInfo.supportedColorModes[i] = ((Integer) this.mSupportedColorModes.get(i)).intValue();
                }
                DisplayDeviceInfo displayDeviceInfo3 = this.mInfo;
                displayDeviceInfo3.hdrCapabilities = this.mHdrCapabilities;
                displayDeviceInfo3.appVsyncOffsetNanos = displayMode.appVsyncOffsetNanos;
                displayDeviceInfo3.presentationDeadlineNanos = displayMode.presentationDeadlineNanos;
                displayDeviceInfo3.state = this.mState;
                displayDeviceInfo3.committedState = this.mCommittedState;
                displayDeviceInfo3.uniqueId = getUniqueId();
                DisplayAddress.Physical fromPhysicalDisplayId = DisplayAddress.fromPhysicalDisplayId(this.mPhysicalDisplayId);
                DisplayDeviceInfo displayDeviceInfo4 = this.mInfo;
                displayDeviceInfo4.address = fromPhysicalDisplayId;
                displayDeviceInfo4.densityDpi = getLogicalDensity();
                DisplayDeviceInfo displayDeviceInfo5 = this.mInfo;
                displayDeviceInfo5.xDpi = displayMode.xDpi;
                displayDeviceInfo5.yDpi = displayMode.yDpi;
                SurfaceControl.StaticDisplayInfo staticDisplayInfo = this.mStaticDisplayInfo;
                displayDeviceInfo5.deviceProductInfo = staticDisplayInfo.deviceProductInfo;
                if (staticDisplayInfo.secure) {
                    displayDeviceInfo5.flags = 12;
                }
                Resources resources = LocalDisplayAdapter.this.getOverlayContext().getResources();
                boolean z = this.mIsFirstDisplay;
                if (z) {
                    this.mInfo.flags |= 1;
                }
                if (z) {
                    if (resources.getBoolean(17891764) || (Build.IS_EMULATOR && SystemProperties.getBoolean("ro.emulator.circular", false))) {
                        this.mInfo.flags |= 256;
                    }
                } else if (this.mStaticDisplayInfo.isInternal) {
                    this.mInfo.flags |= 16777408;
                } else {
                    if (!resources.getBoolean(17891755)) {
                        this.mInfo.flags |= 128;
                    }
                    if (isDisplayPrivate(fromPhysicalDisplayId)) {
                        this.mInfo.flags |= 16;
                    }
                }
                if (DisplayCutout.getMaskBuiltInDisplayCutout(resources, this.mInfo.uniqueId)) {
                    this.mInfo.flags |= IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES;
                }
                Display.Mode maximumResolutionDisplayMode = DisplayUtils.getMaximumResolutionDisplayMode(this.mInfo.supportedModes);
                int physicalWidth = maximumResolutionDisplayMode == null ? this.mInfo.width : maximumResolutionDisplayMode.getPhysicalWidth();
                int physicalHeight = maximumResolutionDisplayMode == null ? this.mInfo.height : maximumResolutionDisplayMode.getPhysicalHeight();
                if (this.mIsFirstDisplay) {
                    DisplayDeviceInfo displayDeviceInfo6 = this.mInfo;
                    displayDeviceInfo6.displayCutout = DisplayCutout.fromResourcesRectApproximation(resources, displayDeviceInfo6.uniqueId, physicalWidth, physicalHeight, displayDeviceInfo6.width, displayDeviceInfo6.height, displayDeviceInfo6.densityDpi, false);
                }
                if (this.mIsFirstDisplay) {
                    DisplayDeviceInfo displayDeviceInfo7 = this.mInfo;
                    displayDeviceInfo7.roundedCorners = RoundedCorners.fromResources(resources, displayDeviceInfo7.uniqueId, physicalWidth, physicalHeight, displayDeviceInfo7.width, displayDeviceInfo7.height);
                }
                DisplayDeviceInfo displayDeviceInfo8 = this.mInfo;
                displayDeviceInfo8.installOrientation = this.mStaticDisplayInfo.installOrientation;
                displayDeviceInfo8.displayShape = DisplayShape.fromResources(resources, displayDeviceInfo8.uniqueId, physicalWidth, physicalHeight, displayDeviceInfo8.width, displayDeviceInfo8.height);
                this.mInfo.name = getDisplayDeviceConfig().getName();
                if (this.mStaticDisplayInfo.isInternal) {
                    DisplayDeviceInfo displayDeviceInfo9 = this.mInfo;
                    displayDeviceInfo9.type = 1;
                    displayDeviceInfo9.touch = 1;
                    displayDeviceInfo9.flags = 2 | displayDeviceInfo9.flags;
                    if (displayDeviceInfo9.name == null) {
                        displayDeviceInfo9.name = resources.getString(R.string.lockscreen_sim_locked_message);
                    }
                } else {
                    DisplayDeviceInfo displayDeviceInfo10 = this.mInfo;
                    displayDeviceInfo10.type = 2;
                    displayDeviceInfo10.touch = 2;
                    displayDeviceInfo10.flags |= 64;
                    if (displayDeviceInfo10.name == null) {
                        displayDeviceInfo10.name = LocalDisplayAdapter.this.getContext().getResources().getString(R.string.lockscreen_sim_puk_locked_instructions);
                    }
                }
                DisplayDeviceInfo displayDeviceInfo11 = this.mInfo;
                displayDeviceInfo11.frameRateOverrides = this.mFrameRateOverrides;
                displayDeviceInfo11.flags |= IInstalld.FLAG_FORCE;
                displayDeviceInfo11.brightnessMinimum = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
                displayDeviceInfo11.brightnessMaximum = 1.0f;
                displayDeviceInfo11.brightnessDefault = getDisplayDeviceConfig().getBrightnessDefault();
                this.mInfo.hdrSdrRatio = this.mCurrentHdrSdrRatio;
            }
            return this.mInfo;
        }

        @Override // com.android.server.display.DisplayDevice
        public Runnable requestDisplayStateLocked(int i, float f, float f2) {
            return requestDisplayStateLocked(i, f, f2, 0, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
        @Override // com.android.server.display.DisplayDevice
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Runnable requestDisplayStateLocked(final int r19, final float r20, final float r21, final int r22, final java.util.ArrayList r23) {
            /*
                r18 = this;
                r1 = r18
                r13 = r19
                r4 = r22
                int r0 = r1.mState
                r2 = 0
                r3 = 1
                if (r0 == r13) goto Le
                r5 = r3
                goto Lf
            Le:
                r5 = r2
            Lf:
                float r0 = r1.mBrightnessState
                int r0 = (r0 > r20 ? 1 : (r0 == r20 ? 0 : -1))
                if (r0 != 0) goto L1e
                float r0 = r1.mSdrBrightnessState
                int r0 = (r0 > r21 ? 1 : (r0 == r21 ? 0 : -1))
                if (r0 == 0) goto L1c
                goto L1e
            L1c:
                r9 = r2
                goto L1f
            L1e:
                r9 = r3
            L1f:
                long r14 = android.os.SystemClock.uptimeMillis()
                int r0 = r1.mStateLimit
                if (r0 == r4) goto L29
                r6 = r3
                goto L2a
            L29:
                r6 = r2
            L2a:
                if (r5 != 0) goto L33
                if (r9 != 0) goto L33
                if (r6 == 0) goto L31
                goto L33
            L31:
                r0 = 0
                return r0
            L33:
                long r7 = r1.mPhysicalDisplayId
                android.os.IBinder r16 = r18.getDisplayTokenLocked()
                int r12 = r1.mState
                com.android.server.display.DisplayDeviceInfo r0 = r1.mInfo
                int r2 = r0.type
                if (r2 != r3) goto L4c
                int r0 = r0.flags
                r2 = 16777216(0x1000000, float:2.3509887E-38)
                r0 = r0 & r2
                if (r0 == 0) goto L4a
                r0 = 2
                goto L4d
            L4a:
                r10 = r3
                goto L4e
            L4c:
                r0 = -1
            L4d:
                r10 = r0
            L4e:
                if (r5 == 0) goto L55
                r1.mState = r13
                r18.updateDeviceInfoLocked()
            L55:
                if (r6 == 0) goto L59
                r1.mStateLimit = r4
            L59:
                com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$1 r17 = new com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$1
                r0 = r17
                r1 = r18
                r2 = r5
                r3 = r6
                r4 = r22
                r5 = r23
                r6 = r10
                r10 = r20
                r11 = r21
                r13 = r19
                r0.<init>()
                return r17
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.LocalDisplayAdapter.LocalDisplayDevice.requestDisplayStateLocked(int, float, float, int, java.util.ArrayList):java.lang.Runnable");
        }

        @Override // com.android.server.display.DisplayDevice
        public void setUserPreferredDisplayModeLocked(Display.Mode mode) {
            Display.Mode findMode;
            int i;
            int preferredModeId = getPreferredModeId();
            this.mUserPreferredMode = mode;
            if (mode == null && (i = this.mSystemPreferredModeId) != -1) {
                this.mDefaultModeId = i;
            }
            if (mode != null && ((mode.isRefreshRateSet() || mode.isResolutionSet()) && (findMode = findMode(mode.getPhysicalWidth(), mode.getPhysicalHeight(), mode.getRefreshRate())) != null)) {
                this.mUserPreferredMode = findMode;
            }
            this.mUserPreferredModeId = findUserPreferredModeIdLocked(this.mUserPreferredMode);
            if (preferredModeId == getPreferredModeId()) {
                return;
            }
            updateDeviceInfoLocked();
            if (LocalDisplayAdapter.this.mIsBootDisplayModeSupported) {
                if (this.mUserPreferredModeId == -1) {
                    LocalDisplayAdapter.this.mSurfaceControlProxy.clearBootDisplayMode(getDisplayTokenLocked());
                } else {
                    LocalDisplayAdapter.this.mSurfaceControlProxy.setBootDisplayMode(getDisplayTokenLocked(), findSfDisplayModeIdLocked(this.mUserPreferredMode.getModeId(), this.mDefaultModeGroup));
                }
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public Display.Mode getUserPreferredDisplayModeLocked() {
            return this.mUserPreferredMode;
        }

        @Override // com.android.server.display.DisplayDevice
        public Display.Mode getSystemPreferredDisplayModeLocked() {
            return findMode(this.mSystemPreferredModeId);
        }

        @Override // com.android.server.display.DisplayDevice
        public void setRequestedColorModeLocked(int i) {
            requestColorModeLocked(i);
        }

        @Override // com.android.server.display.DisplayDevice
        public void setDesiredDisplayModeSpecsLocked(DisplayModeDirector.DesiredDisplayModeSpecs desiredDisplayModeSpecs) {
            int i = desiredDisplayModeSpecs.baseModeId;
            if (i == 0) {
                return;
            }
            int findSfDisplayModeIdLocked = findSfDisplayModeIdLocked(i, this.mDefaultModeGroup);
            if (findSfDisplayModeIdLocked < 0) {
                Slog.w("LocalDisplayAdapter", "Ignoring request for invalid base mode id " + desiredDisplayModeSpecs.baseModeId);
                if (getDisplayDeviceInfoLocked().type != 1) {
                    updateDeviceInfoLocked();
                    return;
                }
                return;
            }
            if (this.mDisplayModeSpecsInvalid || !desiredDisplayModeSpecs.equals(this.mDisplayModeSpecs)) {
                this.mDisplayModeSpecsInvalid = false;
                this.mDisplayModeSpecs.copyFrom(desiredDisplayModeSpecs);
                Handler handler = LocalDisplayAdapter.this.getHandler();
                TriConsumer triConsumer = new TriConsumer() { // from class: com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((LocalDisplayAdapter.LocalDisplayDevice) obj).setDesiredDisplayModeSpecsAsync((IBinder) obj2, (SurfaceControl.DesiredDisplayModeSpecs) obj3);
                    }
                };
                IBinder displayTokenLocked = getDisplayTokenLocked();
                DisplayModeDirector.DesiredDisplayModeSpecs desiredDisplayModeSpecs2 = this.mDisplayModeSpecs;
                handler.sendMessage(PooledLambda.obtainMessage(triConsumer, this, displayTokenLocked, new SurfaceControl.DesiredDisplayModeSpecs(findSfDisplayModeIdLocked, desiredDisplayModeSpecs2.allowGroupSwitching, desiredDisplayModeSpecs2.primary, desiredDisplayModeSpecs2.appRequest)));
            }
        }

        public final void setDesiredDisplayModeSpecsAsync(final IBinder iBinder, final SurfaceControl.DesiredDisplayModeSpecs desiredDisplayModeSpecs) {
            if (CoreRune.FW_VRR_PERFORMANCE) {
                synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                    for (int i = 0; i < LocalDisplayAdapter.this.mDevices.size(); i++) {
                        LocalDisplayDevice localDisplayDevice = (LocalDisplayDevice) LocalDisplayAdapter.this.mDevices.valueAt(i);
                        int i2 = localDisplayDevice.mStateLimit;
                        if (i2 != 0) {
                            if (i2 != localDisplayDevice.mCommittedState) {
                                localDisplayDevice.mStateChangeCallbacks.add(new Runnable() { // from class: com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LocalDisplayAdapter.LocalDisplayDevice.this.lambda$setDesiredDisplayModeSpecsAsync$0(desiredDisplayModeSpecs, iBinder);
                                    }
                                });
                                return;
                            }
                        } else {
                            if (localDisplayDevice.mState != localDisplayDevice.mCommittedState) {
                                localDisplayDevice.mStateChangeCallbacks.add(new Runnable() { // from class: com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LocalDisplayAdapter.LocalDisplayDevice.this.lambda$setDesiredDisplayModeSpecsAsync$0(desiredDisplayModeSpecs, iBinder);
                                    }
                                });
                                return;
                            }
                        }
                    }
                }
            }
            if (CoreRune.FW_VRR_POLICY) {
                EventLog.writeEvent(1290000, desiredDisplayModeSpecs.toString());
                Slog.d("LocalDisplayAdapter", "setDesiredDisplayModeSpecsAsync(" + this.mPhysicalDisplayId + ") : " + desiredDisplayModeSpecs);
            }
            LocalDisplayAdapter.this.mSurfaceControlProxy.setDesiredDisplayModeSpecs(iBinder, desiredDisplayModeSpecs);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setDesiredDisplayModeSpecsAsync$0(SurfaceControl.DesiredDisplayModeSpecs desiredDisplayModeSpecs, IBinder iBinder) {
            EventLog.writeEvent(1290000, desiredDisplayModeSpecs.toString());
            Slog.d("LocalDisplayAdapter", "Run! setDesiredDisplayModeSpecsAsync(" + this.mPhysicalDisplayId + ") : " + desiredDisplayModeSpecs);
            LocalDisplayAdapter.this.mSurfaceControlProxy.setDesiredDisplayModeSpecs(iBinder, desiredDisplayModeSpecs);
        }

        @Override // com.android.server.display.DisplayDevice
        public void onOverlayChangedLocked() {
            updateDeviceInfoLocked();
        }

        public void onActiveDisplayModeChangedLocked(int i, float f) {
            if (updateActiveModeLocked(i, f)) {
                updateDeviceInfoLocked();
            }
        }

        public void onFrameRateOverridesChanged(DisplayEventReceiver.FrameRateOverride[] frameRateOverrideArr) {
            if (updateFrameRateOverridesLocked(frameRateOverrideArr)) {
                updateDeviceInfoLocked();
            }
        }

        public boolean updateActiveModeLocked(int i, float f) {
            SurfaceControl.DisplayMode displayMode;
            int i2;
            if (this.mActiveSfDisplayMode.id == i && this.mActiveRenderFrameRate == f) {
                return false;
            }
            this.mActiveSfDisplayMode = getModeById(this.mSfDisplayModes, i);
            int findMatchingModeIdLocked = findMatchingModeIdLocked(i);
            this.mActiveModeId = findMatchingModeIdLocked;
            if (findMatchingModeIdLocked == -1) {
                Slog.w("LocalDisplayAdapter", "In unknown mode after setting allowed modes, activeModeId=" + i);
            } else if (CoreRune.FW_VRR_POLICY) {
                Slog.d("LocalDisplayAdapter", "updateActiveModeLocked for d=" + this.mPhysicalDisplayId + ", mActiveModeId=" + this.mActiveModeId + ", mActiveSfDisplayMode=" + this.mActiveSfDisplayMode);
            }
            if (CoreRune.FW_VRR_RESOLUTION_POLICY && this.mIsFirstDisplay && (displayMode = this.mActiveSfDisplayMode) != null && this.mLastResolution != (i2 = displayMode.width * displayMode.height)) {
                this.mLastResolution = i2;
                this.mDisplayModeSpecsInvalid = true;
                Slog.d("LocalDisplayAdapter", "Reset modespecs due to resolution change!");
            }
            this.mActiveRenderFrameRate = f;
            return true;
        }

        public boolean updateFrameRateOverridesLocked(DisplayEventReceiver.FrameRateOverride[] frameRateOverrideArr) {
            if (Arrays.equals(frameRateOverrideArr, this.mFrameRateOverrides)) {
                return false;
            }
            this.mFrameRateOverrides = frameRateOverrideArr;
            return true;
        }

        public void requestColorModeLocked(int i) {
            if (this.mActiveColorMode == i) {
                return;
            }
            if (!this.mSupportedColorModes.contains(Integer.valueOf(i))) {
                Slog.w("LocalDisplayAdapter", "Unable to find color mode " + i + ", ignoring request.");
                return;
            }
            this.mActiveColorMode = i;
            LocalDisplayAdapter.this.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((LocalDisplayAdapter.LocalDisplayDevice) obj).requestColorModeAsync((IBinder) obj2, ((Integer) obj3).intValue());
                }
            }, this, getDisplayTokenLocked(), Integer.valueOf(i)));
        }

        public final void requestColorModeAsync(IBinder iBinder, int i) {
            LocalDisplayAdapter.this.mSurfaceControlProxy.setActiveColorMode(iBinder, i);
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                updateDeviceInfoLocked();
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public void setAutoLowLatencyModeLocked(boolean z) {
            if (this.mAllmRequested == z) {
                return;
            }
            this.mAllmRequested = z;
            if (!this.mAllmSupported) {
                Slog.d("LocalDisplayAdapter", "Unable to set ALLM because the connected display does not support ALLM.");
            } else {
                LocalDisplayAdapter.this.mSurfaceControlProxy.setAutoLowLatencyMode(getDisplayTokenLocked(), z);
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public void setGameContentTypeLocked(boolean z) {
            if (this.mGameContentTypeRequested == z) {
                return;
            }
            this.mGameContentTypeRequested = z;
            LocalDisplayAdapter.this.mSurfaceControlProxy.setGameContentType(getDisplayTokenLocked(), z);
        }

        @Override // com.android.server.display.DisplayDevice
        public boolean isFirstDisplay() {
            return this.mIsFirstDisplay;
        }

        @Override // com.android.server.display.DisplayDevice
        public void dumpLocked(PrintWriter printWriter) {
            super.dumpLocked(printWriter);
            printWriter.println("mPhysicalDisplayId=" + this.mPhysicalDisplayId);
            printWriter.println("mDisplayModeSpecs={" + this.mDisplayModeSpecs + "}");
            StringBuilder sb = new StringBuilder();
            sb.append("mDisplayModeSpecsInvalid=");
            sb.append(this.mDisplayModeSpecsInvalid);
            printWriter.println(sb.toString());
            printWriter.println("mActiveModeId=" + this.mActiveModeId);
            printWriter.println("mActiveColorMode=" + this.mActiveColorMode);
            printWriter.println("mDefaultModeId=" + this.mDefaultModeId);
            printWriter.println("mUserPreferredModeId=" + this.mUserPreferredModeId);
            printWriter.println("mState=" + Display.stateToString(this.mState));
            printWriter.println("mCommittedState=" + Display.stateToString(this.mCommittedState));
            printWriter.println("mBrightnessState=" + this.mBrightnessState);
            printWriter.println("mBacklightAdapter=" + this.mBacklightAdapter);
            printWriter.println("mAllmSupported=" + this.mAllmSupported);
            printWriter.println("mAllmRequested=" + this.mAllmRequested);
            printWriter.println("mGameContentTypeSupported=" + this.mGameContentTypeSupported);
            printWriter.println("mGameContentTypeRequested=" + this.mGameContentTypeRequested);
            printWriter.println("mStaticDisplayInfo=" + this.mStaticDisplayInfo);
            printWriter.println("mSfDisplayModes=");
            for (SurfaceControl.DisplayMode displayMode : this.mSfDisplayModes) {
                printWriter.println("  " + displayMode);
            }
            printWriter.println("mActiveSfDisplayMode=" + this.mActiveSfDisplayMode);
            printWriter.println("mActiveRenderFrameRate=" + this.mActiveRenderFrameRate);
            printWriter.println("mSupportedModes=");
            for (int i = 0; i < this.mSupportedModes.size(); i++) {
                printWriter.println("  " + this.mSupportedModes.valueAt(i));
            }
            printWriter.println("mSupportedColorModes=" + this.mSupportedColorModes);
            printWriter.println("mDisplayDeviceConfig=" + this.mDisplayDeviceConfig);
        }

        public final int findSfDisplayModeIdLocked(int i, int i2) {
            DisplayModeRecord displayModeRecord = (DisplayModeRecord) this.mSupportedModes.get(i);
            if (displayModeRecord == null) {
                return -1;
            }
            int i3 = -1;
            for (SurfaceControl.DisplayMode displayMode : this.mSfDisplayModes) {
                if (displayModeRecord.hasMatchingMode(displayMode)) {
                    if (i3 == -1) {
                        i3 = displayMode.id;
                    }
                    if (displayMode.group == i2) {
                        return displayMode.id;
                    }
                }
            }
            return i3;
        }

        public final Display.Mode findMode(int i) {
            for (int i2 = 0; i2 < this.mSupportedModes.size(); i2++) {
                Display.Mode mode = ((DisplayModeRecord) this.mSupportedModes.valueAt(i2)).mMode;
                if (mode.getModeId() == i) {
                    return mode;
                }
            }
            return null;
        }

        public final Display.Mode findMode(int i, int i2, float f) {
            for (int i3 = 0; i3 < this.mSupportedModes.size(); i3++) {
                Display.Mode mode = ((DisplayModeRecord) this.mSupportedModes.valueAt(i3)).mMode;
                if (mode.matchesIfValid(i, i2, f)) {
                    return mode;
                }
            }
            return null;
        }

        public final int findUserPreferredModeIdLocked(Display.Mode mode) {
            if (mode == null) {
                return -1;
            }
            for (int i = 0; i < this.mSupportedModes.size(); i++) {
                Display.Mode mode2 = ((DisplayModeRecord) this.mSupportedModes.valueAt(i)).mMode;
                if (mode.matches(mode2.getPhysicalWidth(), mode2.getPhysicalHeight(), mode2.getRefreshRate())) {
                    return mode2.getModeId();
                }
            }
            return -1;
        }

        public final int findMatchingModeIdLocked(int i) {
            SurfaceControl.DisplayMode modeById = getModeById(this.mSfDisplayModes, i);
            if (modeById == null) {
                Slog.e("LocalDisplayAdapter", "Invalid display mode ID " + i);
                return -1;
            }
            for (int i2 = 0; i2 < this.mSupportedModes.size(); i2++) {
                DisplayModeRecord displayModeRecord = (DisplayModeRecord) this.mSupportedModes.valueAt(i2);
                if (displayModeRecord.hasMatchingMode(modeById)) {
                    return displayModeRecord.mMode.getModeId();
                }
            }
            return -1;
        }

        public final void updateDeviceInfoLocked() {
            this.mInfo = null;
            LocalDisplayAdapter.this.sendDisplayDeviceEventLocked(this, 2);
        }

        public final Display.Mode[] getDisplayModes(SparseArray sparseArray) {
            int size = sparseArray.size();
            Display.Mode[] modeArr = new Display.Mode[size];
            for (int i = 0; i < size; i++) {
                modeArr[i] = ((DisplayModeRecord) sparseArray.valueAt(i)).mMode;
            }
            return modeArr;
        }

        public final boolean isDisplayPrivate(DisplayAddress.Physical physical) {
            int[] intArray;
            if (physical != null && (intArray = LocalDisplayAdapter.this.getOverlayContext().getResources().getIntArray(17236233)) != null) {
                int port = physical.getPort();
                for (int i : intArray) {
                    if (i == port) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final void notifyStateChangeStart(ArrayList arrayList, final int i, final int i2, final int i3) {
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            final PowerManagerUtil.StopwatchLogger start = PowerManagerUtil.StopwatchLogger.start();
            arrayList.forEach(new Consumer() { // from class: com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LocalDisplayAdapter.LocalDisplayDevice.lambda$notifyStateChangeStart$1(PowerManagerUtil.StopwatchLogger.this, i, i2, i3, (DisplayManagerInternal.DisplayStateListener) obj);
                }
            });
        }

        public static /* synthetic */ void lambda$notifyStateChangeStart$1(PowerManagerUtil.StopwatchLogger stopwatchLogger, int i, int i2, int i3, DisplayManagerInternal.DisplayStateListener displayStateListener) {
            stopwatchLogger.resetStartTime();
            displayStateListener.onStart(i, i2, i3);
            stopwatchLogger.d("LocalDisplayAdapter", "notifyStateChangeStart: " + displayStateListener);
        }

        public final void notifyStateChangeFinish(ArrayList arrayList, final int i, final int i2, final int i3) {
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            final PowerManagerUtil.StopwatchLogger start = PowerManagerUtil.StopwatchLogger.start();
            arrayList.forEach(new Consumer() { // from class: com.android.server.display.LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LocalDisplayAdapter.LocalDisplayDevice.lambda$notifyStateChangeFinish$2(PowerManagerUtil.StopwatchLogger.this, i, i2, i3, (DisplayManagerInternal.DisplayStateListener) obj);
                }
            });
        }

        public static /* synthetic */ void lambda$notifyStateChangeFinish$2(PowerManagerUtil.StopwatchLogger stopwatchLogger, int i, int i2, int i3, DisplayManagerInternal.DisplayStateListener displayStateListener) {
            stopwatchLogger.resetStartTime();
            displayStateListener.onFinish(i, i2, i3);
            stopwatchLogger.d("LocalDisplayAdapter", "notifyStateChangeFinish: " + displayStateListener);
        }
    }

    public final boolean hdrTypesEqual(int[] iArr, int[] iArr2) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Arrays.sort(copyOf);
        return Arrays.equals(copyOf, iArr2);
    }

    public Context getOverlayContext() {
        if (this.mOverlayContext == null) {
            this.mOverlayContext = ActivityThread.currentActivityThread().getSystemUiContext();
        }
        return this.mOverlayContext;
    }

    /* loaded from: classes2.dex */
    public final class DisplayModeRecord {
        public final Display.Mode mMode;

        public DisplayModeRecord(SurfaceControl.DisplayMode displayMode, float[] fArr) {
            this.mMode = DisplayAdapter.createMode(displayMode.width, displayMode.height, displayMode.refreshRate, fArr, displayMode.supportedHdrTypes);
        }

        public boolean hasMatchingMode(SurfaceControl.DisplayMode displayMode) {
            return this.mMode.getPhysicalWidth() == displayMode.width && this.mMode.getPhysicalHeight() == displayMode.height && Float.floatToIntBits(this.mMode.getRefreshRate()) == Float.floatToIntBits(displayMode.refreshRate);
        }

        public String toString() {
            return "DisplayModeRecord{mMode=" + this.mMode + "}";
        }
    }

    /* loaded from: classes2.dex */
    public class Injector {
        public ProxyDisplayEventReceiver mReceiver;

        public void setDisplayEventListenerLocked(Looper looper, DisplayEventListener displayEventListener) {
            this.mReceiver = new ProxyDisplayEventReceiver(looper, displayEventListener);
        }

        public SurfaceControlProxy getSurfaceControlProxy() {
            return new SurfaceControlProxy();
        }
    }

    /* loaded from: classes2.dex */
    public final class ProxyDisplayEventReceiver extends DisplayEventReceiver {
        public final DisplayEventListener mListener;

        public ProxyDisplayEventReceiver(Looper looper, DisplayEventListener displayEventListener) {
            super(looper, 0, 3);
            this.mListener = displayEventListener;
        }

        public void onHotplug(long j, long j2, boolean z) {
            this.mListener.onHotplug(j, j2, z);
        }

        public void onModeChanged(long j, long j2, int i, long j3) {
            this.mListener.onModeChanged(j, j2, i, j3);
        }

        public void onFrameRateOverridesChanged(long j, long j2, DisplayEventReceiver.FrameRateOverride[] frameRateOverrideArr) {
            this.mListener.onFrameRateOverridesChanged(j, j2, frameRateOverrideArr);
        }
    }

    /* loaded from: classes2.dex */
    public final class LocalDisplayEventListener implements DisplayEventListener {
        public LocalDisplayEventListener() {
        }

        @Override // com.android.server.display.LocalDisplayAdapter.DisplayEventListener
        public void onHotplug(long j, long j2, boolean z) {
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                if (z) {
                    LocalDisplayAdapter.this.tryConnectDisplayLocked(j2);
                } else {
                    LocalDisplayAdapter.this.tryDisconnectDisplayLocked(j2);
                }
            }
        }

        @Override // com.android.server.display.LocalDisplayAdapter.DisplayEventListener
        public void onModeChanged(long j, long j2, int i, long j3) {
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                LocalDisplayDevice localDisplayDevice = (LocalDisplayDevice) LocalDisplayAdapter.this.mDevices.get(j2);
                if (localDisplayDevice == null) {
                    return;
                }
                localDisplayDevice.onActiveDisplayModeChangedLocked(i, 1.0E9f / ((float) j3));
            }
        }

        @Override // com.android.server.display.LocalDisplayAdapter.DisplayEventListener
        public void onFrameRateOverridesChanged(long j, long j2, DisplayEventReceiver.FrameRateOverride[] frameRateOverrideArr) {
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                LocalDisplayDevice localDisplayDevice = (LocalDisplayDevice) LocalDisplayAdapter.this.mDevices.get(j2);
                if (localDisplayDevice == null) {
                    return;
                }
                localDisplayDevice.onFrameRateOverridesChanged(frameRateOverrideArr);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class SurfaceControlProxy {
        public SurfaceControl.DynamicDisplayInfo getDynamicDisplayInfo(long j) {
            return SurfaceControl.getDynamicDisplayInfo(j);
        }

        public long[] getPhysicalDisplayIds() {
            return DisplayControl.getPhysicalDisplayIds();
        }

        public IBinder getPhysicalDisplayToken(long j) {
            return DisplayControl.getPhysicalDisplayToken(j);
        }

        public SurfaceControl.StaticDisplayInfo getStaticDisplayInfo(long j) {
            return SurfaceControl.getStaticDisplayInfo(j);
        }

        public SurfaceControl.DesiredDisplayModeSpecs getDesiredDisplayModeSpecs(IBinder iBinder) {
            return SurfaceControl.getDesiredDisplayModeSpecs(iBinder);
        }

        public boolean setDesiredDisplayModeSpecs(IBinder iBinder, SurfaceControl.DesiredDisplayModeSpecs desiredDisplayModeSpecs) {
            return SurfaceControl.setDesiredDisplayModeSpecs(iBinder, desiredDisplayModeSpecs);
        }

        public void setDisplayPowerMode(IBinder iBinder, int i) {
            SurfaceControl.setDisplayPowerMode(iBinder, i);
        }

        public boolean setActiveColorMode(IBinder iBinder, int i) {
            return SurfaceControl.setActiveColorMode(iBinder, i);
        }

        public boolean getBootDisplayModeSupport() {
            Trace.traceBegin(32L, "getBootDisplayModeSupport");
            try {
                return SurfaceControl.getBootDisplayModeSupport();
            } finally {
                Trace.traceEnd(32L);
            }
        }

        public void setBootDisplayMode(IBinder iBinder, int i) {
            SurfaceControl.setBootDisplayMode(iBinder, i);
        }

        public void clearBootDisplayMode(IBinder iBinder) {
            SurfaceControl.clearBootDisplayMode(iBinder);
        }

        public void setAutoLowLatencyMode(IBinder iBinder, boolean z) {
            SurfaceControl.setAutoLowLatencyMode(iBinder, z);
        }

        public void setGameContentType(IBinder iBinder, boolean z) {
            SurfaceControl.setGameContentType(iBinder, z);
        }

        public boolean getDisplayBrightnessSupport(IBinder iBinder) {
            return SurfaceControl.getDisplayBrightnessSupport(iBinder);
        }

        public boolean setDisplayBrightness(IBinder iBinder, float f) {
            return SurfaceControl.setDisplayBrightness(iBinder, f);
        }

        public boolean setDisplayBrightness(IBinder iBinder, float f, float f2, float f3, float f4) {
            return SurfaceControl.setDisplayBrightness(iBinder, f, f2, f3, f4);
        }
    }

    /* loaded from: classes2.dex */
    public class BacklightAdapter {
        public final LogicalLight mBacklight;
        public final IBinder mDisplayToken;
        public boolean mForceSurfaceControl = false;
        public final boolean mIsFirstDisplay;
        public final SurfaceControlProxy mSurfaceControlProxy;
        public final boolean mUseSurfaceControlBrightness;

        public BacklightAdapter(IBinder iBinder, boolean z, SurfaceControlProxy surfaceControlProxy, long j) {
            this.mDisplayToken = iBinder;
            this.mSurfaceControlProxy = surfaceControlProxy;
            boolean displayBrightnessSupport = surfaceControlProxy.getDisplayBrightnessSupport(iBinder);
            this.mUseSurfaceControlBrightness = displayBrightnessSupport;
            this.mIsFirstDisplay = z;
            SurfaceControl.StaticDisplayInfo staticDisplayInfo = surfaceControlProxy.getStaticDisplayInfo(j);
            boolean z2 = staticDisplayInfo != null && staticDisplayInfo.isInternal;
            if (!displayBrightnessSupport && z) {
                this.mBacklight = ((LightsManager) LocalServices.getService(LightsManager.class)).getLight(0);
            } else if (!displayBrightnessSupport && z2) {
                this.mBacklight = ((LightsManager) LocalServices.getService(LightsManager.class)).getLight(9);
            } else {
                this.mBacklight = null;
            }
        }

        public void setBacklight(float f, float f2, float f3, float f4, int i, int i2) {
            if (this.mUseSurfaceControlBrightness || this.mForceSurfaceControl) {
                if (BrightnessSynchronizer.floatEquals(f, Float.NaN)) {
                    this.mSurfaceControlProxy.setDisplayBrightness(this.mDisplayToken, f3);
                    return;
                }
                Slog.d("LocalDisplayAdapter", "surface lcd : " + PowerManagerUtil.brightnessToString(i, f3) + ", " + PowerManagerUtil.brightnessToString(i2, f) + ", " + PowerManagerUtil.displayTypeToString(this.mIsFirstDisplay) + " +");
                this.mSurfaceControlProxy.setDisplayBrightness(this.mDisplayToken, f, f2, f3, f4);
                Slog.d("LocalDisplayAdapter", "surface lcd : " + PowerManagerUtil.brightnessToString(i, f3) + ", " + PowerManagerUtil.brightnessToString(i2, f) + ", " + PowerManagerUtil.displayTypeToString(this.mIsFirstDisplay) + " -");
                return;
            }
            LogicalLight logicalLight = this.mBacklight;
            if (logicalLight != null) {
                logicalLight.setBrightness(f3);
            }
        }

        public void setForceSurfaceControl(boolean z) {
            this.mForceSurfaceControl = z;
        }

        public String toString() {
            return "BacklightAdapter [useSurfaceControl=" + this.mUseSurfaceControlBrightness + " (force_anyway? " + this.mForceSurfaceControl + "), backlight=" + this.mBacklight + "]";
        }
    }
}
