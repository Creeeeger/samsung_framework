package com.android.systemui.navigationbar.gestural;

import android.app.ActivityThread;
import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import android.view.InputMonitor;
import android.view.TwoFingerSwipeGestureDetector;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.SystemUIAppComponentFactoryBase;
import com.android.systemui.SystemUIInitializer;
import com.android.systemui.util.SettingsHelper;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.Optional;
import java.util.function.Function;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeBackSplitGestureHandler {
    public static final Companion Companion = new Companion(null);
    public static final boolean SAFE_DEBUG;
    public final Context context;
    public final DisplayController displayController;
    public final int displayId;
    public boolean enabled;
    public boolean gestureDetected;
    public final TwoFingerSwipeGestureDetector gestureDetector;
    public InputMonitor inputMonitor;
    public final SettingsHelper settingsHelper;
    public final SplitScreenController splitScreenController;
    public final Rect tmpBounds = new Rect();
    public final EdgeBackSplitGestureHandler$settingsCallBack$1 settingsCallBack = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler$settingsCallBack$1
        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            boolean z;
            EdgeBackSplitGestureHandler edgeBackSplitGestureHandler = EdgeBackSplitGestureHandler.this;
            SettingsHelper settingsHelper = edgeBackSplitGestureHandler.settingsHelper;
            settingsHelper.getClass();
            boolean z2 = BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE;
            boolean z3 = true;
            if (z2 && settingsHelper.mItemLists.get("open_in_split_screen_view").getIntValue() != 0) {
                z = true;
            } else {
                z = false;
            }
            SettingsHelper settingsHelper2 = edgeBackSplitGestureHandler.settingsHelper;
            settingsHelper2.getClass();
            if (!z2 || settingsHelper2.mItemLists.get("open_in_split_screen_view").getIntValue() == 0) {
                z3 = false;
            }
            boolean z4 = z & z3;
            if (edgeBackSplitGestureHandler.enabled != z4) {
                edgeBackSplitGestureHandler.enabled = z4;
            }
        }
    };

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
        String str = Build.TYPE;
        SAFE_DEBUG = str.equals("userdebug") | str.equals("eng");
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler$settingsCallBack$1] */
    public EdgeBackSplitGestureHandler(Context context, int i, SettingsHelper settingsHelper) {
        boolean z;
        this.context = context;
        this.displayId = i;
        this.settingsHelper = settingsHelper;
        if (BasicRune.NAVBAR_MW_ENTER_SPLIT_USING_GESTURE && Process.myUserHandle().isSystem() && Intrinsics.areEqual(ActivityThread.currentProcessName(), ActivityThread.currentPackageName())) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            SystemUIAppComponentFactoryBase.Companion.getClass();
            SystemUIInitializer systemUIInitializer = SystemUIAppComponentFactoryBase.systemUIInitializer;
            Intrinsics.checkNotNull(systemUIInitializer);
            Optional displayController = systemUIInitializer.getWMComponent().getDisplayController();
            if (displayController.isPresent()) {
                this.displayController = (DisplayController) displayController.get();
            }
            Optional splitScreenController = systemUIInitializer.getWMComponent().getSplitScreenController();
            if (splitScreenController.isPresent()) {
                this.splitScreenController = (SplitScreenController) splitScreenController.get();
            }
        }
        this.gestureDetector = new TwoFingerSwipeGestureDetector(context, new Function() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler.1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                final TwoFingerSwipeGestureDetector twoFingerSwipeGestureDetector = (TwoFingerSwipeGestureDetector) obj;
                final EdgeBackSplitGestureHandler edgeBackSplitGestureHandler = EdgeBackSplitGestureHandler.this;
                Companion companion = EdgeBackSplitGestureHandler.Companion;
                edgeBackSplitGestureHandler.getClass();
                return new TwoFingerSwipeGestureDetector.GestureListener() { // from class: com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler$createGestureListener$1
                    public final void onCanceled() {
                        EdgeBackSplitGestureHandler.Companion.getClass();
                        if (EdgeBackSplitGestureHandler.SAFE_DEBUG) {
                            Log.d("EdgeBackSplitGestureHandler", "onCanceled SplitGestureHandler");
                        }
                        EdgeBackSplitGestureHandler.this.gestureDetected = false;
                    }

                    public final void onCommitted(int i2) {
                        EdgeBackSplitGestureHandler.Companion.getClass();
                        if (EdgeBackSplitGestureHandler.SAFE_DEBUG) {
                            ListPopupWindow$$ExternalSyntheticOutline0.m("onCommitted SplitGestureHandler , getureFrom = ", i2, "EdgeBackSplitGestureHandler");
                        }
                        EdgeBackSplitGestureHandler edgeBackSplitGestureHandler2 = EdgeBackSplitGestureHandler.this;
                        edgeBackSplitGestureHandler2.gestureDetected = false;
                        SplitScreenController splitScreenController2 = edgeBackSplitGestureHandler2.splitScreenController;
                        if (splitScreenController2 != null) {
                            splitScreenController2.mImpl.startSplitByTwoTouchSwipeIfPossible(i2);
                        } else {
                            Log.e("EdgeBackSplitGestureHandler", "gesture committed but split controller is null.");
                        }
                    }

                    public final void onDetected() {
                        EdgeBackSplitGestureHandler.Companion.getClass();
                        if (EdgeBackSplitGestureHandler.SAFE_DEBUG) {
                            Log.d("EdgeBackSplitGestureHandler", "onDetected SplitGestureHandler");
                        }
                        InputMonitor inputMonitor = EdgeBackSplitGestureHandler.this.inputMonitor;
                        if (inputMonitor == null) {
                            inputMonitor = null;
                        }
                        inputMonitor.pilferPointers();
                        EdgeBackSplitGestureHandler.this.gestureDetected = true;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
                    
                        if (r5 == false) goto L28;
                     */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void onDetecting() {
                        /*
                            r6 = this;
                            com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler$Companion r0 = com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler.Companion
                            r0.getClass()
                            boolean r0 = com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler.SAFE_DEBUG
                            java.lang.String r1 = "EdgeBackSplitGestureHandler"
                            if (r0 == 0) goto L11
                            java.lang.String r0 = "onDetecting in SplitGestureHandler"
                            android.util.Log.d(r1, r0)
                        L11:
                            com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler r0 = com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler.this
                            com.android.wm.shell.common.DisplayController r2 = r0.displayController
                            if (r2 == 0) goto L5d
                            int r0 = r0.displayId
                            com.android.wm.shell.common.DisplayLayout r0 = r2.getDisplayLayout(r0)
                            if (r0 == 0) goto L5d
                            com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler r1 = com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler.this
                            android.view.TwoFingerSwipeGestureDetector r6 = r2
                            android.graphics.Rect r2 = r1.tmpBounds
                            r0.getDisplayBounds(r2)
                            int r2 = r0.mWidth
                            int r3 = r0.mHeight
                            r4 = 2
                            r5 = 1
                            if (r2 <= r3) goto L32
                            r2 = r4
                            goto L33
                        L32:
                            r2 = r5
                        L33:
                            r3 = 5
                            if (r2 == r4) goto L53
                            boolean r2 = com.samsung.android.rune.CoreRune.MW_MULTI_SPLIT_FULL_TO_SPLIT_BY_GESTURE
                            r4 = 0
                            if (r2 == 0) goto L52
                            android.content.Context r2 = r1.context
                            android.content.res.Resources r2 = r2.getResources()
                            if (r2 == 0) goto L4e
                            android.content.res.Configuration r2 = r2.getConfiguration()
                            if (r2 == 0) goto L4e
                            int r2 = r2.semDisplayDeviceType
                            if (r2 != r3) goto L4e
                            goto L4f
                        L4e:
                            r5 = r4
                        L4f:
                            if (r5 != 0) goto L52
                            goto L53
                        L52:
                            r3 = r4
                        L53:
                            float r0 = r0.density()
                            android.graphics.Rect r1 = r1.tmpBounds
                            r6.init(r1, r0, r3)
                            goto L62
                        L5d:
                            java.lang.String r6 = "gesture detecting but display frame is null"
                            android.util.Log.e(r1, r6)
                        L62:
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.gestural.EdgeBackSplitGestureHandler$createGestureListener$1.onDetecting():void");
                    }

                    public final void onEnd() {
                        EdgeBackSplitGestureHandler.Companion.getClass();
                        if (EdgeBackSplitGestureHandler.SAFE_DEBUG) {
                            Log.d("EdgeBackSplitGestureHandler", "onCanceled SplitGestureHandler");
                        }
                        EdgeBackSplitGestureHandler.this.gestureDetected = false;
                    }
                };
            }
        }, "EdgeBack");
    }
}
