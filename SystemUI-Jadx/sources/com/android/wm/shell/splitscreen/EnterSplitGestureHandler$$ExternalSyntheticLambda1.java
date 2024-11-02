package com.android.wm.shell.splitscreen;

import android.app.ActivityTaskManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.accessibility.util.AccessibilityUtils;
import com.android.wm.shell.controlpanel.utils.ControlPanelUtils;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class EnterSplitGestureHandler$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EnterSplitGestureHandler f$0;

    public /* synthetic */ EnterSplitGestureHandler$$ExternalSyntheticLambda1(EnterSplitGestureHandler enterSplitGestureHandler, int i) {
        this.$r8$classId = i;
        this.f$0 = enterSplitGestureHandler;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.wm.shell.splitscreen.EnterSplitGestureHandler$5] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        switch (this.$r8$classId) {
            case 0:
                final EnterSplitGestureHandler enterSplitGestureHandler = this.f$0;
                String str = EnterSplitGestureHandler.TAG;
                boolean z5 = EnterSplitGestureHandler.DEBUG;
                if (z5) {
                    enterSplitGestureHandler.getClass();
                    Slog.d(str, "init");
                }
                Context context = enterSplitGestureHandler.mContext;
                enterSplitGestureHandler.mIsSupportSplitScreen = ActivityTaskManager.deviceSupportsMultiWindow(context);
                if (z5) {
                    Slog.d(str, "get settings");
                }
                ContentResolver contentResolver = context.getContentResolver();
                if (Settings.Global.getInt(contentResolver, "open_in_split_screen_view", 0) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                enterSplitGestureHandler.mIsSettingEnabled = z;
                String string = Settings.Secure.getString(contentResolver, "navigation_mode");
                try {
                    i = Integer.parseInt(string);
                } catch (NumberFormatException e) {
                    Slog.d(str, "failed to load nav mode=" + string);
                    e.printStackTrace();
                    i = 0;
                }
                enterSplitGestureHandler.mNavMode = i;
                if (Settings.Global.getInt(contentResolver, "device_provisioned", 0) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                enterSplitGestureHandler.mIsDeviceProvisioned = z2;
                if (Settings.Secure.getIntForUser(contentResolver, "user_setup_complete", 0, -2) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                enterSplitGestureHandler.mIsUserSetupComplete = z3;
                try {
                    enterSplitGestureHandler.mIsLockTaskMode = enterSplitGestureHandler.mAtm.isInLockTaskMode();
                } catch (RemoteException e2) {
                    if (z5) {
                        Slog.e(str, "Failed to get lock task mode.");
                    }
                    e2.printStackTrace();
                }
                Set enabledServicesFromSettings = AccessibilityUtils.getEnabledServicesFromSettings(context, 0);
                ComponentName talkbackComponent = enterSplitGestureHandler.getTalkbackComponent();
                if (talkbackComponent == null) {
                    talkbackComponent = new ComponentName("com.samsung.android.accessibility.talkback", ControlPanelUtils.TALKBACK_SERVICE);
                }
                enterSplitGestureHandler.mIsTalkbackEnabled = enabledServicesFromSettings.contains(talkbackComponent);
                if (z5) {
                    Slog.d(str, "register observer");
                }
                final Uri uriFor = Settings.Global.getUriFor("open_in_split_screen_view");
                final Uri uriFor2 = Settings.Secure.getUriFor("MultiWindow_twoFingerSplitGesture_TestTouchSlop");
                final Uri uriFor3 = Settings.Secure.getUriFor("MultiWindow_twoFingerSplitGesture_TestFlag");
                final Uri uriFor4 = Settings.Secure.getUriFor("navigation_mode");
                final Uri uriFor5 = Settings.Global.getUriFor("device_provisioned");
                final Uri uriFor6 = Settings.Secure.getUriFor("user_setup_complete");
                final Uri uriFor7 = Settings.Secure.getUriFor("enabled_accessibility_services");
                final ContentResolver contentResolver2 = context.getContentResolver();
                final Handler handler = enterSplitGestureHandler.mHandler;
                enterSplitGestureHandler.mObserver = 
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0106: IPUT 
                      (wrap:??:0x0103: CONSTRUCTOR 
                      (r1v2 'enterSplitGestureHandler' com.android.wm.shell.splitscreen.EnterSplitGestureHandler A[DONT_INLINE])
                      (r2v7 'handler' android.os.Handler A[DONT_INLINE])
                      (r0v21 'uriFor' android.net.Uri A[DONT_INLINE])
                      (r16v0 'contentResolver2' android.content.ContentResolver A[DONT_INLINE])
                      (r9v0 'uriFor2' android.net.Uri A[DONT_INLINE])
                      (r8v0 'uriFor3' android.net.Uri A[DONT_INLINE])
                      (r7v1 'uriFor4' android.net.Uri A[DONT_INLINE])
                      (r5v2 'uriFor5' android.net.Uri A[DONT_INLINE])
                      (r6v2 'uriFor6' android.net.Uri A[DONT_INLINE])
                      (r4v1 'uriFor7' android.net.Uri A[DONT_INLINE])
                     A[MD:(com.android.wm.shell.splitscreen.EnterSplitGestureHandler, android.os.Handler, android.net.Uri, android.content.ContentResolver, android.net.Uri, android.net.Uri, android.net.Uri, android.net.Uri, android.net.Uri, android.net.Uri):void (m), WRAPPED] (LINE:260) call: com.android.wm.shell.splitscreen.EnterSplitGestureHandler.5.<init>(com.android.wm.shell.splitscreen.EnterSplitGestureHandler, android.os.Handler, android.net.Uri, android.content.ContentResolver, android.net.Uri, android.net.Uri, android.net.Uri, android.net.Uri, android.net.Uri, android.net.Uri):void type: CONSTRUCTOR)
                      (r1v2 'enterSplitGestureHandler' com.android.wm.shell.splitscreen.EnterSplitGestureHandler)
                     (LINE:263) com.android.wm.shell.splitscreen.EnterSplitGestureHandler.mObserver com.android.wm.shell.splitscreen.EnterSplitGestureHandler$5 in method: com.android.wm.shell.splitscreen.EnterSplitGestureHandler$$ExternalSyntheticLambda1.run():void, file: classes2.dex
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.android.wm.shell.splitscreen.EnterSplitGestureHandler, state: NOT_LOADED
                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:304)
                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:781)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:487)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                    	... 21 more
                    */
                /*
                    Method dump skipped, instructions count: 418
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.splitscreen.EnterSplitGestureHandler$$ExternalSyntheticLambda1.run():void");
            }
        }
