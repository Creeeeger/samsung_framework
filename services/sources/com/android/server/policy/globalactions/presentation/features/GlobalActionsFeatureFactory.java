package com.android.server.policy.globalactions.presentation.features;

import android.content.Context;
import com.samsung.android.globalactions.features.DataModeStrategy;
import com.samsung.android.globalactions.features.DesktopModeStrategy;
import com.samsung.android.globalactions.features.FOTAForceUpdateStrategy;
import com.samsung.android.globalactions.features.KnoxContainerStrategy;
import com.samsung.android.globalactions.features.LockdownModeStrategy;
import com.samsung.android.globalactions.features.NavigationBarStrategy;
import com.samsung.android.globalactions.features.ReserveBatteryModeStrategy;
import com.samsung.android.globalactions.features.SafetyCareStrategy;
import com.samsung.android.globalactions.features.SecFOTAForceUpdateStrategy;
import com.samsung.android.globalactions.features.SktStrategy;
import com.samsung.android.globalactions.presentation.SamsungGlobalActions;
import com.samsung.android.globalactions.presentation.features.FeatureFactory;
import com.samsung.android.globalactions.presentation.features.Features;
import com.samsung.android.globalactions.presentation.view.ExtendableGlobalActionsView;
import com.samsung.android.globalactions.presentation.viewmodel.DefaultActionViewModelFactory;
import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.DesktopModeManagerWrapper;
import com.samsung.android.globalactions.util.LogWrapper;
import com.samsung.android.globalactions.util.ResourcesWrapper;
import com.samsung.android.globalactions.util.SystemController;
import com.samsung.android.globalactions.util.ToastController;
import com.samsung.android.globalactions.util.UtilFactory;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class GlobalActionsFeatureFactory implements FeatureFactory {
    public ConditionChecker mConditionChecker;
    public Context mContext;
    public Features mFeatures;
    public UtilFactory mUtilFactory;
    public ExtendableGlobalActionsView mView;
    public DefaultActionViewModelFactory mViewModelFactory;

    public GlobalActionsFeatureFactory(Context context, ExtendableGlobalActionsView extendableGlobalActionsView, UtilFactory utilFactory, DefaultActionViewModelFactory defaultActionViewModelFactory, Features features, ConditionChecker conditionChecker) {
        this.mContext = context;
        this.mView = extendableGlobalActionsView;
        this.mUtilFactory = utilFactory;
        this.mViewModelFactory = defaultActionViewModelFactory;
        this.mFeatures = features;
        this.mConditionChecker = conditionChecker;
    }

    public List createInitializationStrategies(SamsungGlobalActions samsungGlobalActions) {
        ArrayList arrayList = new ArrayList();
        if (this.mFeatures.isEnabled("DESKTOP_MODE")) {
            arrayList.add(new DesktopModeStrategy(this.mContext, this.mView, (DesktopModeManagerWrapper) this.mUtilFactory.get(DesktopModeManagerWrapper.class), this.mConditionChecker));
        }
        if (this.mFeatures.isEnabled("SAFETY_CARE")) {
            arrayList.add(new SafetyCareStrategy(samsungGlobalActions, this.mConditionChecker, (LogWrapper) this.mUtilFactory.get(LogWrapper.class)));
        }
        if (this.mFeatures.isEnabled("KNOX_CONTAINER")) {
            arrayList.add(new KnoxContainerStrategy(samsungGlobalActions, this.mConditionChecker));
        }
        return arrayList;
    }

    public List createActionsCreationStrategies(SamsungGlobalActions samsungGlobalActions) {
        ArrayList arrayList = new ArrayList();
        if (this.mFeatures.isEnabled("DATA_MODE")) {
            arrayList.add(new DataModeStrategy(this.mViewModelFactory, this.mConditionChecker));
        }
        if (this.mFeatures.isEnabled("LOCKDOWN_MODE")) {
            arrayList.add(new LockdownModeStrategy(this.mViewModelFactory, this.mConditionChecker));
        }
        return arrayList;
    }

    public List createWindowDecorationStrategies(SamsungGlobalActions samsungGlobalActions) {
        ArrayList arrayList = new ArrayList();
        if (this.mFeatures.isEnabled("NAV_BAR")) {
            arrayList.add(new NavigationBarStrategy(this.mConditionChecker));
        }
        return arrayList;
    }

    public List createDisposingStrategies(SamsungGlobalActions samsungGlobalActions) {
        ArrayList arrayList = new ArrayList();
        if (this.mFeatures.isEnabled("DESKTOP_MODE")) {
            arrayList.add(new DesktopModeStrategy(this.mContext, this.mView, (DesktopModeManagerWrapper) this.mUtilFactory.get(DesktopModeManagerWrapper.class), this.mConditionChecker));
        }
        return arrayList;
    }

    public List createActionInteractionStrategies(String str) {
        ArrayList arrayList = new ArrayList();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 106858757:
                if (str.equals("power")) {
                    c = 0;
                    break;
                }
                break;
            case 1097506319:
                if (str.equals("restart")) {
                    c = 1;
                    break;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                arrayList.add(new SktStrategy(this.mConditionChecker, (ToastController) this.mUtilFactory.get(ToastController.class), (ResourcesWrapper) this.mUtilFactory.get(ResourcesWrapper.class), (LogWrapper) this.mUtilFactory.get(LogWrapper.class)));
            default:
                return arrayList;
        }
    }

    public List createDefaultActionsCreationStrategy(SamsungGlobalActions samsungGlobalActions, String str) {
        ArrayList arrayList = new ArrayList();
        if (str.equals("emergency")) {
            if (this.mFeatures.isEnabled("SAFETY_CARE")) {
                arrayList.add(new SafetyCareStrategy(samsungGlobalActions, this.mConditionChecker, (LogWrapper) this.mUtilFactory.get(LogWrapper.class)));
            }
            if (this.mFeatures.isEnabled("DESKTOP_MODE")) {
                arrayList.add(new DesktopModeStrategy(this.mContext, this.mView, (DesktopModeManagerWrapper) this.mUtilFactory.get(DesktopModeManagerWrapper.class), this.mConditionChecker));
            }
            if (this.mFeatures.isEnabled("RESERVE_BATTERY_MODE")) {
                arrayList.add(new ReserveBatteryModeStrategy(this.mConditionChecker));
            }
        }
        return arrayList;
    }

    public List createSecureConfirmStrategy(SamsungGlobalActions samsungGlobalActions, String str) {
        return new ArrayList();
    }

    public List createSoftwareUpdateStrategy(SamsungGlobalActions samsungGlobalActions, String str) {
        ArrayList arrayList = new ArrayList();
        if (str.equals("restart")) {
            arrayList.add(new FOTAForceUpdateStrategy(this.mConditionChecker, (SystemController) this.mUtilFactory.get(SystemController.class)));
            arrayList.add(new SecFOTAForceUpdateStrategy(this.mConditionChecker, (SystemController) this.mUtilFactory.get(SystemController.class)));
        }
        return arrayList;
    }

    public List createOnKeyListenerStrategy(SamsungGlobalActions samsungGlobalActions) {
        return new ArrayList();
    }

    public List createWindowManagerFunctionStrategy(SamsungGlobalActions samsungGlobalActions, String str) {
        return new ArrayList();
    }

    public List createViewInflateStrategy() {
        return new ArrayList();
    }
}
