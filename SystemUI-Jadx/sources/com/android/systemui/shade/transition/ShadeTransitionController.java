package com.android.systemui.shade.transition;

import android.content.Context;
import android.content.res.Configuration;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.shade.ShadeExpansionStateManagerKt;
import com.android.systemui.shade.ShadeStateListener;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import java.io.PrintWriter;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeTransitionController {
    public final Context context;
    public Integer currentPanelState;
    public boolean inSplitShade;
    public ShadeExpansionChangeEvent lastShadeExpansionChangeEvent;
    public QS qs;
    public final ScrimShadeTransitionController scrimShadeTransitionController;
    public ShadeViewController shadeViewController;
    public final SysuiStatusBarStateController statusBarStateController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.shade.transition.ShadeTransitionController$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class AnonymousClass2 implements ShadeStateListener, FunctionAdapter {
        public AnonymousClass2() {
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ShadeStateListener) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function getFunctionDelegate() {
            return new FunctionReferenceImpl(1, ShadeTransitionController.this, ShadeTransitionController.class, "onPanelStateChanged", "onPanelStateChanged(I)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // com.android.systemui.shade.ShadeStateListener
        public final void onPanelStateChanged(int i) {
            Integer valueOf = Integer.valueOf(i);
            ShadeTransitionController shadeTransitionController = ShadeTransitionController.this;
            shadeTransitionController.currentPanelState = valueOf;
            Integer valueOf2 = Integer.valueOf(i);
            ScrimShadeTransitionController scrimShadeTransitionController = shadeTransitionController.scrimShadeTransitionController;
            scrimShadeTransitionController.currentPanelState = valueOf2;
            scrimShadeTransitionController.onStateChanged();
        }
    }

    public ShadeTransitionController(ConfigurationController configurationController, ShadeExpansionStateManager shadeExpansionStateManager, DumpManager dumpManager, Context context, ScrimShadeTransitionController scrimShadeTransitionController, SysuiStatusBarStateController sysuiStatusBarStateController) {
        this.context = context;
        this.scrimShadeTransitionController = scrimShadeTransitionController;
        this.statusBarStateController = sysuiStatusBarStateController;
        this.inSplitShade = context.getResources().getBoolean(R.bool.config_use_split_notification_shade);
        ((ConfigurationControllerImpl) configurationController).addCallback(new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.shade.transition.ShadeTransitionController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                ShadeTransitionController shadeTransitionController = ShadeTransitionController.this;
                shadeTransitionController.inSplitShade = shadeTransitionController.context.getResources().getBoolean(R.bool.config_use_split_notification_shade);
            }
        });
        ShadeExpansionChangeEvent addExpansionListener = shadeExpansionStateManager.addExpansionListener(new ShadeTransitionController$currentState$1(this));
        this.lastShadeExpansionChangeEvent = addExpansionListener;
        scrimShadeTransitionController.lastExpansionEvent = addExpansionListener;
        scrimShadeTransitionController.onStateChanged();
        shadeExpansionStateManager.stateListeners.add(new AnonymousClass2());
        dumpManager.registerCriticalDumpable("ShadeTransitionController", new Dumpable() { // from class: com.android.systemui.shade.transition.ShadeTransitionController.3
            @Override // com.android.systemui.Dumpable
            public final void dump(PrintWriter printWriter, String[] strArr) {
                boolean z;
                String str;
                boolean z2;
                ShadeTransitionController shadeTransitionController = ShadeTransitionController.this;
                boolean z3 = shadeTransitionController.inSplitShade;
                boolean z4 = true;
                if (((StatusBarStateControllerImpl) shadeTransitionController.statusBarStateController).mUpcomingState == 0) {
                    z = true;
                } else {
                    z = false;
                }
                Integer num = shadeTransitionController.currentPanelState;
                if (num != null) {
                    str = ShadeExpansionStateManagerKt.panelStateToString(num.intValue());
                } else {
                    str = null;
                }
                ShadeExpansionChangeEvent shadeExpansionChangeEvent = shadeTransitionController.lastShadeExpansionChangeEvent;
                if (shadeTransitionController.qs != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (shadeTransitionController.shadeViewController == null) {
                    z4 = false;
                }
                StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("\n            ShadeTransitionController:\n                inSplitShade: ", z3, "\n                isScreenUnlocked: ", z, "\n                currentPanelState: ");
                m.append(str);
                m.append("\n                lastPanelExpansionChangeEvent: ");
                m.append(shadeExpansionChangeEvent);
                m.append("\n                qs.isInitialized: ");
                m.append(z2);
                m.append("\n                npvc.isInitialized: ");
                m.append(z4);
                m.append("\n                nssl.isInitialized: false\n            ");
                printWriter.println(StringsKt__IndentKt.trimIndent(m.toString()));
            }
        });
    }
}
