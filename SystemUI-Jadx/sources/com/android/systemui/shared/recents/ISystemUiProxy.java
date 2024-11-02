package com.android.systemui.shared.recents;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.accessibility.dialog.AccessibilityButtonChooserActivity;
import com.android.internal.util.LatencyTracker;
import com.android.internal.util.ScreenshotRequest;
import com.android.systemui.BasicRune;
import com.android.systemui.QpRune;
import com.android.systemui.navigationbar.buttons.KeyButtonView;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.qs.FgsManagerController;
import com.android.systemui.qs.FgsManagerControllerImpl;
import com.android.systemui.recents.OverviewProxyService;
import com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda4;
import com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda5;
import com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda7;
import com.android.systemui.searcle.SearcleManager;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.shared.recents.IOverviewProxy;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.systemui.multistar.MultiStarManager;
import com.samsung.systemui.splugins.multistar.PluginMultiStar;
import java.util.ArrayList;
import java.util.Optional;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ISystemUiProxy extends IInterface {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract class Stub extends Binder implements ISystemUiProxy {
        public Stub() {
            attachInterface(this, "com.android.systemui.shared.recents.ISystemUiProxy");
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            long clearCallingIdentity;
            final int i3 = 1;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.android.systemui.shared.recents.ISystemUiProxy");
            }
            if (i != 1598968902) {
                final int i4 = 2;
                if (i != 2) {
                    final int i5 = 7;
                    if (i != 7) {
                        if (i != 10) {
                            if (i != 26) {
                                if (i != 30) {
                                    if (i != 13) {
                                        if (i != 14) {
                                            if (i != 45) {
                                                final int i6 = 0;
                                                if (i != 46) {
                                                    switch (i) {
                                                        case 16:
                                                            int readInt = parcel.readInt();
                                                            parcel.enforceNoDataAvail();
                                                            OverviewProxyService.AnonymousClass1 anonymousClass1 = (OverviewProxyService.AnonymousClass1) this;
                                                            if (anonymousClass1.verifyCaller("notifyAccessibilityButtonClicked")) {
                                                                clearCallingIdentity = Binder.clearCallingIdentity();
                                                                try {
                                                                    AccessibilityManager.getInstance(OverviewProxyService.this.mContext).notifyAccessibilityButtonClicked(readInt);
                                                                    break;
                                                                } finally {
                                                                }
                                                            }
                                                            break;
                                                        case 17:
                                                            final OverviewProxyService.AnonymousClass1 anonymousClass12 = (OverviewProxyService.AnonymousClass1) this;
                                                            final int i7 = 9;
                                                            Runnable runnable = new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    switch (i7) {
                                                                        case 0:
                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                            return;
                                                                        case 1:
                                                                            ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                            int size = arrayList.size();
                                                                            while (true) {
                                                                                size--;
                                                                                if (size >= 0) {
                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                            }
                                                                        case 2:
                                                                            ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                            return;
                                                                        case 3:
                                                                            ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                            int size2 = arrayList2.size();
                                                                            while (true) {
                                                                                size2--;
                                                                                if (size2 >= 0) {
                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                            }
                                                                        case 4:
                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                            return;
                                                                        case 5:
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass13 = anonymousClass12;
                                                                            anonymousClass13.sendEvent(0);
                                                                            anonymousClass13.sendEvent(1);
                                                                            return;
                                                                        case 6:
                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                            return;
                                                                        case 7:
                                                                            ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                            return;
                                                                        case 8:
                                                                            OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                            return;
                                                                        default:
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass14 = anonymousClass12;
                                                                            anonymousClass14.getClass();
                                                                            Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                            intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                            intent.addFlags(268468224);
                                                                            OverviewProxyService overviewProxyService = OverviewProxyService.this;
                                                                            overviewProxyService.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService.mUserTracker).getUserHandle());
                                                                            return;
                                                                    }
                                                                }
                                                            };
                                                            if (anonymousClass12.verifyCaller("notifyAccessibilityButtonLongClicked")) {
                                                                clearCallingIdentity = Binder.clearCallingIdentity();
                                                                try {
                                                                    runnable.run();
                                                                    break;
                                                                } finally {
                                                                }
                                                            }
                                                            break;
                                                        case 18:
                                                            ((OverviewProxyService.AnonymousClass1) this).verifyCallerAndClearCallingIdentityPostMain(new OverviewProxyService$1$$ExternalSyntheticLambda7(), "stopScreenPinning");
                                                            break;
                                                        case 19:
                                                            final float readFloat = parcel.readFloat();
                                                            parcel.enforceNoDataAvail();
                                                            final OverviewProxyService.AnonymousClass1 anonymousClass13 = (OverviewProxyService.AnonymousClass1) this;
                                                            anonymousClass13.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda6
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    switch (i6) {
                                                                        case 0:
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass14 = anonymousClass13;
                                                                            float f = readFloat;
                                                                            ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                            int size = arrayList.size();
                                                                            while (true) {
                                                                                size--;
                                                                                if (size >= 0) {
                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onAssistantGestureCompletion(f);
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                            }
                                                                        default:
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass15 = anonymousClass13;
                                                                            float f2 = readFloat;
                                                                            ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                            int size2 = arrayList2.size();
                                                                            while (true) {
                                                                                size2--;
                                                                                if (size2 >= 0) {
                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onAssistantProgress(f2);
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                            }
                                                                    }
                                                                }
                                                            }, "onAssistantGestureCompletion");
                                                            break;
                                                        default:
                                                            switch (i) {
                                                                case 48:
                                                                    final boolean readBoolean = parcel.readBoolean();
                                                                    final boolean readBoolean2 = parcel.readBoolean();
                                                                    parcel.enforceNoDataAvail();
                                                                    final OverviewProxyService.AnonymousClass1 anonymousClass14 = (OverviewProxyService.AnonymousClass1) this;
                                                                    anonymousClass14.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda2
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass15 = OverviewProxyService.AnonymousClass1.this;
                                                                            boolean z = readBoolean;
                                                                            boolean z2 = readBoolean2;
                                                                            ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                            int size = arrayList.size();
                                                                            while (true) {
                                                                                size--;
                                                                                if (size >= 0) {
                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onTaskbarStatusUpdated(z, z2);
                                                                                } else {
                                                                                    return;
                                                                                }
                                                                            }
                                                                        }
                                                                    }, "notifyTaskbarStatus");
                                                                    break;
                                                                case 49:
                                                                    boolean readBoolean3 = parcel.readBoolean();
                                                                    parcel.enforceNoDataAvail();
                                                                    OverviewProxyService.AnonymousClass1 anonymousClass15 = (OverviewProxyService.AnonymousClass1) this;
                                                                    anonymousClass15.verifyCallerAndClearCallingIdentityPostMain(new OverviewProxyService$1$$ExternalSyntheticLambda5(anonymousClass15, readBoolean3, 1), "notifyTaskbarAutohideSuspend");
                                                                    break;
                                                                case 50:
                                                                    OverviewProxyService.AnonymousClass1 anonymousClass16 = (OverviewProxyService.AnonymousClass1) this;
                                                                    InputMethodManager inputMethodManager = (InputMethodManager) OverviewProxyService.this.mContext.getSystemService(InputMethodManager.class);
                                                                    OverviewProxyService.this.mDisplayTracker.getClass();
                                                                    inputMethodManager.showInputMethodPickerFromSystem(true, 0);
                                                                    OverviewProxyService.this.mUiEventLogger.log(KeyButtonView.NavBarButtonEvent.NAVBAR_IME_SWITCHER_BUTTON_TAP);
                                                                    break;
                                                                case 51:
                                                                    final OverviewProxyService.AnonymousClass1 anonymousClass17 = (OverviewProxyService.AnonymousClass1) this;
                                                                    anonymousClass17.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            switch (i4) {
                                                                                case 0:
                                                                                    OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                                    return;
                                                                                case 1:
                                                                                    ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                    int size = arrayList.size();
                                                                                    while (true) {
                                                                                        size--;
                                                                                        if (size >= 0) {
                                                                                            ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                        } else {
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                case 2:
                                                                                    ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                                    return;
                                                                                case 3:
                                                                                    ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                    int size2 = arrayList2.size();
                                                                                    while (true) {
                                                                                        size2--;
                                                                                        if (size2 >= 0) {
                                                                                            ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                        } else {
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                case 4:
                                                                                    OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                                    return;
                                                                                case 5:
                                                                                    OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass17;
                                                                                    anonymousClass132.sendEvent(0);
                                                                                    anonymousClass132.sendEvent(1);
                                                                                    return;
                                                                                case 6:
                                                                                    OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                                    return;
                                                                                case 7:
                                                                                    ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                                    return;
                                                                                case 8:
                                                                                    OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                                    return;
                                                                                default:
                                                                                    OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass17;
                                                                                    anonymousClass142.getClass();
                                                                                    Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                                    intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                                    intent.addFlags(268468224);
                                                                                    OverviewProxyService overviewProxyService = OverviewProxyService.this;
                                                                                    overviewProxyService.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService.mUserTracker).getUserHandle());
                                                                                    return;
                                                                            }
                                                                        }
                                                                    }, "toggleNotificationPanel");
                                                                    break;
                                                                case 52:
                                                                    ScreenshotRequest screenshotRequest = (ScreenshotRequest) parcel.readTypedObject(ScreenshotRequest.CREATOR);
                                                                    parcel.enforceNoDataAvail();
                                                                    OverviewProxyService overviewProxyService = OverviewProxyService.this;
                                                                    overviewProxyService.mScreenshotHelper.takeScreenshot(screenshotRequest, overviewProxyService.mHandler, (Consumer) null);
                                                                    break;
                                                                default:
                                                                    switch (i) {
                                                                        case 101:
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass18 = (OverviewProxyService.AnonymousClass1) this;
                                                                            if (BasicRune.NAVBAR_GESTURE) {
                                                                                OverviewProxyService overviewProxyService2 = OverviewProxyService.this;
                                                                                ((NavBarStoreImpl) overviewProxyService2.mNavBarStore).handleEvent(overviewProxyService2, new EventTypeFactory.EventType.ResetBottomGestureHintVI());
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 102:
                                                                            int readInt2 = parcel.readInt();
                                                                            parcel.enforceNoDataAvail();
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass19 = (OverviewProxyService.AnonymousClass1) this;
                                                                            if (BasicRune.NAVBAR_GESTURE) {
                                                                                OverviewProxyService overviewProxyService3 = OverviewProxyService.this;
                                                                                ((NavBarStoreImpl) overviewProxyService3.mNavBarStore).handleEvent(overviewProxyService3, new EventTypeFactory.EventType.StartBottomGestureHintVI(readInt2));
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 103:
                                                                            int readInt3 = parcel.readInt();
                                                                            int readInt4 = parcel.readInt();
                                                                            int readInt5 = parcel.readInt();
                                                                            long readLong = parcel.readLong();
                                                                            parcel.enforceNoDataAvail();
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass110 = (OverviewProxyService.AnonymousClass1) this;
                                                                            if (BasicRune.NAVBAR_GESTURE) {
                                                                                OverviewProxyService overviewProxyService4 = OverviewProxyService.this;
                                                                                ((NavBarStoreImpl) overviewProxyService4.mNavBarStore).handleEvent(overviewProxyService4, new EventTypeFactory.EventType.MoveBottomGestureHintDistance(readInt3, readInt4, readInt5, readLong));
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 104:
                                                                            if (((OverviewProxyService.AnonymousClass1) this).verifyCaller("notifyOnLongPressRecentsWithMultiStar")) {
                                                                                clearCallingIdentity = Binder.clearCallingIdentity();
                                                                                try {
                                                                                    ((MultiStarManager) MultiStarManager.sInstance.get()).getClass();
                                                                                    PluginMultiStar pluginMultiStar = MultiStarManager.mPluginMultiStar;
                                                                                    if (pluginMultiStar != null) {
                                                                                        MultiStarManager.sRecentKeyConsumed = pluginMultiStar.onLongPressRecents();
                                                                                    }
                                                                                } finally {
                                                                                }
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 105:
                                                                            final OverviewProxyService.AnonymousClass1 anonymousClass111 = (OverviewProxyService.AnonymousClass1) this;
                                                                            anonymousClass111.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    switch (i3) {
                                                                                        case 0:
                                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                                            return;
                                                                                        case 1:
                                                                                            ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                            int size = arrayList.size();
                                                                                            while (true) {
                                                                                                size--;
                                                                                                if (size >= 0) {
                                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                                } else {
                                                                                                    return;
                                                                                                }
                                                                                            }
                                                                                        case 2:
                                                                                            ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                                            return;
                                                                                        case 3:
                                                                                            ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                            int size2 = arrayList2.size();
                                                                                            while (true) {
                                                                                                size2--;
                                                                                                if (size2 >= 0) {
                                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                                } else {
                                                                                                    return;
                                                                                                }
                                                                                            }
                                                                                        case 4:
                                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                                            return;
                                                                                        case 5:
                                                                                            OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass111;
                                                                                            anonymousClass132.sendEvent(0);
                                                                                            anonymousClass132.sendEvent(1);
                                                                                            return;
                                                                                        case 6:
                                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                                            return;
                                                                                        case 7:
                                                                                            ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                                            return;
                                                                                        case 8:
                                                                                            OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                                            return;
                                                                                        default:
                                                                                            OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass111;
                                                                                            anonymousClass142.getClass();
                                                                                            Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                                            intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                                            intent.addFlags(268468224);
                                                                                            OverviewProxyService overviewProxyService5 = OverviewProxyService.this;
                                                                                            overviewProxyService5.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService5.mUserTracker).getUserHandle());
                                                                                            return;
                                                                                    }
                                                                                }
                                                                            }, "notifyTaskbarNavigationBarInitialized");
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 106:
                                                                            final OverviewProxyService.AnonymousClass1 anonymousClass112 = (OverviewProxyService.AnonymousClass1) this;
                                                                            final int i8 = 3;
                                                                            anonymousClass112.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    switch (i8) {
                                                                                        case 0:
                                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                                            return;
                                                                                        case 1:
                                                                                            ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                            int size = arrayList.size();
                                                                                            while (true) {
                                                                                                size--;
                                                                                                if (size >= 0) {
                                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                                } else {
                                                                                                    return;
                                                                                                }
                                                                                            }
                                                                                        case 2:
                                                                                            ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                                            return;
                                                                                        case 3:
                                                                                            ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                            int size2 = arrayList2.size();
                                                                                            while (true) {
                                                                                                size2--;
                                                                                                if (size2 >= 0) {
                                                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                                } else {
                                                                                                    return;
                                                                                                }
                                                                                            }
                                                                                        case 4:
                                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                                            return;
                                                                                        case 5:
                                                                                            OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass112;
                                                                                            anonymousClass132.sendEvent(0);
                                                                                            anonymousClass132.sendEvent(1);
                                                                                            return;
                                                                                        case 6:
                                                                                            OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                                            return;
                                                                                        case 7:
                                                                                            ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                                            return;
                                                                                        case 8:
                                                                                            OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                                            return;
                                                                                        default:
                                                                                            OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass112;
                                                                                            anonymousClass142.getClass();
                                                                                            Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                                            intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                                            intent.addFlags(268468224);
                                                                                            OverviewProxyService overviewProxyService5 = OverviewProxyService.this;
                                                                                            overviewProxyService5.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService5.mUserTracker).getUserHandle());
                                                                                            return;
                                                                                    }
                                                                                }
                                                                            }, "notifyTaskbarSPluginButtonClicked");
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 107:
                                                                            boolean readBoolean4 = parcel.readBoolean();
                                                                            parcel.enforceNoDataAvail();
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass113 = (OverviewProxyService.AnonymousClass1) this;
                                                                            FgsManagerController fgsManagerController = OverviewProxyService.this.mFgsManagerController;
                                                                            if (fgsManagerController != null) {
                                                                                if (readBoolean4) {
                                                                                    OverviewProxyService$1$$ExternalSyntheticLambda4 overviewProxyService$1$$ExternalSyntheticLambda4 = anonymousClass113.mOnNumberOfPackagesChangedListener;
                                                                                    FgsManagerControllerImpl fgsManagerControllerImpl = (FgsManagerControllerImpl) fgsManagerController;
                                                                                    synchronized (fgsManagerControllerImpl.lock) {
                                                                                        fgsManagerControllerImpl.onNumberOfPackagesChangedListeners.add(overviewProxyService$1$$ExternalSyntheticLambda4);
                                                                                    }
                                                                                    fgsManagerControllerImpl.secFgsManagerController.log("addOnNumberOfPackagesChangedListener");
                                                                                    OverviewProxyService overviewProxyService5 = OverviewProxyService.this;
                                                                                    int numRunningPackages = ((FgsManagerControllerImpl) overviewProxyService5.mFgsManagerController).getNumRunningPackages();
                                                                                    try {
                                                                                        IOverviewProxy iOverviewProxy = overviewProxyService5.mOverviewProxy;
                                                                                        if (iOverviewProxy != null) {
                                                                                            ((IOverviewProxy.Stub.Proxy) iOverviewProxy).onNumberOfVisibleFgsChanged(numRunningPackages);
                                                                                        }
                                                                                    } catch (RemoteException e) {
                                                                                        Log.e("OverviewProxyService", "Failed to call onNumberOfVisibleFgsChanged().", e);
                                                                                    }
                                                                                } else {
                                                                                    OverviewProxyService$1$$ExternalSyntheticLambda4 overviewProxyService$1$$ExternalSyntheticLambda42 = anonymousClass113.mOnNumberOfPackagesChangedListener;
                                                                                    FgsManagerControllerImpl fgsManagerControllerImpl2 = (FgsManagerControllerImpl) fgsManagerController;
                                                                                    fgsManagerControllerImpl2.secFgsManagerController.log("removeOnNumberOfPackagesChangedListener");
                                                                                    synchronized (fgsManagerControllerImpl2.lock) {
                                                                                        fgsManagerControllerImpl2.onNumberOfPackagesChangedListeners.remove(overviewProxyService$1$$ExternalSyntheticLambda42);
                                                                                    }
                                                                                }
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 108:
                                                                            final OverviewProxyService.AnonymousClass1 anonymousClass114 = (OverviewProxyService.AnonymousClass1) this;
                                                                            if (OverviewProxyService.this.mFgsManagerController != null) {
                                                                                anonymousClass114.mMainHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        switch (i5) {
                                                                                            case 0:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                                                return;
                                                                                            case 1:
                                                                                                ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size = arrayList.size();
                                                                                                while (true) {
                                                                                                    size--;
                                                                                                    if (size >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 2:
                                                                                                ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                                                return;
                                                                                            case 3:
                                                                                                ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size2 = arrayList2.size();
                                                                                                while (true) {
                                                                                                    size2--;
                                                                                                    if (size2 >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 4:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                                                return;
                                                                                            case 5:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass114;
                                                                                                anonymousClass132.sendEvent(0);
                                                                                                anonymousClass132.sendEvent(1);
                                                                                                return;
                                                                                            case 6:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                                                return;
                                                                                            case 7:
                                                                                                ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                                                return;
                                                                                            case 8:
                                                                                                OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                                                return;
                                                                                            default:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass114;
                                                                                                anonymousClass142.getClass();
                                                                                                Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                                                intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                                                intent.addFlags(268468224);
                                                                                                OverviewProxyService overviewProxyService52 = OverviewProxyService.this;
                                                                                                overviewProxyService52.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService52.mUserTracker).getUserHandle());
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 109:
                                                                            final OverviewProxyService.AnonymousClass1 anonymousClass115 = (OverviewProxyService.AnonymousClass1) this;
                                                                            Log.d("OverviewProxyService", "startSearcle");
                                                                            if (BasicRune.SEARCLE) {
                                                                                final int i9 = 4;
                                                                                anonymousClass115.mMainHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        switch (i9) {
                                                                                            case 0:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                                                return;
                                                                                            case 1:
                                                                                                ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size = arrayList.size();
                                                                                                while (true) {
                                                                                                    size--;
                                                                                                    if (size >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 2:
                                                                                                ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                                                return;
                                                                                            case 3:
                                                                                                ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size2 = arrayList2.size();
                                                                                                while (true) {
                                                                                                    size2--;
                                                                                                    if (size2 >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 4:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                                                return;
                                                                                            case 5:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass115;
                                                                                                anonymousClass132.sendEvent(0);
                                                                                                anonymousClass132.sendEvent(1);
                                                                                                return;
                                                                                            case 6:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                                                return;
                                                                                            case 7:
                                                                                                ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                                                return;
                                                                                            case 8:
                                                                                                OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                                                return;
                                                                                            default:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass115;
                                                                                                anonymousClass142.getClass();
                                                                                                Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                                                intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                                                intent.addFlags(268468224);
                                                                                                OverviewProxyService overviewProxyService52 = OverviewProxyService.this;
                                                                                                overviewProxyService52.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService52.mUserTracker).getUserHandle());
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 110:
                                                                            final OverviewProxyService.AnonymousClass1 anonymousClass116 = (OverviewProxyService.AnonymousClass1) this;
                                                                            Log.d("OverviewProxyService", "invokeSearcle");
                                                                            if (BasicRune.SEARCLE) {
                                                                                anonymousClass116.mMainHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        switch (i6) {
                                                                                            case 0:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                                                return;
                                                                                            case 1:
                                                                                                ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size = arrayList.size();
                                                                                                while (true) {
                                                                                                    size--;
                                                                                                    if (size >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 2:
                                                                                                ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                                                return;
                                                                                            case 3:
                                                                                                ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size2 = arrayList2.size();
                                                                                                while (true) {
                                                                                                    size2--;
                                                                                                    if (size2 >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 4:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                                                return;
                                                                                            case 5:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass116;
                                                                                                anonymousClass132.sendEvent(0);
                                                                                                anonymousClass132.sendEvent(1);
                                                                                                return;
                                                                                            case 6:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                                                return;
                                                                                            case 7:
                                                                                                ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                                                return;
                                                                                            case 8:
                                                                                                OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                                                return;
                                                                                            default:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass116;
                                                                                                anonymousClass142.getClass();
                                                                                                Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                                                intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                                                intent.addFlags(268468224);
                                                                                                OverviewProxyService overviewProxyService52 = OverviewProxyService.this;
                                                                                                overviewProxyService52.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService52.mUserTracker).getUserHandle());
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 111:
                                                                            final OverviewProxyService.AnonymousClass1 anonymousClass117 = (OverviewProxyService.AnonymousClass1) this;
                                                                            Log.d("OverviewProxyService", "cancelSearcle");
                                                                            if (BasicRune.SEARCLE) {
                                                                                final int i10 = 6;
                                                                                anonymousClass117.mMainHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        switch (i10) {
                                                                                            case 0:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                                                return;
                                                                                            case 1:
                                                                                                ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size = arrayList.size();
                                                                                                while (true) {
                                                                                                    size--;
                                                                                                    if (size >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 2:
                                                                                                ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                                                return;
                                                                                            case 3:
                                                                                                ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size2 = arrayList2.size();
                                                                                                while (true) {
                                                                                                    size2--;
                                                                                                    if (size2 >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                            case 4:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                                                return;
                                                                                            case 5:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass117;
                                                                                                anonymousClass132.sendEvent(0);
                                                                                                anonymousClass132.sendEvent(1);
                                                                                                return;
                                                                                            case 6:
                                                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                                                return;
                                                                                            case 7:
                                                                                                ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                                                return;
                                                                                            case 8:
                                                                                                OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                                                return;
                                                                                            default:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass117;
                                                                                                anonymousClass142.getClass();
                                                                                                Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                                                intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                                                intent.addFlags(268468224);
                                                                                                OverviewProxyService overviewProxyService52 = OverviewProxyService.this;
                                                                                                overviewProxyService52.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService52.mUserTracker).getUserHandle());
                                                                                                return;
                                                                                        }
                                                                                    }
                                                                                });
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        case 112:
                                                                            final String readString = parcel.readString();
                                                                            parcel.enforceNoDataAvail();
                                                                            final OverviewProxyService.AnonymousClass1 anonymousClass118 = (OverviewProxyService.AnonymousClass1) this;
                                                                            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("invokeSearcleWithPackageName packageName = ", readString, "OverviewProxyService");
                                                                            if (BasicRune.SEARCLE) {
                                                                                anonymousClass118.mMainHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda0
                                                                                    @Override // java.lang.Runnable
                                                                                    public final void run() {
                                                                                        switch (i6) {
                                                                                            case 0:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass119 = anonymousClass118;
                                                                                                String str = (String) readString;
                                                                                                SearcleManager searcleManager = OverviewProxyService.this.mSearcleManager;
                                                                                                searcleManager.invokedPackageName = str;
                                                                                                searcleManager.startSearcleByHomeKey(false, true);
                                                                                                return;
                                                                                            case 1:
                                                                                                final OverviewProxyService.AnonymousClass1 anonymousClass120 = anonymousClass118;
                                                                                                final MotionEvent motionEvent = (MotionEvent) readString;
                                                                                                ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new Consumer() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda10
                                                                                                    @Override // java.util.function.Consumer
                                                                                                    public final void accept(Object obj) {
                                                                                                        ShadeViewController shadeViewController;
                                                                                                        final OverviewProxyService.AnonymousClass1 anonymousClass121 = OverviewProxyService.AnonymousClass1.this;
                                                                                                        final MotionEvent motionEvent2 = motionEvent;
                                                                                                        final CentralSurfaces centralSurfaces = (CentralSurfaces) obj;
                                                                                                        anonymousClass121.getClass();
                                                                                                        if (motionEvent2.getActionMasked() == 0 && (shadeViewController = ((CentralSurfacesImpl) centralSurfaces).getShadeViewController()) != null) {
                                                                                                            NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) shadeViewController;
                                                                                                            LatencyTracker latencyTracker = notificationPanelViewController.mLatencyTracker;
                                                                                                            if (latencyTracker.isEnabled()) {
                                                                                                                latencyTracker.onActionStart(0);
                                                                                                                notificationPanelViewController.mExpandLatencyTracking = true;
                                                                                                            }
                                                                                                        }
                                                                                                        OverviewProxyService.this.mHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda12
                                                                                                            @Override // java.lang.Runnable
                                                                                                            public final void run() {
                                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass122 = OverviewProxyService.AnonymousClass1.this;
                                                                                                                MotionEvent motionEvent3 = motionEvent2;
                                                                                                                CentralSurfaces centralSurfaces2 = centralSurfaces;
                                                                                                                anonymousClass122.getClass();
                                                                                                                int actionMasked = motionEvent3.getActionMasked();
                                                                                                                boolean z = false;
                                                                                                                if (actionMasked == 0) {
                                                                                                                    Log.d("OverviewProxyService", "onStatusBarMotionEvent ACTION_DOWN");
                                                                                                                    OverviewProxyService overviewProxyService6 = OverviewProxyService.this;
                                                                                                                    overviewProxyService6.mInputFocusTransferStarted = true;
                                                                                                                    overviewProxyService6.mInputFocusTransferStartY = motionEvent3.getY();
                                                                                                                    OverviewProxyService.this.mInputFocusTransferStartMillis = motionEvent3.getEventTime();
                                                                                                                    CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) centralSurfaces2;
                                                                                                                    centralSurfacesImpl.onInputFocusTransfer(0.0f, OverviewProxyService.this.mInputFocusTransferStarted, false);
                                                                                                                    if (QpRune.QUICK_TABLET_HORIZONTAL_PANEL_POSITION) {
                                                                                                                        centralSurfacesImpl.setNextUpdateHorizontalPosition(motionEvent3.getX());
                                                                                                                    }
                                                                                                                }
                                                                                                                if (actionMasked == 1 || actionMasked == 3) {
                                                                                                                    Log.d("OverviewProxyService", "onStatusBarMotionEvent ACTION_UP / ACTION_CANCEL");
                                                                                                                    OverviewProxyService.this.mInputFocusTransferStarted = false;
                                                                                                                    float y = motionEvent3.getY() - OverviewProxyService.this.mInputFocusTransferStartY;
                                                                                                                    long eventTime = motionEvent3.getEventTime();
                                                                                                                    OverviewProxyService overviewProxyService7 = OverviewProxyService.this;
                                                                                                                    float f = y / ((float) (eventTime - overviewProxyService7.mInputFocusTransferStartMillis));
                                                                                                                    boolean z2 = overviewProxyService7.mInputFocusTransferStarted;
                                                                                                                    if (actionMasked == 3) {
                                                                                                                        z = true;
                                                                                                                    }
                                                                                                                    ((CentralSurfacesImpl) centralSurfaces2).onInputFocusTransfer(f, z2, z);
                                                                                                                }
                                                                                                                motionEvent3.recycle();
                                                                                                            }
                                                                                                        });
                                                                                                    }
                                                                                                });
                                                                                                return;
                                                                                            default:
                                                                                                OverviewProxyService.AnonymousClass1 anonymousClass121 = anonymousClass118;
                                                                                                Bundle bundle = (Bundle) readString;
                                                                                                ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                                                int size = arrayList.size();
                                                                                                while (true) {
                                                                                                    size--;
                                                                                                    if (size >= 0) {
                                                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).startAssistant(bundle);
                                                                                                    } else {
                                                                                                        return;
                                                                                                    }
                                                                                                }
                                                                                        }
                                                                                    }
                                                                                });
                                                                            }
                                                                            parcel2.writeNoException();
                                                                            break;
                                                                        default:
                                                                            return super.onTransact(i, parcel, parcel2, i2);
                                                                    }
                                                            }
                                                    }
                                                } else {
                                                    boolean readBoolean5 = parcel.readBoolean();
                                                    parcel.enforceNoDataAvail();
                                                    OverviewProxyService.AnonymousClass1 anonymousClass119 = (OverviewProxyService.AnonymousClass1) this;
                                                    anonymousClass119.verifyCallerAndClearCallingIdentityPostMain(new OverviewProxyService$1$$ExternalSyntheticLambda5(anonymousClass119, readBoolean5, 0), "setHomeRotationEnabled");
                                                }
                                            } else {
                                                final OverviewProxyService.AnonymousClass1 anonymousClass120 = (OverviewProxyService.AnonymousClass1) this;
                                                final int i11 = 5;
                                                anonymousClass120.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        switch (i11) {
                                                            case 0:
                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                                return;
                                                            case 1:
                                                                ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                int size = arrayList.size();
                                                                while (true) {
                                                                    size--;
                                                                    if (size >= 0) {
                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                                    } else {
                                                                        return;
                                                                    }
                                                                }
                                                            case 2:
                                                                ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                                return;
                                                            case 3:
                                                                ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                                int size2 = arrayList2.size();
                                                                while (true) {
                                                                    size2--;
                                                                    if (size2 >= 0) {
                                                                        ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                                    } else {
                                                                        return;
                                                                    }
                                                                }
                                                            case 4:
                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                                return;
                                                            case 5:
                                                                OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass120;
                                                                anonymousClass132.sendEvent(0);
                                                                anonymousClass132.sendEvent(1);
                                                                return;
                                                            case 6:
                                                                OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                                return;
                                                            case 7:
                                                                ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                                return;
                                                            case 8:
                                                                OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                                return;
                                                            default:
                                                                OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass120;
                                                                anonymousClass142.getClass();
                                                                Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                                intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                                intent.addFlags(268468224);
                                                                OverviewProxyService overviewProxyService52 = OverviewProxyService.this;
                                                                overviewProxyService52.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService52.mUserTracker).getUserHandle());
                                                                return;
                                                        }
                                                    }
                                                }, "onBackPressed");
                                            }
                                        } else {
                                            final Bundle bundle = (Bundle) parcel.readTypedObject(Bundle.CREATOR);
                                            parcel.enforceNoDataAvail();
                                            final OverviewProxyService.AnonymousClass1 anonymousClass121 = (OverviewProxyService.AnonymousClass1) this;
                                            anonymousClass121.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda0
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    switch (i4) {
                                                        case 0:
                                                            OverviewProxyService.AnonymousClass1 anonymousClass1192 = anonymousClass121;
                                                            String str = (String) bundle;
                                                            SearcleManager searcleManager = OverviewProxyService.this.mSearcleManager;
                                                            searcleManager.invokedPackageName = str;
                                                            searcleManager.startSearcleByHomeKey(false, true);
                                                            return;
                                                        case 1:
                                                            final OverviewProxyService.AnonymousClass1 anonymousClass1202 = anonymousClass121;
                                                            final MotionEvent motionEvent = (MotionEvent) bundle;
                                                            ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new Consumer() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda10
                                                                @Override // java.util.function.Consumer
                                                                public final void accept(Object obj) {
                                                                    ShadeViewController shadeViewController;
                                                                    final OverviewProxyService.AnonymousClass1 anonymousClass1212 = OverviewProxyService.AnonymousClass1.this;
                                                                    final MotionEvent motionEvent2 = motionEvent;
                                                                    final CentralSurfaces centralSurfaces = (CentralSurfaces) obj;
                                                                    anonymousClass1212.getClass();
                                                                    if (motionEvent2.getActionMasked() == 0 && (shadeViewController = ((CentralSurfacesImpl) centralSurfaces).getShadeViewController()) != null) {
                                                                        NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) shadeViewController;
                                                                        LatencyTracker latencyTracker = notificationPanelViewController.mLatencyTracker;
                                                                        if (latencyTracker.isEnabled()) {
                                                                            latencyTracker.onActionStart(0);
                                                                            notificationPanelViewController.mExpandLatencyTracking = true;
                                                                        }
                                                                    }
                                                                    OverviewProxyService.this.mHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda12
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            OverviewProxyService.AnonymousClass1 anonymousClass122 = OverviewProxyService.AnonymousClass1.this;
                                                                            MotionEvent motionEvent3 = motionEvent2;
                                                                            CentralSurfaces centralSurfaces2 = centralSurfaces;
                                                                            anonymousClass122.getClass();
                                                                            int actionMasked = motionEvent3.getActionMasked();
                                                                            boolean z = false;
                                                                            if (actionMasked == 0) {
                                                                                Log.d("OverviewProxyService", "onStatusBarMotionEvent ACTION_DOWN");
                                                                                OverviewProxyService overviewProxyService6 = OverviewProxyService.this;
                                                                                overviewProxyService6.mInputFocusTransferStarted = true;
                                                                                overviewProxyService6.mInputFocusTransferStartY = motionEvent3.getY();
                                                                                OverviewProxyService.this.mInputFocusTransferStartMillis = motionEvent3.getEventTime();
                                                                                CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) centralSurfaces2;
                                                                                centralSurfacesImpl.onInputFocusTransfer(0.0f, OverviewProxyService.this.mInputFocusTransferStarted, false);
                                                                                if (QpRune.QUICK_TABLET_HORIZONTAL_PANEL_POSITION) {
                                                                                    centralSurfacesImpl.setNextUpdateHorizontalPosition(motionEvent3.getX());
                                                                                }
                                                                            }
                                                                            if (actionMasked == 1 || actionMasked == 3) {
                                                                                Log.d("OverviewProxyService", "onStatusBarMotionEvent ACTION_UP / ACTION_CANCEL");
                                                                                OverviewProxyService.this.mInputFocusTransferStarted = false;
                                                                                float y = motionEvent3.getY() - OverviewProxyService.this.mInputFocusTransferStartY;
                                                                                long eventTime = motionEvent3.getEventTime();
                                                                                OverviewProxyService overviewProxyService7 = OverviewProxyService.this;
                                                                                float f = y / ((float) (eventTime - overviewProxyService7.mInputFocusTransferStartMillis));
                                                                                boolean z2 = overviewProxyService7.mInputFocusTransferStarted;
                                                                                if (actionMasked == 3) {
                                                                                    z = true;
                                                                                }
                                                                                ((CentralSurfacesImpl) centralSurfaces2).onInputFocusTransfer(f, z2, z);
                                                                            }
                                                                            motionEvent3.recycle();
                                                                        }
                                                                    });
                                                                }
                                                            });
                                                            return;
                                                        default:
                                                            OverviewProxyService.AnonymousClass1 anonymousClass1212 = anonymousClass121;
                                                            Bundle bundle2 = (Bundle) bundle;
                                                            ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                            int size = arrayList.size();
                                                            while (true) {
                                                                size--;
                                                                if (size >= 0) {
                                                                    ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).startAssistant(bundle2);
                                                                } else {
                                                                    return;
                                                                }
                                                            }
                                                    }
                                                }
                                            }, "startAssistant");
                                        }
                                    } else {
                                        final float readFloat2 = parcel.readFloat();
                                        parcel.enforceNoDataAvail();
                                        final OverviewProxyService.AnonymousClass1 anonymousClass122 = (OverviewProxyService.AnonymousClass1) this;
                                        anonymousClass122.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda6
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                switch (i3) {
                                                    case 0:
                                                        OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass122;
                                                        float f = readFloat2;
                                                        ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                        int size = arrayList.size();
                                                        while (true) {
                                                            size--;
                                                            if (size >= 0) {
                                                                ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onAssistantGestureCompletion(f);
                                                            } else {
                                                                return;
                                                            }
                                                        }
                                                    default:
                                                        OverviewProxyService.AnonymousClass1 anonymousClass152 = anonymousClass122;
                                                        float f2 = readFloat2;
                                                        ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                        int size2 = arrayList2.size();
                                                        while (true) {
                                                            size2--;
                                                            if (size2 >= 0) {
                                                                ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onAssistantProgress(f2);
                                                            } else {
                                                                return;
                                                            }
                                                        }
                                                }
                                            }
                                        }, "onAssistantProgress");
                                    }
                                } else {
                                    final OverviewProxyService.AnonymousClass1 anonymousClass123 = (OverviewProxyService.AnonymousClass1) this;
                                    final int i12 = 8;
                                    Runnable runnable2 = new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda3
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            switch (i12) {
                                                case 0:
                                                    OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, true);
                                                    return;
                                                case 1:
                                                    ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                    int size = arrayList.size();
                                                    while (true) {
                                                        size--;
                                                        if (size >= 0) {
                                                            ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onInitializedTaskbarNavigationBar();
                                                        } else {
                                                            return;
                                                        }
                                                    }
                                                case 2:
                                                    ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new OverviewProxyService$1$$ExternalSyntheticLambda11());
                                                    return;
                                                case 3:
                                                    ArrayList arrayList2 = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                    int size2 = arrayList2.size();
                                                    while (true) {
                                                        size2--;
                                                        if (size2 >= 0) {
                                                            ((OverviewProxyService.OverviewProxyListener) arrayList2.get(size2)).onTaskbarSPluginButtonClicked();
                                                        } else {
                                                            return;
                                                        }
                                                    }
                                                case 4:
                                                    OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(true, false);
                                                    return;
                                                case 5:
                                                    OverviewProxyService.AnonymousClass1 anonymousClass132 = anonymousClass123;
                                                    anonymousClass132.sendEvent(0);
                                                    anonymousClass132.sendEvent(1);
                                                    return;
                                                case 6:
                                                    OverviewProxyService.this.mSearcleManager.startSearcleByHomeKey(false, false);
                                                    return;
                                                case 7:
                                                    ((FgsManagerControllerImpl) OverviewProxyService.this.mFgsManagerController).showDialog();
                                                    return;
                                                case 8:
                                                    OverviewProxyService.this.mCommandQueue.handleSystemKey(new KeyEvent(0, IKnoxCustomManager.Stub.TRANSACTION_setBootingAnimationSub));
                                                    return;
                                                default:
                                                    OverviewProxyService.AnonymousClass1 anonymousClass142 = anonymousClass123;
                                                    anonymousClass142.getClass();
                                                    Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
                                                    intent.setClassName("android", AccessibilityButtonChooserActivity.class.getName());
                                                    intent.addFlags(268468224);
                                                    OverviewProxyService overviewProxyService52 = OverviewProxyService.this;
                                                    overviewProxyService52.mContext.startActivityAsUser(intent, ((UserTrackerImpl) overviewProxyService52.mUserTracker).getUserHandle());
                                                    return;
                                            }
                                        }
                                    };
                                    if (anonymousClass123.verifyCaller("expandNotificationPanel")) {
                                        clearCallingIdentity = Binder.clearCallingIdentity();
                                        try {
                                            runnable2.run();
                                        } finally {
                                        }
                                    }
                                }
                            } else {
                                final int readInt6 = parcel.readInt();
                                parcel.enforceNoDataAvail();
                                final OverviewProxyService.AnonymousClass1 anonymousClass124 = (OverviewProxyService.AnonymousClass1) this;
                                anonymousClass124.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        switch (i3) {
                                            case 0:
                                                AccessibilityManager.getInstance(OverviewProxyService.this.mContext).notifyAccessibilityButtonClicked(readInt6);
                                                return;
                                            default:
                                                OverviewProxyService.AnonymousClass1 anonymousClass125 = anonymousClass124;
                                                int i13 = readInt6;
                                                ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                                int size = arrayList.size();
                                                while (true) {
                                                    size--;
                                                    if (size >= 0) {
                                                        ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).onPrioritizedRotation(i13);
                                                    } else {
                                                        return;
                                                    }
                                                }
                                        }
                                    }
                                }, "notifyPrioritizedRotation");
                            }
                        } else {
                            final MotionEvent motionEvent = (MotionEvent) parcel.readTypedObject(MotionEvent.CREATOR);
                            parcel.enforceNoDataAvail();
                            final OverviewProxyService.AnonymousClass1 anonymousClass125 = (OverviewProxyService.AnonymousClass1) this;
                            Log.d("OverviewProxyService", "onStatusBarMotionEvent " + motionEvent.getAction());
                            Runnable runnable3 = new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i3) {
                                        case 0:
                                            OverviewProxyService.AnonymousClass1 anonymousClass1192 = anonymousClass125;
                                            String str = (String) motionEvent;
                                            SearcleManager searcleManager = OverviewProxyService.this.mSearcleManager;
                                            searcleManager.invokedPackageName = str;
                                            searcleManager.startSearcleByHomeKey(false, true);
                                            return;
                                        case 1:
                                            final OverviewProxyService.AnonymousClass1 anonymousClass1202 = anonymousClass125;
                                            final MotionEvent motionEvent2 = (MotionEvent) motionEvent;
                                            ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new Consumer() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda10
                                                @Override // java.util.function.Consumer
                                                public final void accept(Object obj) {
                                                    ShadeViewController shadeViewController;
                                                    final OverviewProxyService.AnonymousClass1 anonymousClass1212 = OverviewProxyService.AnonymousClass1.this;
                                                    final MotionEvent motionEvent22 = motionEvent2;
                                                    final CentralSurfaces centralSurfaces = (CentralSurfaces) obj;
                                                    anonymousClass1212.getClass();
                                                    if (motionEvent22.getActionMasked() == 0 && (shadeViewController = ((CentralSurfacesImpl) centralSurfaces).getShadeViewController()) != null) {
                                                        NotificationPanelViewController notificationPanelViewController = (NotificationPanelViewController) shadeViewController;
                                                        LatencyTracker latencyTracker = notificationPanelViewController.mLatencyTracker;
                                                        if (latencyTracker.isEnabled()) {
                                                            latencyTracker.onActionStart(0);
                                                            notificationPanelViewController.mExpandLatencyTracking = true;
                                                        }
                                                    }
                                                    OverviewProxyService.this.mHandler.post(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda12
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            OverviewProxyService.AnonymousClass1 anonymousClass1222 = OverviewProxyService.AnonymousClass1.this;
                                                            MotionEvent motionEvent3 = motionEvent22;
                                                            CentralSurfaces centralSurfaces2 = centralSurfaces;
                                                            anonymousClass1222.getClass();
                                                            int actionMasked = motionEvent3.getActionMasked();
                                                            boolean z = false;
                                                            if (actionMasked == 0) {
                                                                Log.d("OverviewProxyService", "onStatusBarMotionEvent ACTION_DOWN");
                                                                OverviewProxyService overviewProxyService6 = OverviewProxyService.this;
                                                                overviewProxyService6.mInputFocusTransferStarted = true;
                                                                overviewProxyService6.mInputFocusTransferStartY = motionEvent3.getY();
                                                                OverviewProxyService.this.mInputFocusTransferStartMillis = motionEvent3.getEventTime();
                                                                CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) centralSurfaces2;
                                                                centralSurfacesImpl.onInputFocusTransfer(0.0f, OverviewProxyService.this.mInputFocusTransferStarted, false);
                                                                if (QpRune.QUICK_TABLET_HORIZONTAL_PANEL_POSITION) {
                                                                    centralSurfacesImpl.setNextUpdateHorizontalPosition(motionEvent3.getX());
                                                                }
                                                            }
                                                            if (actionMasked == 1 || actionMasked == 3) {
                                                                Log.d("OverviewProxyService", "onStatusBarMotionEvent ACTION_UP / ACTION_CANCEL");
                                                                OverviewProxyService.this.mInputFocusTransferStarted = false;
                                                                float y = motionEvent3.getY() - OverviewProxyService.this.mInputFocusTransferStartY;
                                                                long eventTime = motionEvent3.getEventTime();
                                                                OverviewProxyService overviewProxyService7 = OverviewProxyService.this;
                                                                float f = y / ((float) (eventTime - overviewProxyService7.mInputFocusTransferStartMillis));
                                                                boolean z2 = overviewProxyService7.mInputFocusTransferStarted;
                                                                if (actionMasked == 3) {
                                                                    z = true;
                                                                }
                                                                ((CentralSurfacesImpl) centralSurfaces2).onInputFocusTransfer(f, z2, z);
                                                            }
                                                            motionEvent3.recycle();
                                                        }
                                                    });
                                                }
                                            });
                                            return;
                                        default:
                                            OverviewProxyService.AnonymousClass1 anonymousClass1212 = anonymousClass125;
                                            Bundle bundle2 = (Bundle) motionEvent;
                                            ArrayList arrayList = (ArrayList) OverviewProxyService.this.mConnectionCallbacks;
                                            int size = arrayList.size();
                                            while (true) {
                                                size--;
                                                if (size >= 0) {
                                                    ((OverviewProxyService.OverviewProxyListener) arrayList.get(size)).startAssistant(bundle2);
                                                } else {
                                                    return;
                                                }
                                            }
                                    }
                                }
                            };
                            if (anonymousClass125.verifyCaller("onStatusBarMotionEvent")) {
                                clearCallingIdentity = Binder.clearCallingIdentity();
                                try {
                                    runnable3.run();
                                } finally {
                                }
                            }
                        }
                    } else {
                        boolean readBoolean6 = parcel.readBoolean();
                        parcel.enforceNoDataAvail();
                        OverviewProxyService.AnonymousClass1 anonymousClass126 = (OverviewProxyService.AnonymousClass1) this;
                        anonymousClass126.verifyCallerAndClearCallingIdentityPostMain(new OverviewProxyService$1$$ExternalSyntheticLambda5(anonymousClass126, readBoolean6, 2), "onOverviewShown");
                    }
                } else {
                    final int readInt7 = parcel.readInt();
                    final boolean readBoolean7 = parcel.readBoolean();
                    final String readString2 = parcel.readString();
                    parcel.enforceNoDataAvail();
                    final OverviewProxyService.AnonymousClass1 anonymousClass127 = (OverviewProxyService.AnonymousClass1) this;
                    anonymousClass127.verifyCallerAndClearCallingIdentityPostMain(new Runnable() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            OverviewProxyService.AnonymousClass1 anonymousClass128 = OverviewProxyService.AnonymousClass1.this;
                            final int i13 = readInt7;
                            final boolean z = readBoolean7;
                            final String str = readString2;
                            ((Optional) OverviewProxyService.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new Consumer() { // from class: com.android.systemui.recents.OverviewProxyService$1$$ExternalSyntheticLambda9
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) ((CentralSurfaces) obj);
                                    centralSurfacesImpl.showScreenPinningRequest(i13, str, z);
                                }
                            });
                        }
                    }, "startScreenPinning");
                }
                return true;
            }
            parcel2.writeString("com.android.systemui.shared.recents.ISystemUiProxy");
            return true;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }
    }
}
