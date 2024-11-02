package com.android.systemui.statusbar.phone;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.android.systemui.demomode.DemoMode;
import com.android.systemui.demomode.DemoModeCommandReceiver;
import com.android.systemui.demomode.DemoModeController;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.statusbar.policy.QSClockIndicatorView;
import com.android.systemui.util.ViewController;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarDemoMode extends ViewController implements DemoMode {
    public final QSClockIndicatorView mClockView;
    public final DemoModeController mDemoModeController;
    public final int mDisplayId;
    public final NavigationBarController mNavigationBarController;
    public final View mOperatorNameView;
    public final PhoneStatusBarTransitions mPhoneStatusBarTransitions;

    public StatusBarDemoMode(QSClockIndicatorView qSClockIndicatorView, View view, DemoModeController demoModeController, PhoneStatusBarTransitions phoneStatusBarTransitions, NavigationBarController navigationBarController, int i) {
        super(qSClockIndicatorView);
        this.mClockView = qSClockIndicatorView;
        this.mOperatorNameView = view;
        this.mDemoModeController = demoModeController;
        this.mPhoneStatusBarTransitions = phoneStatusBarTransitions;
        this.mNavigationBarController = navigationBarController;
        this.mDisplayId = i;
    }

    @Override // com.android.systemui.demomode.DemoMode
    public final List demoCommands() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("bars");
        arrayList.add(SubRoom.EXTRA_VALUE_CLOCK);
        arrayList.add("operator");
        return arrayList;
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void dispatchDemoCommand(Bundle bundle, String str) {
        int i;
        if (str.equals(SubRoom.EXTRA_VALUE_CLOCK)) {
            DarkIconDispatcher.DarkReceiver darkReceiver = this.mClockView;
            if (darkReceiver instanceof DemoModeCommandReceiver) {
                ((DemoModeCommandReceiver) darkReceiver).dispatchDemoCommand(bundle, str);
            }
        }
        if (str.equals("operator")) {
            KeyEvent.Callback callback = this.mOperatorNameView;
            if (callback instanceof DemoModeCommandReceiver) {
                ((DemoModeCommandReceiver) callback).dispatchDemoCommand(bundle, str);
            }
        }
        if (str.equals("bars")) {
            String string = bundle.getString("mode");
            if ("opaque".equals(string)) {
                i = 4;
            } else if ("translucent".equals(string)) {
                i = 2;
            } else if ("semi-transparent".equals(string)) {
                i = 1;
            } else if ("transparent".equals(string)) {
                i = 0;
            } else if ("warning".equals(string)) {
                i = 5;
            } else {
                i = -1;
            }
            if (i != -1) {
                this.mPhoneStatusBarTransitions.transitionTo(i, true);
                this.mNavigationBarController.transitionTo(this.mDisplayId, i);
            }
        }
    }

    @Override // com.android.systemui.demomode.DemoModeCommandReceiver
    public final void onDemoModeFinished() {
        DarkIconDispatcher.DarkReceiver darkReceiver = this.mClockView;
        if (darkReceiver instanceof DemoModeCommandReceiver) {
            ((DemoModeCommandReceiver) darkReceiver).onDemoModeFinished();
        }
        KeyEvent.Callback callback = this.mOperatorNameView;
        if (callback instanceof DemoModeCommandReceiver) {
            ((DemoModeCommandReceiver) callback).onDemoModeFinished();
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        this.mDemoModeController.addCallback((DemoMode) this);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        this.mDemoModeController.removeCallback((DemoMode) this);
    }
}
