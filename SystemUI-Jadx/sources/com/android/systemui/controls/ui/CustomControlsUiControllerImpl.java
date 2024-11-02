package com.android.systemui.controls.ui;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.Slog;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dumpable;
import com.android.systemui.Prefs;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.controls.ControlsMetricsLogger;
import com.android.systemui.controls.ControlsServiceInfo;
import com.android.systemui.controls.controller.ComponentInfo;
import com.android.systemui.controls.controller.ControlInfo;
import com.android.systemui.controls.controller.ControlsBindingControllerImpl;
import com.android.systemui.controls.controller.ControlsController;
import com.android.systemui.controls.controller.ControlsControllerImpl;
import com.android.systemui.controls.controller.CustomControlsController;
import com.android.systemui.controls.controller.StructureInfo;
import com.android.systemui.controls.controller.util.BadgeProvider;
import com.android.systemui.controls.controller.util.BadgeSubject;
import com.android.systemui.controls.management.ControlsListingController;
import com.android.systemui.controls.management.ControlsListingControllerImpl;
import com.android.systemui.controls.management.CustomControlsProviderSelectorActivity;
import com.android.systemui.controls.management.adapter.MainControlAdapter;
import com.android.systemui.controls.management.model.MainComponentModel;
import com.android.systemui.controls.management.model.MainControlModel;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.management.model.MainPanelModel;
import com.android.systemui.controls.panels.AuthorizedPanelsRepository;
import com.android.systemui.controls.panels.CustomSelectedComponentRepository;
import com.android.systemui.controls.panels.SelectedComponentRepository;
import com.android.systemui.controls.settings.ControlsSettingsDialogManagerImpl;
import com.android.systemui.controls.settings.ControlsSettingsRepository;
import com.android.systemui.controls.settings.ControlsSettingsRepositoryImpl;
import com.android.systemui.controls.ui.SelectedItem;
import com.android.systemui.controls.ui.fragment.MainFragment;
import com.android.systemui.controls.ui.fragment.NoAppFragment;
import com.android.systemui.controls.ui.fragment.NoFavoriteFragment;
import com.android.systemui.controls.ui.util.AUIFacade;
import com.android.systemui.controls.ui.util.ControlsActivityStarter;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.ui.util.LayoutUtil;
import com.android.systemui.controls.ui.util.SALogger;
import com.android.systemui.controls.ui.view.ControlsSpinner;
import com.android.systemui.controls.util.ControlsRuneWrapper;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.DumpUtilsKt;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.wm.shell.taskview.TaskViewFactoryController;
import com.android.wm.shell.taskview.TaskViewTaskController;
import com.android.wm.shell.taskview.TaskViewTaskController$$ExternalSyntheticLambda0;
import dagger.Lazy;
import java.io.PrintWriter;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomControlsUiControllerImpl implements ControlsUiController, CustomControlsUiController, Dumpable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Context activityContext;
    public final ActivityStarter activityStarter;
    public boolean adapterNeedToUpdateDataSet;
    public List allComponentInfo;
    public final AUIFacade auiFacade;
    public final AuthorizedPanelsRepository authorizedPanelsRepository;
    public final BadgeProvider badgeProvider;
    public final BadgeSubject badgeSubject;
    public final DelayableExecutor bgExecutor;
    public final MainComponentModel componentModel;
    public final Context context;
    public final ControlActionCoordinator controlActionCoordinator;
    public MainControlAdapter controlAdapter;
    public final ControlsActivityStarter controlsActivityStarter;
    public final Lazy controlsController;
    public final Lazy controlsListingController;
    public final ControlsMetricsLogger controlsMetricsLogger;
    public final CustomControlsUiControllerImpl$controlsPanelCallback$1 controlsPanelCallback;
    public final CustomControlsUiControllerImpl$controlsPositionChangedCallback$1 controlsPositionChangedCallback;
    public final ControlsRuneWrapper controlsRuneWrapper;
    public final ControlsSettingsRepository controlsSettingsRepository;
    public final ControlsUtil controlsUtil;
    public final CustomControlActionCoordinator customControlActionCoordinator;
    public final Lazy customControlsController;
    public final CustomSelectedComponentRepository customSelectedComponentRepository;
    public FragmentManager fragmentManager;
    public boolean hidden;
    public boolean isChanged;
    public boolean isShowOverLockscreenWhenLocked;
    public final KeyguardStateController keyguardStateController;
    public PendingIntent launchingPendingIntent;
    public final LayoutUtil layoutUtil;
    public ControlsListingController.ControlsListingCallback listingCallback;
    public final CustomControlsUiControllerImpl$special$$inlined$compareBy$1 localeComparator;
    public final LogWrapper logWrapper;
    public MainFragment mainFragment;
    public final List models;
    public NoAppFragment noAppFragment;
    public NoFavoriteFragment noFavoriteFragment;
    public Runnable onDismiss;
    public final CustomControlsUiControllerImpl$openAppButtonClickListener$1 openAppButtonClickListener;
    public ViewGroup parent;
    public final SALogger saLogger;
    public final SelectedComponentRepository selectedComponentRepository;
    public SelectedItem selectedItem;
    public List serviceInfos;
    public final SharedPreferences sharedPreferences;
    public final CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1 spinnerItemSelectionChangedCallback;
    public final CustomControlsUiControllerImpl$spinnerTouchCallback$1 spinnerTouchCallback;
    public PanelTaskViewController taskViewController;
    public final Optional taskViewFactory;
    public final DelayableExecutor uiExecutor;
    public final UserTracker userTracker;
    public List verificationStructureInfos;

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
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r1v17, types: [com.android.systemui.controls.ui.CustomControlsUiControllerImpl$openAppButtonClickListener$1] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.systemui.controls.ui.CustomControlsUiControllerImpl$special$$inlined$compareBy$1] */
    public CustomControlsUiControllerImpl(Lazy lazy, Lazy lazy2, Context context, DelayableExecutor delayableExecutor, DelayableExecutor delayableExecutor2, Lazy lazy3, SharedPreferences sharedPreferences, ControlActionCoordinator controlActionCoordinator, CustomControlActionCoordinator customControlActionCoordinator, ControlsMetricsLogger controlsMetricsLogger, LogWrapper logWrapper, LayoutUtil layoutUtil, ControlsUtil controlsUtil, ControlsActivityStarter controlsActivityStarter, AUIFacade aUIFacade, SALogger sALogger, BadgeSubject badgeSubject, BadgeProvider badgeProvider, ControlsRuneWrapper controlsRuneWrapper, ActivityStarter activityStarter, KeyguardStateController keyguardStateController, UserTracker userTracker, Optional<TaskViewFactoryController.TaskViewFactoryImpl> optional, ControlsSettingsRepository controlsSettingsRepository, AuthorizedPanelsRepository authorizedPanelsRepository, SelectedComponentRepository selectedComponentRepository, CustomSelectedComponentRepository customSelectedComponentRepository, DumpManager dumpManager) {
        this.controlsController = lazy;
        this.customControlsController = lazy2;
        this.context = context;
        this.uiExecutor = delayableExecutor;
        this.bgExecutor = delayableExecutor2;
        this.controlsListingController = lazy3;
        this.sharedPreferences = sharedPreferences;
        this.controlActionCoordinator = controlActionCoordinator;
        this.customControlActionCoordinator = customControlActionCoordinator;
        this.controlsMetricsLogger = controlsMetricsLogger;
        this.logWrapper = logWrapper;
        this.layoutUtil = layoutUtil;
        this.controlsUtil = controlsUtil;
        this.controlsActivityStarter = controlsActivityStarter;
        this.auiFacade = aUIFacade;
        this.saLogger = sALogger;
        this.badgeSubject = badgeSubject;
        this.badgeProvider = badgeProvider;
        this.controlsRuneWrapper = controlsRuneWrapper;
        this.activityStarter = activityStarter;
        this.keyguardStateController = keyguardStateController;
        this.userTracker = userTracker;
        this.taskViewFactory = optional;
        this.controlsSettingsRepository = controlsSettingsRepository;
        this.authorizedPanelsRepository = authorizedPanelsRepository;
        this.selectedComponentRepository = selectedComponentRepository;
        this.customSelectedComponentRepository = customSelectedComponentRepository;
        SelectedItem.Companion.getClass();
        this.selectedItem = SelectedItem.EMPTY_SELECTION_COMPONENT;
        final Collator collator = Collator.getInstance(context.getResources().getConfiguration().getLocales().get(0));
        this.localeComparator = new Comparator() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$special$$inlined$compareBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return collator.compare(((ControlsSelectionItem) obj).getAppName(), ((ControlsSelectionItem) obj2).getAppName());
            }
        };
        this.hidden = true;
        this.models = new ArrayList();
        ArrayList arrayList = new ArrayList();
        ComponentInfo.Companion.getClass();
        this.componentModel = new MainComponentModel(arrayList, ComponentInfo.EMPTY_COMPONENT, false);
        this.verificationStructureInfos = new ArrayList();
        this.serviceInfos = new ArrayList();
        DumpManager.registerDumpable$default(dumpManager, CustomControlsUiControllerImpl.class.getName(), this);
        this.controlsPositionChangedCallback = new CustomControlsUiControllerImpl$controlsPositionChangedCallback$1(this);
        this.controlsPanelCallback = new CustomControlsUiControllerImpl$controlsPanelCallback$1(this);
        this.openAppButtonClickListener = new View.OnClickListener() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$openAppButtonClickListener$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (BasicRune.CONTROLS_SAMSUNG_ANALYTICS) {
                    CustomControlsUiControllerImpl.this.saLogger.sendEvent(SALogger.Event.LaunchSmartThings.INSTANCE);
                }
                if (CustomControlsUiControllerImpl.this.controlsUtil.isSecureLocked()) {
                    final CustomControlsUiControllerImpl customControlsUiControllerImpl = CustomControlsUiControllerImpl.this;
                    customControlsUiControllerImpl.activityStarter.dismissKeyguardThenExecute(new ActivityStarter.OnDismissAction() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$openAppButtonClickListener$1.1
                        @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
                        public final boolean onDismiss() {
                            PendingIntent pendingIntent = CustomControlsUiControllerImpl.this.launchingPendingIntent;
                            if (pendingIntent != null) {
                                pendingIntent.send();
                                return true;
                            }
                            return true;
                        }
                    }, new Runnable() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$openAppButtonClickListener$1.2
                        @Override // java.lang.Runnable
                        public final void run() {
                        }
                    }, true);
                } else {
                    PendingIntent pendingIntent = CustomControlsUiControllerImpl.this.launchingPendingIntent;
                    if (pendingIntent != null) {
                        pendingIntent.send();
                    }
                }
            }
        };
        this.spinnerTouchCallback = new CustomControlsUiControllerImpl$spinnerTouchCallback$1(this);
        this.spinnerItemSelectionChangedCallback = new CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1(this);
    }

    public static final ControlsServiceInfo access$getComponent(CustomControlsUiControllerImpl customControlsUiControllerImpl, ComponentInfo componentInfo) {
        Object obj;
        Iterator it = customControlsUiControllerImpl.serviceInfos.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ControlsServiceInfo) obj).serviceInfo.applicationInfo.packageName, componentInfo.componentName.getPackageName())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (ControlsServiceInfo) obj;
    }

    public static final void access$listAdjustmentIfNeeded(CustomControlsUiControllerImpl customControlsUiControllerImpl, List list) {
        Object obj;
        int indexOf;
        CharSequence charSequence;
        ControlInfo controlInfo;
        boolean z;
        boolean z2;
        boolean z3;
        customControlsUiControllerImpl.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CharSequence charSequence2 = (CharSequence) it.next();
            List list2 = customControlsUiControllerImpl.models;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = (ArrayList) list2;
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (next instanceof MainControlModel) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                Object next2 = it3.next();
                if (Intrinsics.areEqual(((MainControlModel) next2).structure, charSequence2)) {
                    arrayList3.add(next2);
                }
            }
            Iterator it4 = arrayList3.iterator();
            while (true) {
                if (it4.hasNext()) {
                    obj = it4.next();
                    if (((MainControlModel) obj).getType() == MainModel.Type.STRUCTURE) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            MainControlModel mainControlModel = (MainControlModel) obj;
            ArrayList arrayList4 = new ArrayList();
            Iterator it5 = arrayList3.iterator();
            while (it5.hasNext()) {
                Object next3 = it5.next();
                if (((MainControlModel) next3).getType() == MainModel.Type.CONTROL) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    arrayList4.add(next3);
                }
            }
            ArrayList arrayList5 = new ArrayList();
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                Object next4 = it6.next();
                if (((MainControlModel) next4).getType() == MainModel.Type.SMALL_CONTROL) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    arrayList5.add(next4);
                }
            }
            LogWrapper logWrapper = customControlsUiControllerImpl.logWrapper;
            if (mainControlModel == null && ((!arrayList4.isEmpty()) || (BasicRune.CONTROLS_LAYOUT_TYPE && (!arrayList5.isEmpty())))) {
                if (true ^ arrayList4.isEmpty()) {
                    indexOf = arrayList2.indexOf(arrayList4.get(0));
                } else {
                    indexOf = arrayList2.indexOf(arrayList5.get(0));
                }
                arrayList2.add(indexOf, new MainControlModel(String.valueOf(charSequence2), null, false, 4, null));
                MainControlAdapter mainControlAdapter = customControlsUiControllerImpl.controlAdapter;
                if (mainControlAdapter != null) {
                    mainControlAdapter.notifyItemInserted(indexOf);
                }
                ArrayList arrayList6 = new ArrayList();
                for (Object obj2 : arrayList2) {
                    if (obj2 instanceof MainControlModel) {
                        arrayList6.add(obj2);
                    }
                }
                ArrayList arrayList7 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList6, 10));
                Iterator it7 = arrayList6.iterator();
                while (it7.hasNext()) {
                    ControlWithState controlWithState = ((MainControlModel) it7.next()).controlWithState;
                    if (controlWithState != null && (controlInfo = controlWithState.ci) != null) {
                        charSequence = controlInfo.controlTitle;
                    } else {
                        charSequence = null;
                    }
                    arrayList7.add(charSequence);
                }
                logWrapper.dp("CustomControlsUiControllerImpl", "listAdjustmentIfNeeded-notifyItemInserted: structureName=" + ((Object) charSequence2) + ", index=" + indexOf + ", models=" + arrayList7);
            }
            if (mainControlModel != null && arrayList4.isEmpty() && BasicRune.CONTROLS_LAYOUT_TYPE && arrayList5.isEmpty()) {
                int indexOf2 = arrayList2.indexOf(mainControlModel);
                arrayList2.remove(indexOf2);
                MainControlAdapter mainControlAdapter2 = customControlsUiControllerImpl.controlAdapter;
                if (mainControlAdapter2 != null) {
                    mainControlAdapter2.notifyItemRemoved(indexOf2);
                }
                logWrapper.dp("CustomControlsUiControllerImpl", "listAdjustmentIfNeeded-notifyItemRemoved: structureName=" + ((Object) charSequence2));
            }
        }
    }

    public static final void access$reload(CustomControlsUiControllerImpl customControlsUiControllerImpl, SelectedItem selectedItem) {
        if (!customControlsUiControllerImpl.hidden) {
            ControlsControllerImpl controlsControllerImpl = (ControlsControllerImpl) ((ControlsController) customControlsUiControllerImpl.controlsController.get());
            if (controlsControllerImpl.confirmAvailability()) {
                ((ControlsBindingControllerImpl) controlsControllerImpl.bindingController).unsubscribe();
            }
            PanelTaskViewController panelTaskViewController = customControlsUiControllerImpl.taskViewController;
            if (panelTaskViewController != null) {
                TaskViewTaskController taskViewTaskController = panelTaskViewController.taskView.mTaskViewTaskController;
                if (taskViewTaskController.mTaskToken == null) {
                    Slog.w("TaskViewTaskController", "Trying to remove a task that was never added? (no taskToken)");
                } else {
                    taskViewTaskController.mShellExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda0(taskViewTaskController, 4));
                }
            }
            customControlsUiControllerImpl.taskViewController = null;
            customControlsUiControllerImpl.allComponentInfo = ((ControlsControllerImpl) ((CustomControlsController) customControlsUiControllerImpl.customControlsController.get())).getActiveFavoritesComponent();
            customControlsUiControllerImpl.update(customControlsUiControllerImpl.serviceInfos, customControlsUiControllerImpl.getAllComponentInfo(), selectedItem);
            Log.d("CustomControlsUiControllerImpl", "reload selected = " + selectedItem + ", allComponentInfo = " + customControlsUiControllerImpl.getAllComponentInfo());
            if (customControlsUiControllerImpl.adapterNeedToUpdateDataSet) {
                MainControlAdapter mainControlAdapter = customControlsUiControllerImpl.controlAdapter;
                if (mainControlAdapter != null) {
                    mainControlAdapter.notifyDataSetChanged();
                }
                customControlsUiControllerImpl.adapterNeedToUpdateDataSet = false;
            }
        }
    }

    public static final void access$showEmptyStructureIfNeeded(CustomControlsUiControllerImpl customControlsUiControllerImpl) {
        boolean z;
        Object obj;
        List list = customControlsUiControllerImpl.models;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) list;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof MainControlModel) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (true) {
            z = true;
            if (!it2.hasNext()) {
                break;
            }
            Object next2 = it2.next();
            if (((MainControlModel) next2).getType() != MainModel.Type.STRUCTURE) {
                z = false;
            }
            if (z) {
                arrayList3.add(next2);
            }
        }
        Iterator it3 = arrayList3.iterator();
        while (true) {
            if (it3.hasNext()) {
                obj = it3.next();
                if (TextUtils.isEmpty(((MainControlModel) obj).structure)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        MainControlModel mainControlModel = (MainControlModel) obj;
        if (mainControlModel != null) {
            if (arrayList3.size() != 1) {
                z = false;
            }
            if (mainControlModel.needToHide != z) {
                mainControlModel.needToHide = z;
                MainControlAdapter mainControlAdapter = customControlsUiControllerImpl.controlAdapter;
                if (mainControlAdapter != null) {
                    mainControlAdapter.notifyItemChanged(arrayList2.indexOf(mainControlModel));
                }
            }
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("CustomControlsUiControllerImpl:");
        IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.increaseIndent();
        asIndenting.println("hidden: " + this.hidden);
        asIndenting.println("selectedItem: " + this.selectedItem);
        asIndenting.println("setting: " + ((ControlsSettingsRepositoryImpl) this.controlsSettingsRepository).allowActionOnTrivialControlsInLockscreen.getValue());
        asIndenting.decreaseIndent();
    }

    public final List getAllComponentInfo() {
        List list = this.allComponentInfo;
        if (list != null) {
            return list;
        }
        return null;
    }

    public final List<MainModel> getModels() {
        return CollectionsKt___CollectionsKt.toList(this.models);
    }

    public final List getPanelServiceInfos() {
        boolean z;
        List list = this.serviceInfos;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ControlsServiceInfo) obj).panelActivity != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        return new ArrayList(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0067, code lost:
    
        if (r1.isPanel == true) goto L96;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.controls.ui.SelectedItem getPreferredComponentSelectedItem(java.util.List r8) {
        /*
            r7 = this;
            boolean r0 = r8.isEmpty()
            if (r0 == 0) goto Le
            com.android.systemui.controls.ui.SelectedItem$Companion r7 = com.android.systemui.controls.ui.SelectedItem.Companion
            r7.getClass()
            com.android.systemui.controls.ui.SelectedItem$ComponentItem r7 = com.android.systemui.controls.ui.SelectedItem.EMPTY_SELECTION_COMPONENT
            return r7
        Le:
            com.android.systemui.controls.panels.CustomSelectedComponentRepository r0 = r7.customSelectedComponentRepository
            com.android.systemui.controls.panels.CustomSelectedComponentRepositoryImpl r0 = (com.android.systemui.controls.panels.CustomSelectedComponentRepositoryImpl) r0
            com.android.systemui.controls.panels.CustomSelectedComponentRepository$CustomSelectedComponent r1 = r0.getSelectedComponent()
            if (r1 == 0) goto L1c
            android.content.ComponentName r2 = r1.componentName
            if (r2 != 0) goto L23
        L1c:
            com.android.systemui.controls.controller.ComponentInfo$Companion r2 = com.android.systemui.controls.controller.ComponentInfo.Companion
            r2.getClass()
            android.content.ComponentName r2 = com.android.systemui.controls.controller.ComponentInfo.EMPTY_COMPONENT
        L23:
            java.util.Iterator r3 = r8.iterator()
        L27:
            boolean r4 = r3.hasNext()
            r5 = 0
            if (r4 == 0) goto L3e
            java.lang.Object r4 = r3.next()
            r6 = r4
            com.android.systemui.controls.controller.ComponentInfo r6 = (com.android.systemui.controls.controller.ComponentInfo) r6
            android.content.ComponentName r6 = r6.componentName
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r6)
            if (r6 == 0) goto L27
            goto L3f
        L3e:
            r4 = r5
        L3f:
            com.android.systemui.controls.controller.ComponentInfo r4 = (com.android.systemui.controls.controller.ComponentInfo) r4
            if (r4 != 0) goto L4a
            java.lang.Object r8 = kotlin.collections.CollectionsKt___CollectionsKt.firstOrNull(r8)
            r4 = r8
            com.android.systemui.controls.controller.ComponentInfo r4 = (com.android.systemui.controls.controller.ComponentInfo) r4
        L4a:
            if (r4 != 0) goto L54
            com.android.systemui.controls.ui.SelectedItem$Companion r7 = com.android.systemui.controls.ui.SelectedItem.Companion
            r7.getClass()
            com.android.systemui.controls.ui.SelectedItem$ComponentItem r7 = com.android.systemui.controls.ui.SelectedItem.EMPTY_SELECTION_COMPONENT
            return r7
        L54:
            if (r1 == 0) goto L59
            android.content.ComponentName r8 = r1.componentName
            goto L5a
        L59:
            r8 = r5
        L5a:
            android.content.ComponentName r2 = r4.componentName
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r8)
            if (r8 == 0) goto L7d
            if (r1 == 0) goto L6a
            boolean r8 = r1.isPanel
            r3 = 1
            if (r8 != r3) goto L6a
            goto L6b
        L6a:
            r3 = 0
        L6b:
            if (r3 == 0) goto L7d
            com.android.systemui.controls.ui.SelectedItem$PanelItem r7 = new com.android.systemui.controls.ui.SelectedItem$PanelItem
            java.lang.String r8 = r1.name
            r7.<init>(r8, r2)
            com.android.systemui.controls.panels.CustomSelectedComponentRepository$CustomSelectedComponent r8 = new com.android.systemui.controls.panels.CustomSelectedComponentRepository$CustomSelectedComponent
            r8.<init>(r7)
            r0.setSelectedComponent(r8)
            return r7
        L7d:
            dagger.Lazy r7 = r7.controlsListingController
            java.lang.Object r7 = r7.get()
            com.android.systemui.controls.management.ControlsListingController r7 = (com.android.systemui.controls.management.ControlsListingController) r7
            com.android.systemui.controls.management.ControlsListingControllerImpl r7 = (com.android.systemui.controls.management.ControlsListingControllerImpl) r7
            java.util.List r7 = r7.getCurrentServices()
            java.util.ArrayList r7 = (java.util.ArrayList) r7
            java.util.Iterator r7 = r7.iterator()
        L91:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto La7
            java.lang.Object r8 = r7.next()
            r1 = r8
            com.android.systemui.controls.ControlsServiceInfo r1 = (com.android.systemui.controls.ControlsServiceInfo) r1
            android.content.ComponentName r1 = r1.componentName
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r1)
            if (r1 == 0) goto L91
            goto La8
        La7:
            r8 = r5
        La8:
            com.android.systemui.controls.ControlsServiceInfo r8 = (com.android.systemui.controls.ControlsServiceInfo) r8
            if (r8 == 0) goto Lae
            android.content.ComponentName r5 = r8.panelActivity
        Lae:
            if (r5 == 0) goto Lc2
            com.android.systemui.controls.ui.SelectedItem$PanelItem r7 = new com.android.systemui.controls.ui.SelectedItem$PanelItem
            java.lang.CharSequence r8 = r8.loadLabel()
            r7.<init>(r8, r2)
            com.android.systemui.controls.panels.CustomSelectedComponentRepository$CustomSelectedComponent r8 = new com.android.systemui.controls.panels.CustomSelectedComponentRepository$CustomSelectedComponent
            r8.<init>(r7)
            r0.setSelectedComponent(r8)
            return r7
        Lc2:
            com.android.systemui.controls.ui.SelectedItem$ComponentItem r7 = new com.android.systemui.controls.ui.SelectedItem$ComponentItem
            if (r8 == 0) goto Lcb
            java.lang.CharSequence r8 = r8.loadLabel()
            goto Lcd
        Lcb:
            java.lang.String r8 = ""
        Lcd:
            r7.<init>(r8, r4)
            com.android.systemui.controls.panels.CustomSelectedComponentRepository$CustomSelectedComponent r8 = new com.android.systemui.controls.panels.CustomSelectedComponentRepository$CustomSelectedComponent
            r8.<init>(r7)
            r0.setSelectedComponent(r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.CustomControlsUiControllerImpl.getPreferredComponentSelectedItem(java.util.List):com.android.systemui.controls.ui.SelectedItem");
    }

    public final ControlsSpinner.SpinnerItemSelectionChangedCallback getSpinnerItemSelectionChangedCallback() {
        return this.spinnerItemSelectionChangedCallback;
    }

    public final List<StructureInfo> getStructureInfosByUI(ComponentName componentName) {
        Object obj;
        boolean z;
        Iterator it = getPanelServiceInfos().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ControlsServiceInfo) obj).serviceInfo.applicationInfo.packageName, componentName.getPackageName())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (((ControlsServiceInfo) obj) != null) {
            StructureInfo structureInfo = new StructureInfo(componentName, "", EmptyList.INSTANCE);
            structureInfo.customStructureInfo.active = true;
            Unit unit = Unit.INSTANCE;
            return CollectionsKt__CollectionsKt.mutableListOf(structureInfo);
        }
        List list = this.models;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (obj2 instanceof MainControlModel) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : arrayList) {
            MainControlModel mainControlModel = (MainControlModel) obj3;
            if (mainControlModel.getType() != MainModel.Type.CONTROL && (!BasicRune.CONTROLS_LAYOUT_TYPE || mainControlModel.getType() != MainModel.Type.SMALL_CONTROL)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                arrayList2.add(obj3);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj4 : arrayList2) {
            String str = ((MainControlModel) obj4).structure;
            Object obj5 = linkedHashMap.get(str);
            if (obj5 == null) {
                obj5 = new ArrayList();
                linkedHashMap.put(str, obj5);
            }
            ((List) obj5).add(obj4);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str2 = (String) entry.getKey();
            List list2 = (List) entry.getValue();
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ControlWithState controlWithState = ((MainControlModel) it2.next()).controlWithState;
                Intrinsics.checkNotNull(controlWithState);
                arrayList4.add(controlWithState.ci);
            }
            StructureInfo structureInfo2 = new StructureInfo(componentName, str2, new ArrayList(arrayList4));
            structureInfo2.customStructureInfo.active = true;
            arrayList3.add(structureInfo2);
        }
        return arrayList3;
    }

    public final void hide(ViewGroup viewGroup) {
        Activity activity;
        Boolean bool;
        boolean z;
        if (Intrinsics.areEqual(viewGroup, this.parent)) {
            Log.d("CustomControlsUiControllerImpl", "hide()");
            boolean z2 = true;
            this.hidden = true;
            ControlsListingController.ControlsListingCallback controlsListingCallback = null;
            if (this.controlAdapter != null) {
                Iterator it = ((LinkedHashMap) MainControlAdapter.controlViewHolders).entrySet().iterator();
                while (it.hasNext()) {
                    ControlViewHolder controlViewHolder = (ControlViewHolder) ((Map.Entry) it.next()).getValue();
                    Dialog dialog = controlViewHolder.lastChallengeDialog;
                    if (dialog != null) {
                        dialog.dismiss();
                    }
                    controlViewHolder.lastChallengeDialog = null;
                    Dialog dialog2 = controlViewHolder.visibleDialog;
                    if (dialog2 != null) {
                        dialog2.dismiss();
                    }
                    controlViewHolder.visibleDialog = null;
                }
            }
            ControlActionCoordinatorImpl controlActionCoordinatorImpl = (ControlActionCoordinatorImpl) this.controlActionCoordinator;
            controlActionCoordinatorImpl.getClass();
            if (!((FeatureFlagsRelease) controlActionCoordinatorImpl.featureFlags).isEnabled(Flags.USE_APP_PANELS)) {
                ((ControlsSettingsDialogManagerImpl) controlActionCoordinatorImpl.controlsSettingsDialogManager).closeDialog();
            }
            Context context = controlActionCoordinatorImpl.activityContext;
            if (context instanceof Activity) {
                activity = (Activity) context;
            } else {
                activity = null;
            }
            if (activity != null) {
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    z = false;
                } else {
                    z = true;
                }
                bool = Boolean.valueOf(z);
            } else {
                bool = null;
            }
            if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                controlActionCoordinatorImpl.dialog = null;
            } else {
                Dialog dialog3 = controlActionCoordinatorImpl.dialog;
                if (dialog3 == null || !dialog3.isShowing()) {
                    z2 = false;
                }
                if (z2) {
                    Dialog dialog4 = controlActionCoordinatorImpl.dialog;
                    if (dialog4 != null) {
                        dialog4.dismiss();
                    }
                    controlActionCoordinatorImpl.dialog = null;
                }
            }
            PanelTaskViewController panelTaskViewController = this.taskViewController;
            if (panelTaskViewController != null) {
                TaskViewTaskController taskViewTaskController = panelTaskViewController.taskView.mTaskViewTaskController;
                if (taskViewTaskController.mTaskToken == null) {
                    Slog.w("TaskViewTaskController", "Trying to remove a task that was never added? (no taskToken)");
                } else {
                    taskViewTaskController.mShellExecutor.execute(new TaskViewTaskController$$ExternalSyntheticLambda0(taskViewTaskController, 4));
                }
            }
            this.taskViewController = null;
            saveFavorites(this.selectedItem.getComponentName());
            ControlsControllerImpl controlsControllerImpl = (ControlsControllerImpl) ((ControlsController) this.controlsController.get());
            if (controlsControllerImpl.confirmAvailability()) {
                ((ControlsBindingControllerImpl) controlsControllerImpl.bindingController).unsubscribe();
            }
            ControlsListingController controlsListingController = (ControlsListingController) this.controlsListingController.get();
            ControlsListingController.ControlsListingCallback controlsListingCallback2 = this.listingCallback;
            if (controlsListingCallback2 != null) {
                controlsListingCallback = controlsListingCallback2;
            }
            ((ControlsListingControllerImpl) controlsListingController).removeCallback(controlsListingCallback);
        }
    }

    public final ControlsServiceInfo isPanelComponent(ComponentInfo componentInfo) {
        Object obj;
        Iterator it = ((ArrayList) getPanelServiceInfos()).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ControlsServiceInfo) obj).serviceInfo.applicationInfo.packageName, componentInfo.componentName.getPackageName())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (ControlsServiceInfo) obj;
    }

    public final void loadComponentInfo() {
        this.allComponentInfo = ((ControlsControllerImpl) ((CustomControlsController) this.customControlsController.get())).getActiveFavoritesComponent();
        SelectedItem preferredComponentSelectedItem = getPreferredComponentSelectedItem(getAllComponentInfo());
        this.selectedItem = preferredComponentSelectedItem;
        Log.d("CustomControlsUiControllerImpl", "loadComponentInfo() selectedItem = " + preferredComponentSelectedItem + ", allComponentInfo = " + getAllComponentInfo());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        if (((com.android.systemui.controls.controller.ControlsControllerImpl) ((com.android.systemui.controls.controller.CustomControlsController) r2.get())).getActiveFlag(r7.selectedItem.getComponentName()) == false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean needToShowNonMainView() {
        /*
            r7 = this;
            dagger.Lazy r0 = r7.controlsListingController
            java.lang.Object r1 = r0.get()
            com.android.systemui.controls.management.ControlsListingController r1 = (com.android.systemui.controls.management.ControlsListingController) r1
            com.android.systemui.controls.management.ControlsListingControllerImpl r1 = (com.android.systemui.controls.management.ControlsListingControllerImpl) r1
            java.util.List r1 = r1.getCurrentServices()
            java.util.ArrayList r1 = (java.util.ArrayList) r1
            int r1 = r1.size()
            dagger.Lazy r2 = r7.customControlsController
            if (r1 == 0) goto L41
            com.android.systemui.controls.ui.SelectedItem r1 = r7.selectedItem
            boolean r3 = r1 instanceof com.android.systemui.controls.ui.SelectedItem.ComponentItem
            if (r3 == 0) goto L24
            boolean r1 = r1.getHasControls()
            if (r1 == 0) goto L41
        L24:
            com.android.systemui.controls.ui.SelectedItem r1 = r7.selectedItem
            boolean r1 = r1 instanceof com.android.systemui.controls.ui.SelectedItem.PanelItem
            if (r1 == 0) goto L3f
            java.lang.Object r1 = r2.get()
            com.android.systemui.controls.controller.CustomControlsController r1 = (com.android.systemui.controls.controller.CustomControlsController) r1
            com.android.systemui.controls.ui.SelectedItem r3 = r7.selectedItem
            android.content.ComponentName r3 = r3.getComponentName()
            com.android.systemui.controls.controller.ControlsControllerImpl r1 = (com.android.systemui.controls.controller.ControlsControllerImpl) r1
            boolean r1 = r1.getActiveFlag(r3)
            if (r1 != 0) goto L3f
            goto L41
        L3f:
            r1 = 0
            goto L42
        L41:
            r1 = 1
        L42:
            java.lang.Object r0 = r0.get()
            com.android.systemui.controls.management.ControlsListingController r0 = (com.android.systemui.controls.management.ControlsListingController) r0
            com.android.systemui.controls.management.ControlsListingControllerImpl r0 = (com.android.systemui.controls.management.ControlsListingControllerImpl) r0
            java.util.List r0 = r0.getCurrentServices()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            int r0 = r0.size()
            com.android.systemui.controls.ui.SelectedItem r3 = r7.selectedItem
            java.lang.Object r2 = r2.get()
            com.android.systemui.controls.controller.CustomControlsController r2 = (com.android.systemui.controls.controller.CustomControlsController) r2
            com.android.systemui.controls.ui.SelectedItem r4 = r7.selectedItem
            android.content.ComponentName r4 = r4.getComponentName()
            com.android.systemui.controls.controller.ControlsControllerImpl r2 = (com.android.systemui.controls.controller.ControlsControllerImpl) r2
            boolean r2 = r2.getActiveFlag(r4)
            com.android.systemui.controls.ui.SelectedItem r7 = r7.selectedItem
            android.content.ComponentName r7 = r7.getComponentName()
            java.lang.String r4 = "needToShowNonMainView "
            java.lang.String r5 = ", service.size = "
            java.lang.String r6 = ", selectedItem = "
            java.lang.StringBuilder r0 = com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0.m(r4, r1, r5, r0, r6)
            r0.append(r3)
            java.lang.String r3 = ", activeFlag = "
            r0.append(r3)
            r0.append(r2)
            java.lang.String r2 = ", componentName = "
            r0.append(r2)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            java.lang.String r0 = "CustomControlsUiControllerImpl"
            android.util.Log.d(r0, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.CustomControlsUiControllerImpl.needToShowNonMainView():boolean");
    }

    public final void notifyItemChanged(final int i, final MainControlModel mainControlModel) {
        ToggleRangeBehavior.Companion.getClass();
        if (ToggleRangeBehavior.inProgress) {
            this.uiExecutor.executeDelayed(200L, new Runnable() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$notifyItemChanged$1
                @Override // java.lang.Runnable
                public final void run() {
                    CustomControlsUiControllerImpl customControlsUiControllerImpl = CustomControlsUiControllerImpl.this;
                    int i2 = i;
                    MainControlModel mainControlModel2 = mainControlModel;
                    int i3 = CustomControlsUiControllerImpl.$r8$clinit;
                    customControlsUiControllerImpl.notifyItemChanged(i2, mainControlModel2);
                }
            });
            return;
        }
        this.logWrapper.dp("CustomControlsUiControllerImpl", MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("notifyItemChanged: ", i));
        MainControlAdapter mainControlAdapter = this.controlAdapter;
        if (mainControlAdapter != null) {
            mainControlAdapter.notifyItemChanged(i, mainControlModel);
        }
    }

    public final Class resolveActivity() {
        boolean z;
        loadComponentInfo();
        int size = ((ArrayList) ((ControlsListingControllerImpl) ((ControlsListingController) this.controlsListingController.get())).getCurrentServices()).size();
        Context context = this.context;
        boolean z2 = false;
        ControlsUtil controlsUtil = this.controlsUtil;
        if (size != 0 && needToShowNonMainView()) {
            controlsUtil.getClass();
            if (!Prefs.getBoolean(context, "ControlsOOBEManageAppsCompleted", false)) {
                this.isShowOverLockscreenWhenLocked = false;
                Log.d("CustomControlsUiControllerImpl", "resolveActivity CustomControlsProviderSelectorActivity");
                return CustomControlsProviderSelectorActivity.class;
            }
        }
        if (controlsUtil.isSecureLocked()) {
            if (Settings.Secure.getInt(context.getContentResolver(), "lockscreen_show_controls", 0) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                z2 = true;
            }
        }
        this.isShowOverLockscreenWhenLocked = z2;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("resolveActivity CustomControlsActivity isShowOverLockscreenWhenLocked = ", z2, "CustomControlsUiControllerImpl");
        return CustomControlsActivity.class;
    }

    public final boolean saveFavorites(ComponentName componentName) {
        Lazy lazy = this.customControlsController;
        if (!((ControlsControllerImpl) ((CustomControlsController) lazy.get())).getActiveFlag(componentName)) {
            Log.w("CustomControlsUiControllerImpl", "Skip saveFavorites component: " + componentName);
            return false;
        }
        List<StructureInfo> structureInfosByUI = getStructureInfosByUI(componentName);
        if (!this.isChanged || !Intrinsics.areEqual(structureInfosByUI, this.verificationStructureInfos)) {
            return false;
        }
        Log.d("CustomControlsUiControllerImpl", "saveFavorites component " + componentName + ", structureInfos:" + structureInfosByUI);
        ((ControlsControllerImpl) ((CustomControlsController) lazy.get())).replaceFavoritesForComponent(new ComponentInfo(componentName, structureInfosByUI), false);
        return true;
    }

    public final void unsubscribeAndUnbindIfNecessary() {
        String packageName = this.selectedItem.getComponentName().getPackageName();
        this.controlsUtil.getClass();
        if (Intrinsics.areEqual("com.samsung.android.oneconnect", packageName)) {
            Log.d("CustomControlsUiControllerImpl", "unsubscribeAndUnbindIfNecessary");
            ControlsControllerImpl controlsControllerImpl = (ControlsControllerImpl) ((CustomControlsController) this.customControlsController.get());
            if (controlsControllerImpl.confirmAvailability()) {
                ((ControlsBindingControllerImpl) controlsControllerImpl.customBindingController).unbind();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void update(List<? extends ControlsServiceInfo> list, List<ComponentInfo> list2, SelectedItem selectedItem) {
        int i;
        int i2;
        Object obj;
        String str;
        ControlInfo controlInfo;
        String str2;
        ControlInfo controlInfo2;
        Object obj2;
        boolean z;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list2.iterator();
        while (true) {
            i = 0;
            i2 = 1;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            List list3 = ((ComponentInfo) next).structureInfos;
            if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                Iterator it2 = list3.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (((StructureInfo) it2.next()).customStructureInfo.active) {
                            i = 1;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (i != 0) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((ComponentInfo) it3.next()).componentName);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : list) {
            if (arrayList2.contains(((ControlsServiceInfo) obj3).componentName)) {
                arrayList3.add(obj3);
            }
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            ControlsServiceInfo controlsServiceInfo = (ControlsServiceInfo) it4.next();
            ControlsSelectionItem controlsSelectionItem = new ControlsSelectionItem(controlsServiceInfo.loadLabel(), controlsServiceInfo.loadIcon(), controlsServiceInfo.componentName, controlsServiceInfo.serviceInfo.applicationInfo.uid, controlsServiceInfo.panelActivity);
            RenderInfo.Companion.getClass();
            RenderInfo.appIconMap.put(controlsSelectionItem.componentName, controlsSelectionItem.icon);
            arrayList4.add(controlsSelectionItem);
        }
        if (arrayList4.isEmpty()) {
            Log.d("CustomControlsUiControllerImpl", "filteredList is Empty");
            return;
        }
        Iterator it5 = arrayList4.iterator();
        while (true) {
            if (it5.hasNext()) {
                obj = it5.next();
                if (Intrinsics.areEqual(((ControlsSelectionItem) obj).componentName, selectedItem.getComponentName())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        ControlsSelectionItem controlsSelectionItem2 = (ControlsSelectionItem) obj;
        if (controlsSelectionItem2 == null) {
            controlsSelectionItem2 = (ControlsSelectionItem) arrayList4.get(0);
        }
        MainComponentModel mainComponentModel = this.componentModel;
        mainComponentModel.controlsSpinnerInfo = arrayList4;
        mainComponentModel.selected = controlsSelectionItem2.componentName;
        MainControlAdapter mainControlAdapter = this.controlAdapter;
        if (mainControlAdapter != null) {
            mainControlAdapter.uid = controlsSelectionItem2.uid;
            mainControlAdapter.notifyItemChanged(mainControlAdapter.models.indexOf(mainComponentModel));
        }
        for (ComponentInfo componentInfo : list2) {
            if (Intrinsics.areEqual(componentInfo.componentName, controlsSelectionItem2.componentName)) {
                List list4 = this.models;
                ArrayList arrayList5 = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                List list5 = componentInfo.structureInfos;
                for (Object obj4 : list5) {
                    if (!((StructureInfo) obj4).controls.isEmpty()) {
                        arrayList6.add(obj4);
                    }
                }
                Iterator it6 = arrayList6.iterator();
                while (it6.hasNext()) {
                    StructureInfo structureInfo = (StructureInfo) it6.next();
                    String obj5 = structureInfo.structure.toString();
                    if (list5.size() == i2) {
                        obj2 = list5.get(i);
                    } else {
                        obj2 = null;
                    }
                    StructureInfo structureInfo2 = (StructureInfo) obj2;
                    if (structureInfo2 != null) {
                        z = TextUtils.isEmpty(structureInfo2.structure);
                    } else {
                        z = i;
                    }
                    arrayList5.add(new MainControlModel(obj5, null, z));
                    Iterator it7 = structureInfo.controls.iterator();
                    while (it7.hasNext()) {
                        arrayList5.add(new MainControlModel(obj5, new ControlWithState(structureInfo.componentName, (ControlInfo) it7.next(), null), false, 4, null));
                        i = 0;
                        i2 = 1;
                    }
                }
                ArrayList arrayList7 = new ArrayList();
                ArrayList arrayList8 = (ArrayList) list4;
                Iterator it8 = arrayList8.iterator();
                while (it8.hasNext()) {
                    Object next2 = it8.next();
                    if (next2 instanceof MainControlModel) {
                        arrayList7.add(next2);
                    }
                }
                ArrayList arrayList9 = new ArrayList();
                Iterator it9 = arrayList7.iterator();
                while (it9.hasNext()) {
                    ControlWithState controlWithState = ((MainControlModel) it9.next()).controlWithState;
                    if (controlWithState != null && (controlInfo2 = controlWithState.ci) != null) {
                        str2 = controlInfo2.controlId;
                    } else {
                        str2 = null;
                    }
                    if (str2 != null) {
                        arrayList9.add(str2);
                    }
                }
                ArrayList arrayList10 = new ArrayList();
                Iterator it10 = arrayList5.iterator();
                while (it10.hasNext()) {
                    ControlWithState controlWithState2 = ((MainControlModel) it10.next()).controlWithState;
                    if (controlWithState2 != null && (controlInfo = controlWithState2.ci) != null) {
                        str = controlInfo.controlId;
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        arrayList10.add(str);
                    }
                }
                boolean z2 = !Intrinsics.areEqual(arrayList9, arrayList10);
                ComponentName componentName = componentInfo.componentName;
                if (z2 || !Intrinsics.areEqual(componentName, this.selectedItem.getComponentName()) || arrayList8.isEmpty()) {
                    arrayList8.clear();
                    arrayList8.add(mainComponentModel);
                    ControlsServiceInfo isPanelComponent = isPanelComponent(componentInfo);
                    if (isPanelComponent != null && isPanelComponent.panelActivity != null) {
                        boolean booleanValue = ((Boolean) ((ControlsSettingsRepositoryImpl) this.controlsSettingsRepository).allowActionOnTrivialControlsInLockscreen.getValue()).booleanValue();
                        arrayList8.add(new MainPanelModel(PendingIntent.getActivityAsUser(this.context, 0, new Intent().setComponent(isPanelComponent.panelActivity).putExtra("android.service.controls.extra.LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS", booleanValue), 201326592, null, ((UserTrackerImpl) this.userTracker).getUserHandle()), isPanelComponent.panelActivity, booleanValue));
                    } else {
                        arrayList8.addAll(arrayList5);
                    }
                    this.verificationStructureInfos = getStructureInfosByUI(componentName);
                    this.adapterNeedToUpdateDataSet = true;
                }
                arrayList8.size();
                boolean z3 = selectedItem instanceof SelectedItem.ComponentItem;
                Lazy lazy = this.customControlsController;
                if (z3) {
                    ((ControlsControllerImpl) ((CustomControlsController) lazy.get())).subscribeToFavorites(((SelectedItem.ComponentItem) selectedItem).componentInfo);
                    this.selectedItem = new SelectedItem.ComponentItem(selectedItem.getName(), componentInfo);
                } else {
                    CustomControlsController customControlsController = (CustomControlsController) lazy.get();
                    ComponentName componentName2 = selectedItem.getComponentName();
                    StructureInfo structureInfo3 = new StructureInfo(selectedItem.getComponentName(), "", EmptyList.INSTANCE);
                    structureInfo3.customStructureInfo.active = true;
                    Unit unit = Unit.INSTANCE;
                    ((ControlsControllerImpl) customControlsController).subscribeToFavorites(new ComponentInfo(componentName2, CollectionsKt__CollectionsKt.mutableListOf(structureInfo3)));
                    ((ControlsBindingControllerImpl) ((ControlsControllerImpl) ((ControlsController) this.controlsController.get())).bindingController).retrieveLifecycleManager(selectedItem.getComponentName()).bindService(true, true);
                    this.selectedItem = new SelectedItem.PanelItem(selectedItem.getName(), componentName);
                }
                Log.d("CustomControlsUiControllerImpl", "update selectedItem = " + this.selectedItem);
                return;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public static /* synthetic */ void getAllComponentInfo$annotations() {
    }

    private static /* synthetic */ void getFragmentManager$annotations() {
    }

    public static /* synthetic */ void getListingCallback$annotations() {
    }
}
