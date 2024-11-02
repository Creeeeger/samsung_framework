package com.android.systemui.statusbar.notification.stack;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.biometrics.BiometricSourceType;
import android.os.Handler;
import android.os.Trace;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.util.MathUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt$children$1;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.UiEventLogger;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.ExpandHelper;
import com.android.systemui.Gefingerpoken;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.KeyguardFoldControllerImpl;
import com.android.systemui.keyguard.KeyguardVisibilityMonitor;
import com.android.systemui.log.SecPanelLogger;
import com.android.systemui.log.SecPanelLoggerImpl;
import com.android.systemui.log.SecTouchLogHelper;
import com.android.systemui.media.controls.ui.KeyguardMediaController;
import com.android.systemui.notification.FullExpansionPanelNotiAlphaController;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.TouchAnimator;
import com.android.systemui.scrim.ScrimView;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.statusbar.LockscreenNotificationManager;
import com.android.systemui.statusbar.LockscreenShadeTransitionController;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.NotificationShelf;
import com.android.systemui.statusbar.NotificationShelfController;
import com.android.systemui.statusbar.NotificationShelfManager;
import com.android.systemui.statusbar.RemoteInputController;
import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.iconsOnly.NotificationIconTransitionController;
import com.android.systemui.statusbar.notification.DynamicPrivacyController;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.NotificationActivityStarter;
import com.android.systemui.statusbar.notification.Roundable;
import com.android.systemui.statusbar.notification.VisibilityLocationProvider;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.PipelineDumpable;
import com.android.systemui.statusbar.notification.collection.PipelineDumper;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProvider;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProviderImpl;
import com.android.systemui.statusbar.notification.collection.provider.SeenNotificationsProvider;
import com.android.systemui.statusbar.notification.collection.provider.VisibilityLocationProviderDelegator;
import com.android.systemui.statusbar.notification.collection.render.GroupExpansionManager;
import com.android.systemui.statusbar.notification.collection.render.GroupExpansionManagerImpl;
import com.android.systemui.statusbar.notification.collection.render.NotifStackController;
import com.android.systemui.statusbar.notification.collection.render.NotifStats;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderController;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.row.NotificationGuts;
import com.android.systemui.statusbar.notification.row.NotificationGutsManager;
import com.android.systemui.statusbar.notification.row.NotificationSnooze;
import com.android.systemui.statusbar.notification.shelf.ui.viewbinder.NotificationShelfViewBinder;
import com.android.systemui.statusbar.notification.shelf.ui.viewmodel.NotificationShelfViewModel;
import com.android.systemui.statusbar.notification.stack.NotificationRoundnessManager;
import com.android.systemui.statusbar.notification.stack.NotificationSwipeHelper;
import com.android.systemui.statusbar.notification.stack.ui.viewbinder.NotificationListViewBinder;
import com.android.systemui.statusbar.notification.stack.ui.viewmodel.NotificationListViewModel;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.HeadsUpAppearanceController;
import com.android.systemui.statusbar.phone.HeadsUpManagerPhone;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.phone.NotificationIconAreaController;
import com.android.systemui.statusbar.phone.ScrimController;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.statusbar.policy.DeviceProvisionedControllerImpl;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.OnHeadsUpChangedListener;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.systemui.statusbar.policy.ZenModeControllerImpl;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.settings.SecureSettings;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationStackScrollLayoutController implements NotificationRoundnessManager.SectionStateProvider {
    public final ActivityStarter mActivityStarter;
    public final boolean mAllowLongPress;
    public int mBarState;
    public final CentralSurfaces mCentralSurfaces;
    public final ConfigurationController mConfigurationController;
    final ConfigurationController.ConfigurationListener mConfigurationListener;
    public final DeviceProvisionedController mDeviceProvisionedController;
    public final AnonymousClass4 mDeviceProvisionedListener;
    public final NotificationDismissibilityProvider mDismissibilityProvider;
    public final DynamicPrivacyController mDynamicPrivacyController;
    public final NotificationStackScrollLayoutController$$ExternalSyntheticLambda1 mDynamicPrivacyControllerListener;
    public final FalsingCollector mFalsingCollector;
    public final FalsingManager mFalsingManager;
    public final FeatureFlags mFeatureFlags;
    public final AnonymousClass1 mForceLayoutTimeOutRunnable;
    public final GroupExpansionManager mGroupExpansionManager;
    public boolean mHasDelayedForceLayout;
    public HeadsUpAppearanceController mHeadsUpAppearanceController;
    public final HeadsUpManagerPhone mHeadsUpManager;
    public Boolean mHistoryEnabled;
    public boolean mIsStartFromContentsBound;
    public final InteractionJankMonitor mJankMonitor;
    public KeyguardUpdateMonitorCallback mKeyguardUpdateCallback;
    public final NotificationStackScrollLayoutController$$ExternalSyntheticLambda0 mKeyguardVisibilityListener;
    public final LockscreenNotificationManager mLockscreenNotificationManager;
    public final AnonymousClass7 mLockscreenUserChangeListener;
    public final NotificationLockscreenUserManager mLockscreenUserManager;
    public View mLongPressedView;
    public boolean mMediaPlayerVisible;
    public final AnonymousClass8 mMenuEventListener;
    public final MetricsLogger mMetricsLogger;
    public final NotifCollection mNotifCollection;
    public final NotificationIconAreaController mNotifIconAreaController;
    public final NotifStackControllerImpl mNotifStackController;
    public NotifStats mNotifStats;
    public NotificationActivityStarter mNotificationActivityStarter;
    final NotificationSwipeHelper.NotificationCallback mNotificationCallback;
    public final NotificationGutsManager mNotificationGutsManager;
    public final NotificationListContainerImpl mNotificationListContainer;
    public final NotificationRoundnessManager mNotificationRoundnessManager;
    public final NotificationStackSizeCalculator mNotificationStackSizeCalculator;
    public final NotificationTargetsHelper mNotificationTargetsHelper;
    final View.OnAttachStateChangeListener mOnAttachStateChangeListener;
    public final AnonymousClass10 mOnHeadsUpChangedListener;
    public boolean mProgressingShadeLockedFromNotiIcon;
    public final SecureSettings mSecureSettings;
    public final SeenNotificationsProvider mSeenNotificationsProvider;
    public final NotificationShelfManager mShelfManager;
    public final AnonymousClass6 mStateListener;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public NotificationSwipeHelper mSwipeHelper;
    public final UiEventLogger mUiEventLogger;
    public final NotificationStackScrollLayout mView;
    public final NotificationVisibilityProvider mVisibilityProvider;
    public final AnonymousClass12 mWallpaperThemeCallback;
    public final ZenModeController mZenModeController;
    public final AnonymousClass11 mZenModeControllerCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            if (notificationStackScrollLayoutController.mHasDelayedForceLayout) {
                notificationStackScrollLayoutController.mHasDelayedForceLayout = false;
                Log.d("StackScrollerController", "delayed force layout time out. do forcelayout");
                NotificationStackScrollLayoutController.this.mView.forceLayout();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$15, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass15 implements RemoteInputController.Delegate {
        public AnonymousClass15() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$6, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass6 implements StatusBarStateController.StateListener {
        public AnonymousClass6() {
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onStateChanged(int i) {
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            notificationStackScrollLayoutController.mBarState = i;
            notificationStackScrollLayoutController.mView.setStatusBarState(i);
            if (i == 1) {
                ((GroupExpansionManagerImpl) notificationStackScrollLayoutController.mGroupExpansionManager).collapseGroups();
            }
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onStatePostChange() {
            boolean z;
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            notificationStackScrollLayoutController.mView.updateSensitiveness(((StatusBarStateControllerImpl) notificationStackScrollLayoutController.mStatusBarStateController).goingToFullShade(), ((NotificationLockscreenUserManagerImpl) notificationStackScrollLayoutController.mLockscreenUserManager).isAnyProfilePublicMode());
            NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
            int i = 1;
            if (((StatusBarStateControllerImpl) notificationStackScrollLayoutController.mStatusBarStateController).mLastState == 2) {
                z = true;
            } else {
                z = false;
            }
            boolean onKeyguard = notificationStackScrollLayout.onKeyguard();
            notificationStackScrollLayout.mAmbientState.mDimmed = onKeyguard;
            HeadsUpAppearanceController headsUpAppearanceController = notificationStackScrollLayout.mHeadsUpAppearanceController;
            if (headsUpAppearanceController != null) {
                headsUpAppearanceController.updateTopEntry();
            }
            notificationStackScrollLayout.setDimmed(onKeyguard, z);
            notificationStackScrollLayout.mExpandHelper.mEnabled = !onKeyguard;
            notificationStackScrollLayout.updateFooter();
            notificationStackScrollLayout.requestChildrenUpdate();
            if (NotiRune.NOTI_STYLE_EMPTY_SHADE) {
                notificationStackScrollLayout.changeViewPosition(notificationStackScrollLayout.mEmptyShadeView, notificationStackScrollLayout.getChildCount() - 1);
                i = 2;
            }
            notificationStackScrollLayout.changeViewPosition(notificationStackScrollLayout.mShelf, notificationStackScrollLayout.getChildCount() - i);
            notificationStackScrollLayout.updateVisibility();
            notificationStackScrollLayoutController.updateImportantForAccessibility();
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onStatePreChange(int i, int i2) {
            boolean z;
            if (i == 2 && i2 == 1) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                int i3 = notificationStackScrollLayoutController.mLockscreenNotificationManager.mCurrentNotificationType;
                if (i3 != 1 && i3 != 2) {
                    z = false;
                } else {
                    z = true;
                }
                NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
                if (z) {
                    if (notificationStackScrollLayout.mIsExpanded && notificationStackScrollLayout.mAnimationsEnabled) {
                        notificationStackScrollLayout.mEverythingNeedsAnimation = false;
                        notificationStackScrollLayout.mNeedsAnimation = false;
                        notificationStackScrollLayout.requestChildrenUpdate();
                        return;
                    }
                    return;
                }
                if (notificationStackScrollLayout.mIsExpanded && notificationStackScrollLayout.mAnimationsEnabled) {
                    notificationStackScrollLayout.mEverythingNeedsAnimation = true;
                    notificationStackScrollLayout.mNeedsAnimation = true;
                    notificationStackScrollLayout.requestChildrenUpdate();
                }
            }
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onUpcomingStateChanged(int i) {
            NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayoutController.this.mView;
            notificationStackScrollLayout.mUpcomingStatusBarState = i;
            if (i != notificationStackScrollLayout.mStatusBarState) {
                notificationStackScrollLayout.updateFooter();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$9, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass9 implements NotificationSwipeHelper.NotificationCallback {
        public AnonymousClass9() {
        }

        public final boolean canChildBeDismissed(View view) {
            int i = NotificationStackScrollLayout.$r8$clinit;
            if (view instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                if (!expandableNotificationRow.areGutsExposed() && expandableNotificationRow.mEntry.hasFinishedInitialization()) {
                    return expandableNotificationRow.canViewBeDismissed$1();
                }
            }
            return false;
        }

        public final ExpandableView getChildAtPosition(MotionEvent motionEvent) {
            ExpandableNotificationRow expandableNotificationRow;
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            ExpandableView childAtPosition = notificationStackScrollLayoutController.mView.getChildAtPosition(motionEvent.getX(), true, false, motionEvent.getY());
            if ((childAtPosition instanceof ExpandableNotificationRow) && (expandableNotificationRow = ((ExpandableNotificationRow) childAtPosition).mNotificationParent) != null && expandableNotificationRow.mChildrenExpanded) {
                if (!expandableNotificationRow.areGutsExposed() && notificationStackScrollLayoutController.mSwipeHelper.mMenuExposedView != expandableNotificationRow) {
                    if (expandableNotificationRow.getAttachedChildren().size() == 1) {
                        if (!((NotificationDismissibilityProviderImpl) notificationStackScrollLayoutController.mDismissibilityProvider).isDismissable(expandableNotificationRow.mEntry)) {
                            return childAtPosition;
                        }
                    } else {
                        return childAtPosition;
                    }
                }
                return expandableNotificationRow;
            }
            return childAtPosition;
        }

        public final void handleChildViewDismissed(View view) {
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
            notificationStackScrollLayout.updateFirstAndLastBackgroundViews();
            notificationStackScrollLayout.mController.mNotificationRoundnessManager.getClass();
            notificationStackScrollLayout.mShelf.updateAppearance();
            NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
            if (notificationStackScrollLayout2.mClearAllInProgress) {
                Log.d("StackScrollerController", "dismiss notification, but ClearAllInProgressing..");
                return;
            }
            if (view instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                if (expandableNotificationRow.mIsHeadsUp) {
                    notificationStackScrollLayoutController.mHeadsUpManager.mSwipedOutKeys.add(expandableNotificationRow.mEntry.mSbn.getKey());
                }
                expandableNotificationRow.performDismiss(false);
            }
            notificationStackScrollLayout2.mSwipedOutViews.add(view);
            FalsingCollector falsingCollector = notificationStackScrollLayoutController.mFalsingCollector;
            falsingCollector.getClass();
            falsingCollector.getClass();
        }

        public final void onBeginDrag(View view) {
            NotificationChildrenContainer notificationChildrenContainer;
            Roundable roundable;
            ExpandableView expandableView;
            boolean z;
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            notificationStackScrollLayoutController.mFalsingCollector.getClass();
            NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
            notificationStackScrollLayout.getClass();
            if (view instanceof ExpandableNotificationRow) {
                notificationStackScrollLayout.mSectionsManager.updateFirstAndLastViewsForAllSections(notificationStackScrollLayout.mSections, notificationStackScrollLayout.getChildrenWithBackground());
                NotificationTargetsHelper notificationTargetsHelper = notificationStackScrollLayout.mController.mNotificationTargetsHelper;
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                NotificationSectionsManager notificationSectionsManager = notificationStackScrollLayout.mSectionsManager;
                notificationTargetsHelper.getClass();
                ExpandableNotificationRow expandableNotificationRow2 = expandableNotificationRow.mNotificationParent;
                ExpandableView expandableView2 = null;
                if (expandableNotificationRow2 != null) {
                    notificationChildrenContainer = expandableNotificationRow2.mChildrenContainer;
                } else {
                    notificationChildrenContainer = null;
                }
                List list = SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.filter(new ViewGroupKt$children$1(notificationStackScrollLayout), new Function1() { // from class: com.android.systemui.statusbar.notification.stack.NotificationTargetsHelper$findRoundableTargets$$inlined$filterIsInstance$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(obj instanceof ExpandableView);
                    }
                }), new Function1() { // from class: com.android.systemui.statusbar.notification.stack.NotificationTargetsHelper$findRoundableTargets$visibleStackChildren$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        boolean z2;
                        if (((ExpandableView) obj).getVisibility() == 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        return Boolean.valueOf(z2);
                    }
                }));
                if (expandableNotificationRow2 != null && notificationChildrenContainer != null) {
                    List list2 = notificationChildrenContainer.mAttachedChildren;
                    ArrayList arrayList = new ArrayList();
                    Iterator it = ((ArrayList) list2).iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (((ExpandableNotificationRow) next).getVisibility() == 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            arrayList.add(next);
                        }
                    }
                    int indexOf = arrayList.indexOf(expandableNotificationRow);
                    roundable = (ExpandableNotificationRow) CollectionsKt___CollectionsKt.getOrNull(indexOf - 1, arrayList);
                    if (roundable == null) {
                        roundable = notificationChildrenContainer.mNotificationHeaderWrapper;
                    }
                    expandableView = (ExpandableNotificationRow) CollectionsKt___CollectionsKt.getOrNull(indexOf + 1, arrayList);
                    if (expandableView == null) {
                        expandableView = (ExpandableView) CollectionsKt___CollectionsKt.getOrNull(list.indexOf(expandableNotificationRow2) + 1, list);
                    }
                } else {
                    int indexOf2 = list.indexOf(expandableNotificationRow);
                    ExpandableView expandableView3 = (ExpandableView) CollectionsKt___CollectionsKt.getOrNull(indexOf2 - 1, list);
                    if (expandableView3 != null && (!notificationSectionsManager.beginsSection(expandableNotificationRow, expandableView3))) {
                        roundable = expandableView3;
                    } else {
                        roundable = null;
                    }
                    ExpandableView expandableView4 = (ExpandableView) CollectionsKt___CollectionsKt.getOrNull(indexOf2 + 1, list);
                    if (expandableView4 != null && (!notificationSectionsManager.beginsSection(expandableView4, expandableNotificationRow))) {
                        expandableView2 = expandableView4;
                    }
                    expandableView = expandableView2;
                }
                new RoundableTargets(roundable, expandableNotificationRow, expandableView);
                notificationStackScrollLayout.mController.mNotificationRoundnessManager.getClass();
                notificationStackScrollLayout.updateFirstAndLastBackgroundViews();
                notificationStackScrollLayout.requestDisallowInterceptTouchEvent(true);
                notificationStackScrollLayout.updateContinuousShadowDrawing();
                notificationStackScrollLayout.updateContinuousBackgroundDrawing();
                notificationStackScrollLayout.requestChildrenUpdate();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotifStackControllerImpl implements NotifStackController {
        public /* synthetic */ NotifStackControllerImpl(NotificationStackScrollLayoutController notificationStackScrollLayoutController, int i) {
            this();
        }

        private NotifStackControllerImpl() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationListContainerImpl implements NotificationListContainer, PipelineDumpable {
        public /* synthetic */ NotificationListContainerImpl(NotificationStackScrollLayoutController notificationStackScrollLayoutController, int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.notification.collection.PipelineDumpable
        public final void dumpPipeline(PipelineDumper pipelineDumper) {
            pipelineDumper.dump(NotificationStackScrollLayoutController.this, "NotificationStackScrollLayoutController.this");
        }

        @Override // com.android.systemui.statusbar.notification.VisibilityLocationProvider
        public final boolean isInVisibleLocation(NotificationEntry notificationEntry) {
            NotificationStackScrollLayoutController.this.getClass();
            return NotificationStackScrollLayoutController.isInVisibleLocation(notificationEntry);
        }

        @Override // com.android.systemui.statusbar.notification.row.ExpandableView.OnHeightChangedListener
        public final void onHeightChanged(ExpandableView expandableView, boolean z) {
            NotificationStackScrollLayoutController.this.mView.onChildHeightChanged(expandableView, z);
        }

        @Override // com.android.systemui.statusbar.notification.row.ExpandableView.OnHeightChangedListener
        public final void onReset(ExpandableNotificationRow expandableNotificationRow) {
            boolean z;
            NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayoutController.this.mView;
            if ((!notificationStackScrollLayout.mAnimationsEnabled && !notificationStackScrollLayout.mPulsing) || (!notificationStackScrollLayout.mIsExpanded && !NotificationStackScrollLayout.isPinnedHeadsUp(expandableNotificationRow))) {
                z = false;
            } else {
                z = true;
            }
            expandableNotificationRow.setAnimationRunning(z);
            expandableNotificationRow.setChronometerRunning(notificationStackScrollLayout.mIsExpanded);
        }

        public final void setExpandingNotification(ExpandableNotificationRow expandableNotificationRow) {
            NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayoutController.this.mView;
            ExpandableNotificationRow expandableNotificationRow2 = notificationStackScrollLayout.mExpandingNotificationRow;
            if (expandableNotificationRow2 != null && expandableNotificationRow == null) {
                expandableNotificationRow2.mExpandingClipPath = null;
                expandableNotificationRow2.invalidate();
                ExpandableNotificationRow expandableNotificationRow3 = notificationStackScrollLayout.mExpandingNotificationRow.mNotificationParent;
                if (expandableNotificationRow3 != null) {
                    expandableNotificationRow3.mExpandingClipPath = null;
                    expandableNotificationRow3.invalidate();
                }
            }
            notificationStackScrollLayout.mExpandingNotificationRow = expandableNotificationRow;
            notificationStackScrollLayout.updateLaunchedNotificationClipPath();
            notificationStackScrollLayout.requestChildrenUpdate();
        }

        private NotificationListContainerImpl() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    enum NotificationPanelEvent implements UiEventLogger.UiEventEnum {
        INVALID(0),
        DISMISS_ALL_NOTIFICATIONS_PANEL(312),
        DISMISS_SILENT_NOTIFICATIONS_PANEL(314);

        private final int mId;

        NotificationPanelEvent(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TouchHandler implements Gefingerpoken {
        public final SecPanelLogger mPanelLogger = (SecPanelLogger) Dependency.get(SecPanelLogger.class);
        public final SecTouchLogHelper mTouchLogHelper = new SecTouchLogHelper();

        public TouchHandler() {
        }

        @Override // com.android.systemui.Gefingerpoken
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            this.mTouchLogHelper.printOnInterceptTouchEventLog(motionEvent, "StackScrollerController", "");
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            NotificationStackScrollLayoutController.m1420$$Nest$mupdateEventAvailability(notificationStackScrollLayoutController, motionEvent);
            if (!notificationStackScrollLayoutController.mIsStartFromContentsBound) {
                float rawX = motionEvent.getRawX();
                motionEvent.getRawY();
                if (!notificationStackScrollLayoutController.isInContentBounds(rawX)) {
                    return false;
                }
            }
            NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
            notificationStackScrollLayout.getClass();
            if (motionEvent.getAction() == 0) {
                notificationStackScrollLayout.mExpandedInThisMotion = false;
                notificationStackScrollLayout.mOnlyScrollingInThisMotion = !notificationStackScrollLayout.mScroller.isFinished();
                notificationStackScrollLayout.mDisallowScrollingInThisMotion = false;
                notificationStackScrollLayout.mDisallowDismissInThisMotion = false;
                notificationStackScrollLayout.mTouchIsClick = true;
                notificationStackScrollLayout.mInitialTouchX = motionEvent.getX();
                notificationStackScrollLayout.mInitialTouchY = motionEvent.getY();
            }
            notificationStackScrollLayout.handleEmptySpaceClick(motionEvent);
            NotificationGutsManager notificationGutsManager = notificationStackScrollLayoutController.mNotificationGutsManager;
            NotificationGuts notificationGuts = notificationGutsManager.mNotificationGutsExposed;
            if (notificationStackScrollLayoutController.mLongPressedView != null) {
                z = notificationStackScrollLayoutController.mSwipeHelper.onInterceptTouchEvent(motionEvent);
            } else {
                z = false;
            }
            if (notificationStackScrollLayoutController.mLongPressedView == null && !notificationStackScrollLayoutController.mSwipeHelper.mIsSwiping && !notificationStackScrollLayout.mOnlyScrollingInThisMotion && notificationGuts == null) {
                z2 = notificationStackScrollLayout.mExpandHelper.onInterceptTouchEvent(motionEvent);
            } else {
                z2 = false;
            }
            if (notificationStackScrollLayoutController.mLongPressedView == null && !notificationStackScrollLayoutController.mSwipeHelper.mIsSwiping && !notificationStackScrollLayout.mExpandingNotification) {
                z3 = notificationStackScrollLayout.onInterceptTouchEventScroll(motionEvent);
            } else {
                z3 = false;
            }
            if (notificationStackScrollLayoutController.mLongPressedView == null && !notificationStackScrollLayout.mIsBeingDragged && !notificationStackScrollLayout.mExpandingNotification && !notificationStackScrollLayout.mExpandedInThisMotion && !notificationStackScrollLayout.mOnlyScrollingInThisMotion && !notificationStackScrollLayout.mDisallowDismissInThisMotion) {
                z4 = notificationStackScrollLayoutController.mSwipeHelper.onInterceptTouchEvent(motionEvent);
            } else {
                z4 = false;
            }
            if (motionEvent.getActionMasked() == 1) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (!NotificationSwipeHelper.isTouchInView(notificationGuts, motionEvent) && z5 && !z4 && !z2 && !z3) {
                notificationStackScrollLayout.mCheckForLeavebehind = false;
                notificationGutsManager.closeAndSaveGuts(true, false, false, false);
            }
            if (motionEvent.getActionMasked() == 1) {
                notificationStackScrollLayout.mCheckForLeavebehind = true;
            }
            InteractionJankMonitor interactionJankMonitor = notificationStackScrollLayoutController.mJankMonitor;
            if (interactionJankMonitor != null && z3 && motionEvent.getActionMasked() != 0) {
                interactionJankMonitor.begin(notificationStackScrollLayout, 2);
            }
            if (!z4 && !z3 && !z2 && !z) {
                return false;
            }
            return true;
        }

        @Override // com.android.systemui.Gefingerpoken
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            this.mTouchLogHelper.printOnTouchEventLog(motionEvent, "StackScrollerController", "");
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
            if (!notificationStackScrollLayoutController.mIsStartFromContentsBound) {
                float rawX = motionEvent.getRawX();
                motionEvent.getRawY();
                if (!notificationStackScrollLayoutController.isInContentBounds(rawX)) {
                    return false;
                }
            }
            NotificationGuts notificationGuts = notificationStackScrollLayoutController.mNotificationGutsManager.mNotificationGutsExposed;
            if (motionEvent.getActionMasked() != 3 && motionEvent.getActionMasked() != 1) {
                z = false;
            } else {
                z = true;
            }
            NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
            notificationStackScrollLayout.handleEmptySpaceClick(motionEvent);
            if (notificationGuts != null && notificationStackScrollLayoutController.mLongPressedView != null) {
                z2 = notificationStackScrollLayoutController.mSwipeHelper.onTouchEvent(motionEvent);
            } else {
                z2 = false;
            }
            boolean z6 = notificationStackScrollLayout.mOnlyScrollingInThisMotion;
            boolean z7 = notificationStackScrollLayout.mExpandingNotification;
            if (notificationStackScrollLayoutController.mLongPressedView == null && notificationStackScrollLayout.mIsExpanded && !notificationStackScrollLayoutController.mSwipeHelper.mIsSwiping && !z6 && notificationGuts == null) {
                ExpandHelper expandHelper = notificationStackScrollLayout.mExpandHelper;
                if (z) {
                    expandHelper.mOnlyMovements = false;
                }
                z3 = expandHelper.onTouchEvent(motionEvent);
                boolean z8 = notificationStackScrollLayout.mExpandingNotification;
                if (notificationStackScrollLayout.mExpandedInThisMotion && !z8 && z7 && !notificationStackScrollLayout.mDisallowScrollingInThisMotion) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.setAction(0);
                    notificationStackScrollLayout.onScrollTouch(obtain);
                    obtain.recycle();
                }
                z7 = z8;
            } else {
                z3 = false;
            }
            if (notificationStackScrollLayoutController.mLongPressedView == null && notificationStackScrollLayout.mIsExpanded && !notificationStackScrollLayoutController.mSwipeHelper.mIsSwiping && !z7 && !notificationStackScrollLayout.mDisallowScrollingInThisMotion) {
                z4 = notificationStackScrollLayout.onScrollTouch(motionEvent);
            } else {
                z4 = false;
            }
            if (notificationStackScrollLayoutController.mLongPressedView == null && !notificationStackScrollLayout.mIsBeingDragged && !z7 && !notificationStackScrollLayout.mExpandedInThisMotion && !z6 && !notificationStackScrollLayout.mDisallowDismissInThisMotion) {
                z5 = notificationStackScrollLayoutController.mSwipeHelper.onTouchEvent(motionEvent);
            } else {
                z5 = false;
            }
            if (notificationGuts != null && !NotificationSwipeHelper.isTouchInView(notificationGuts, motionEvent)) {
                NotificationGuts.GutsContent gutsContent = notificationGuts.mGutsContent;
                if ((gutsContent instanceof NotificationSnooze) && ((((NotificationSnooze) gutsContent).mExpanded && z) || (!z5 && z4))) {
                    notificationStackScrollLayoutController.checkSnoozeLeavebehind();
                }
            }
            if (motionEvent.getActionMasked() == 1) {
                if (!z5) {
                    notificationStackScrollLayoutController.mFalsingManager.isFalseTouch(11);
                }
                notificationStackScrollLayout.mCheckForLeavebehind = true;
            }
            NotificationStackScrollLayoutController.m1420$$Nest$mupdateEventAvailability(notificationStackScrollLayoutController, motionEvent);
            boolean z9 = notificationStackScrollLayout.mIsExpanded;
            SecPanelLoggerImpl secPanelLoggerImpl = (SecPanelLoggerImpl) this.mPanelLogger;
            if (((StatusBarStateControllerImpl) secPanelLoggerImpl.sysuiStatusBarStateController).mState != 1 && motionEvent.getAction() != 2) {
                StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("NSSL.onTouchEvent(), horizontalSwipeWantsIt:", z5, ", scrollerWantsIt:", z4, ", expandWantsIt:");
                KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, z3, ", expandWantsIt:", z2, ", isExpanded:");
                m.append(z9);
                secPanelLoggerImpl.writer.logPanel("NSSL_TOUCH", m.toString());
            }
            int actionMasked = motionEvent.getActionMasked();
            InteractionJankMonitor interactionJankMonitor = notificationStackScrollLayoutController.mJankMonitor;
            if (interactionJankMonitor == null) {
                Log.w("StackScrollerController", "traceJankOnTouchEvent, mJankMonitor is null");
            } else if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked == 3 && z4) {
                        interactionJankMonitor.cancel(2);
                    }
                } else if (z4 && !notificationStackScrollLayout.mFlingAfterUpEvent) {
                    interactionJankMonitor.end(2);
                }
            } else if (z4) {
                interactionJankMonitor.begin(notificationStackScrollLayout, 2);
            }
            if (z5 || z4 || z3 || z2) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: -$$Nest$mupdateEventAvailability, reason: not valid java name */
    public static void m1420$$Nest$mupdateEventAvailability(NotificationStackScrollLayoutController notificationStackScrollLayoutController, MotionEvent motionEvent) {
        notificationStackScrollLayoutController.getClass();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 3) {
                    notificationStackScrollLayoutController.mIsStartFromContentsBound = false;
                    return;
                }
                return;
            }
            notificationStackScrollLayoutController.mIsStartFromContentsBound = false;
            return;
        }
        float rawX = motionEvent.getRawX();
        motionEvent.getY();
        notificationStackScrollLayoutController.mIsStartFromContentsBound = notificationStackScrollLayoutController.isInContentBounds(rawX);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v10, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$8, com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin$OnMenuEventListener] */
    /* JADX WARN: Type inference failed for: r12v11, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$10, com.android.systemui.statusbar.policy.OnHeadsUpChangedListener] */
    /* JADX WARN: Type inference failed for: r12v12, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$11] */
    /* JADX WARN: Type inference failed for: r12v13, types: [com.android.systemui.util.SettingsHelper$OnChangedCallback, com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$12] */
    /* JADX WARN: Type inference failed for: r12v3, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda0, java.util.function.IntConsumer] */
    /* JADX WARN: Type inference failed for: r12v4, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$4, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v9, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$7, java.lang.Object] */
    public NotificationStackScrollLayoutController(final NotificationStackScrollLayout notificationStackScrollLayout, boolean z, NotificationGutsManager notificationGutsManager, NotificationVisibilityProvider notificationVisibilityProvider, HeadsUpManagerPhone headsUpManagerPhone, NotificationRoundnessManager notificationRoundnessManager, TunerService tunerService, DeviceProvisionedController deviceProvisionedController, DynamicPrivacyController dynamicPrivacyController, ConfigurationController configurationController, SysuiStatusBarStateController sysuiStatusBarStateController, KeyguardMediaController keyguardMediaController, KeyguardBypassController keyguardBypassController, ZenModeController zenModeController, NotificationLockscreenUserManager notificationLockscreenUserManager, Optional<NotificationListViewModel> optional, MetricsLogger metricsLogger, DumpManager dumpManager, FalsingCollector falsingCollector, FalsingManager falsingManager, Resources resources, NotificationSwipeHelper.Builder builder, CentralSurfaces centralSurfaces, ScrimController scrimController, GroupExpansionManager groupExpansionManager, SectionHeaderController sectionHeaderController, NotifPipeline notifPipeline, NotifPipelineFlags notifPipelineFlags, NotifCollection notifCollection, LockscreenShadeTransitionController lockscreenShadeTransitionController, UiEventLogger uiEventLogger, NotificationRemoteInputManager notificationRemoteInputManager, VisibilityLocationProviderDelegator visibilityLocationProviderDelegator, SeenNotificationsProvider seenNotificationsProvider, ShadeController shadeController, InteractionJankMonitor interactionJankMonitor, StackStateLogger stackStateLogger, NotificationStackScrollLogger notificationStackScrollLogger, NotificationStackSizeCalculator notificationStackSizeCalculator, NotificationIconAreaController notificationIconAreaController, FeatureFlags featureFlags, NotificationTargetsHelper notificationTargetsHelper, SecureSettings secureSettings, NotificationDismissibilityProvider notificationDismissibilityProvider, ActivityStarter activityStarter, NotificationShelfManager notificationShelfManager, LockscreenNotificationManager lockscreenNotificationManager) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        int i = 0;
        this.mNotificationListContainer = new NotificationListContainerImpl(this, i);
        this.mNotifStackController = new NotifStackControllerImpl(this, i);
        ?? r12 = new IntConsumer() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda0
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                if (i2 == 4 && notificationStackScrollLayoutController.mHasDelayedForceLayout) {
                    Log.d("StackScrollerController", "do delayed stackScroller forceLayout");
                    notificationStackScrollLayout2.forceLayout();
                }
                notificationStackScrollLayoutController.mHasDelayedForceLayout = false;
                notificationStackScrollLayout2.removeCallbacks(notificationStackScrollLayoutController.mForceLayoutTimeOutRunnable);
            }
        };
        this.mKeyguardVisibilityListener = r12;
        this.mHasDelayedForceLayout = false;
        this.mForceLayoutTimeOutRunnable = new AnonymousClass1();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        View.OnAttachStateChangeListener onAttachStateChangeListener2 = new View.OnAttachStateChangeListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.3
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                ((ConfigurationControllerImpl) notificationStackScrollLayoutController.mConfigurationController).addCallback(notificationStackScrollLayoutController.mConfigurationListener);
                NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = NotificationStackScrollLayoutController.this;
                ((ZenModeControllerImpl) notificationStackScrollLayoutController2.mZenModeController).addCallback(notificationStackScrollLayoutController2.mZenModeControllerCallback);
                NotificationStackScrollLayoutController notificationStackScrollLayoutController3 = NotificationStackScrollLayoutController.this;
                int i2 = ((StatusBarStateControllerImpl) notificationStackScrollLayoutController3.mStatusBarStateController).mState;
                if (i2 != notificationStackScrollLayoutController3.mBarState) {
                    notificationStackScrollLayoutController3.mStateListener.onStateChanged(i2);
                    NotificationStackScrollLayoutController.this.mStateListener.onStatePostChange();
                }
                NotificationShelfManager notificationShelfManager2 = NotificationStackScrollLayoutController.this.mShelfManager;
                ((ConfigurationControllerImpl) notificationShelfManager2.configurationController).addCallback(notificationShelfManager2);
                NotificationStackScrollLayoutController notificationStackScrollLayoutController4 = NotificationStackScrollLayoutController.this;
                SysuiStatusBarStateController sysuiStatusBarStateController2 = notificationStackScrollLayoutController4.mStatusBarStateController;
                AnonymousClass6 anonymousClass6 = notificationStackScrollLayoutController4.mStateListener;
                StatusBarStateControllerImpl statusBarStateControllerImpl = (StatusBarStateControllerImpl) sysuiStatusBarStateController2;
                synchronized (statusBarStateControllerImpl.mListeners) {
                    statusBarStateControllerImpl.addListenerInternalLocked(anonymousClass6, 2);
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                ((ConfigurationControllerImpl) notificationStackScrollLayoutController.mConfigurationController).removeCallback(notificationStackScrollLayoutController.mConfigurationListener);
                NotificationStackScrollLayoutController notificationStackScrollLayoutController2 = NotificationStackScrollLayoutController.this;
                ((ZenModeControllerImpl) notificationStackScrollLayoutController2.mZenModeController).removeCallback(notificationStackScrollLayoutController2.mZenModeControllerCallback);
                NotificationStackScrollLayoutController notificationStackScrollLayoutController3 = NotificationStackScrollLayoutController.this;
                ((StatusBarStateControllerImpl) notificationStackScrollLayoutController3.mStatusBarStateController).removeCallback((StatusBarStateController.StateListener) notificationStackScrollLayoutController3.mStateListener);
            }
        };
        this.mOnAttachStateChangeListener = onAttachStateChangeListener2;
        ?? r122 = new DeviceProvisionedController.DeviceProvisionedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.4
            @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
            public final void onDeviceProvisionedChanged() {
                updateCurrentUserIsSetup();
            }

            @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
            public final void onUserSetupChanged() {
                updateCurrentUserIsSetup();
            }

            @Override // com.android.systemui.statusbar.policy.DeviceProvisionedController.DeviceProvisionedListener
            public final void onUserSwitched() {
                updateCurrentUserIsSetup();
            }

            public final void updateCurrentUserIsSetup() {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                boolean isCurrentUserSetup = ((DeviceProvisionedControllerImpl) notificationStackScrollLayoutController.mDeviceProvisionedController).isCurrentUserSetup();
                if (notificationStackScrollLayout2.mIsCurrentUserSetup != isCurrentUserSetup) {
                    notificationStackScrollLayout2.mIsCurrentUserSetup = isCurrentUserSetup;
                    notificationStackScrollLayout2.updateFooter();
                }
            }
        };
        this.mDeviceProvisionedListener = r122;
        ?? r10 = new DynamicPrivacyController.Listener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda1
            @Override // com.android.systemui.statusbar.notification.DynamicPrivacyController.Listener
            public final void onDynamicPrivacyChanged() {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                if (notificationStackScrollLayout2.mIsExpanded) {
                    notificationStackScrollLayout2.mAnimateBottomOnLayout = true;
                }
                notificationStackScrollLayout2.post(new NotificationStackScrollLayoutController$$ExternalSyntheticLambda2(notificationStackScrollLayoutController, 0));
            }
        };
        this.mDynamicPrivacyControllerListener = r10;
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.5
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                NotificationStackScrollLayoutController.this.mNotificationStackSizeCalculator.updateResources();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onDensityOrFontScaleChanged() {
                StringBuilder sb = new StringBuilder("updateShowEmptyShadeView: CurrentState: ");
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                sb.append(StatusBarState.toString(((StatusBarStateControllerImpl) notificationStackScrollLayoutController.mStatusBarStateController).mUpcomingState));
                sb.append(" isQsFullScreen: ");
                NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                sb.append(notificationStackScrollLayout2.mQsFullScreen);
                sb.append(" VisibleNotificationCount: ");
                sb.append(notificationStackScrollLayoutController.mNotifStats.numActiveNotifs);
                Log.d("StackScrollerController", sb.toString());
                notificationStackScrollLayoutController.updateShowEmptyShadeView();
                notificationStackScrollLayout2.inflateFooterView();
                notificationStackScrollLayout2.inflateEmptyShadeView();
                notificationStackScrollLayout2.updateFooter();
                notificationStackScrollLayout2.mSectionsManager.reinflateViews();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onThemeChanged() {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                int dimensionPixelSize = notificationStackScrollLayout2.getResources().getDimensionPixelSize(R.dimen.notification_corner_radius);
                if (notificationStackScrollLayout2.mCornerRadius != dimensionPixelSize) {
                    notificationStackScrollLayout2.mCornerRadius = dimensionPixelSize;
                    notificationStackScrollLayout2.invalidate();
                }
                NotificationStackScrollLayout notificationStackScrollLayout3 = notificationStackScrollLayoutController.mView;
                notificationStackScrollLayout3.updateBgColor();
                notificationStackScrollLayout3.updateDecorViews();
                notificationStackScrollLayout3.inflateFooterView();
                notificationStackScrollLayout3.inflateEmptyShadeView();
                notificationStackScrollLayout3.updateFooter();
                notificationStackScrollLayout3.mSectionsManager.reinflateViews();
                notificationStackScrollLayoutController.updateShowEmptyShadeView();
                notificationStackScrollLayoutController.updateFooter();
            }

            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onUiModeChanged() {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                notificationStackScrollLayoutController.mView.updateBgColor();
                notificationStackScrollLayoutController.mView.updateDecorViews();
                notificationStackScrollLayoutController.mView.updateSectionColor();
            }
        };
        NotifStats.Companion.getClass();
        this.mNotifStats = NotifStats.empty;
        this.mStateListener = new AnonymousClass6();
        ?? r123 = new NotificationLockscreenUserManager.UserChangedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.7
            @Override // com.android.systemui.statusbar.NotificationLockscreenUserManager.UserChangedListener
            public final void onUserChanged(int i2) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                notificationStackScrollLayoutController.mView.updateSensitiveness(false, ((NotificationLockscreenUserManagerImpl) notificationStackScrollLayoutController.mLockscreenUserManager).isAnyProfilePublicMode());
                notificationStackScrollLayoutController.mHistoryEnabled = null;
                notificationStackScrollLayoutController.updateFooter();
            }
        };
        this.mLockscreenUserChangeListener = r123;
        ?? r124 = new NotificationMenuRowPlugin.OnMenuEventListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.8
            @Override // com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin.OnMenuEventListener
            public final void onMenuClicked(View view, int i2, int i3, NotificationMenuRowPlugin.MenuItem menuItem) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                if (!notificationStackScrollLayoutController.mAllowLongPress) {
                    return;
                }
                if (view instanceof ExpandableNotificationRow) {
                    notificationStackScrollLayoutController.mMetricsLogger.write(((ExpandableNotificationRow) view).mEntry.mSbn.getLogMaker().setCategory(333).setType(4));
                }
                notificationStackScrollLayoutController.mNotificationGutsManager.openGuts(view, i2, i3, menuItem);
            }

            @Override // com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin.OnMenuEventListener
            public final void onMenuReset(View view) {
                NotificationSwipeHelper notificationSwipeHelper = NotificationStackScrollLayoutController.this.mSwipeHelper;
                View view2 = notificationSwipeHelper.mTranslatingParentView;
                if (view2 != null && view == view2) {
                    notificationSwipeHelper.mMenuExposedView = null;
                    notificationSwipeHelper.setTranslatingParentView(null);
                }
            }

            @Override // com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin.OnMenuEventListener
            public final void onMenuShown(View view) {
                if (view instanceof ExpandableNotificationRow) {
                    ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                    NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                    notificationStackScrollLayoutController.mMetricsLogger.write(expandableNotificationRow.mEntry.mSbn.getLogMaker().setCategory(CustomDeviceManager.DESTINATION_ADDRESS).setType(4));
                    NotificationSwipeHelper notificationSwipeHelper = notificationStackScrollLayoutController.mSwipeHelper;
                    notificationSwipeHelper.mMenuExposedView = notificationSwipeHelper.mTranslatingParentView;
                    AnonymousClass9 anonymousClass9 = (AnonymousClass9) notificationSwipeHelper.mCallback;
                    NotificationStackScrollLayoutController.this.mFalsingCollector.getClass();
                    Handler handler = notificationSwipeHelper.getHandler();
                    if (NotificationStackScrollLayoutController.this.mView.onKeyguard()) {
                        handler.removeCallbacks(notificationSwipeHelper.getFalsingCheck());
                        handler.postDelayed(notificationSwipeHelper.getFalsingCheck(), 4000L);
                    }
                    NotificationGutsManager notificationGutsManager2 = notificationStackScrollLayoutController.mNotificationGutsManager;
                    notificationGutsManager2.closeAndSaveGuts(true, false, false, false);
                    NotificationMenuRowPlugin notificationMenuRowPlugin = expandableNotificationRow.mMenuRow;
                    if (notificationMenuRowPlugin.shouldShowGutsOnSnapOpen()) {
                        NotificationMenuRowPlugin.MenuItem menuItemToExposeOnSnap = notificationMenuRowPlugin.menuItemToExposeOnSnap();
                        if (menuItemToExposeOnSnap != null) {
                            Point revealAnimationOrigin = notificationMenuRowPlugin.getRevealAnimationOrigin();
                            notificationGutsManager2.openGuts(view, revealAnimationOrigin.x, revealAnimationOrigin.y, menuItemToExposeOnSnap);
                        } else {
                            Log.e("StackScrollerController", "Provider has shouldShowGutsOnSnapOpen, but provided no menu item in menuItemtoExposeOnSnap. Skipping.");
                        }
                        notificationStackScrollLayoutController.mSwipeHelper.resetExposedMenuView(false, true);
                    }
                }
            }
        };
        this.mMenuEventListener = r124;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9();
        this.mNotificationCallback = anonymousClass9;
        ?? r125 = new OnHeadsUpChangedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.10
            @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
            public final void onHeadsUpPinnedModeChanged(boolean z2) {
                NotificationStackScrollLayout notificationStackScrollLayout2 = NotificationStackScrollLayoutController.this.mView;
                notificationStackScrollLayout2.mInHeadsUpPinnedMode = z2;
                notificationStackScrollLayout2.updateClipping();
            }

            @Override // com.android.systemui.statusbar.policy.OnHeadsUpChangedListener
            public final void onHeadsUpStateChanged(NotificationEntry notificationEntry, boolean z2) {
                NotificationEntry notificationEntry2;
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                long count = notificationStackScrollLayoutController.mHeadsUpManager.getAllEntries().count();
                HeadsUpManager.HeadsUpEntry topHeadsUpEntry = notificationStackScrollLayoutController.mHeadsUpManager.getTopHeadsUpEntry();
                if (topHeadsUpEntry != null) {
                    notificationEntry2 = topHeadsUpEntry.mEntry;
                } else {
                    notificationEntry2 = null;
                }
                NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                notificationStackScrollLayout2.mNumHeadsUp = count;
                notificationStackScrollLayout2.mAmbientState.getClass();
                notificationStackScrollLayout2.mTopHeadsUpEntry = notificationEntry2;
                notificationStackScrollLayout2.generateHeadsUpAnimation(notificationEntry.row, z2);
            }
        };
        this.mOnHeadsUpChangedListener = r125;
        this.mZenModeControllerCallback = new ZenModeController.Callback() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.11
            @Override // com.android.systemui.statusbar.policy.ZenModeController.Callback
            public final void onZenChanged(int i2) {
                NotificationStackScrollLayoutController.this.updateShowEmptyShadeView();
            }
        };
        ?? r126 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.12
            /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
            
                if (r0.mItemLists.get("wallpapertheme_state").getIntValue() == 1) goto L8;
             */
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onChanged(android.net.Uri r4) {
                /*
                    r3 = this;
                    java.lang.Class<com.android.systemui.util.SettingsHelper> r0 = com.android.systemui.util.SettingsHelper.class
                    java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
                    com.android.systemui.util.SettingsHelper r0 = (com.android.systemui.util.SettingsHelper) r0
                    r0.getClass()
                    boolean r1 = com.samsung.android.rune.CoreRune.MW_FREEFORM_MINIMIZE_CONTAINER
                    if (r1 == 0) goto L20
                    com.android.systemui.util.SettingsHelper$ItemMap r1 = r0.mItemLists
                    java.lang.String r2 = "wallpapertheme_state"
                    com.android.systemui.util.SettingsHelper$Item r1 = r1.get(r2)
                    int r1 = r1.getIntValue()
                    r2 = 1
                    if (r1 != r2) goto L20
                    goto L21
                L20:
                    r2 = 0
                L21:
                    if (r2 != 0) goto L24
                    return
                L24:
                    java.lang.String r1 = "notification_apply_wallpaper_theme"
                    android.net.Uri r1 = android.provider.Settings.Global.getUriFor(r1)
                    boolean r4 = r4.equals(r1)
                    if (r4 == 0) goto L74
                    boolean r4 = r0.isApplyWallpaperThemeToNotif()
                    if (r4 == 0) goto L39
                    java.lang.String r4 = " WALLPAPER COLOR"
                    goto L3b
                L39:
                    java.lang.String r4 = " SMALL ICON COLOR"
                L3b:
                    java.lang.String r0 = "apply notification icon color to"
                    java.lang.String r4 = r0.concat(r4)
                    java.lang.String r0 = "StackScrollerController"
                    android.util.Log.d(r0, r4)
                    java.lang.Class<noticolorpicker.NotificationColorPicker> r4 = noticolorpicker.NotificationColorPicker.class
                    java.lang.Object r4 = com.android.systemui.Dependency.get(r4)
                    noticolorpicker.NotificationColorPicker r4 = (noticolorpicker.NotificationColorPicker) r4
                    com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController r3 = com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.this
                    com.android.systemui.statusbar.notification.collection.NotifCollection r3 = r3.mNotifCollection
                    r3.getClass()
                    com.android.systemui.util.Assert.isMainThread()
                    java.util.Collection r3 = r3.mReadOnlyNotificationSet
                    java.util.Iterator r3 = r3.iterator()
                L5e:
                    boolean r0 = r3.hasNext()
                    if (r0 == 0) goto L74
                    java.lang.Object r0 = r3.next()
                    com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r0
                    com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r0 = r0.row
                    if (r0 == 0) goto L5e
                    boolean r1 = r0.mDimmed
                    r4.updateAllTextViewColors(r0, r1)
                    goto L5e
                L74:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.AnonymousClass12.onChanged(android.net.Uri):void");
            }
        };
        this.mWallpaperThemeCallback = r126;
        this.mKeyguardUpdateCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.16
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricAuthenticated(int i2, BiometricSourceType biometricSourceType, boolean z2) {
                if (biometricSourceType == BiometricSourceType.FACE) {
                    NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                    if (!((CentralSurfacesImpl) notificationStackScrollLayoutController.mCentralSurfaces).mBiometricUnlockController.mKeyguardBypassController.getLockStayEnabled()) {
                        ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).getClass();
                        return;
                    }
                    NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                    notificationStackScrollLayout2.mEverythingNeedsAnimation = true;
                    notificationStackScrollLayout2.mNeedsAnimation = true;
                    notificationStackScrollLayout2.updateContentHeight();
                    notificationStackScrollLayout2.requestChildrenUpdate();
                    return;
                }
                if (biometricSourceType == BiometricSourceType.FINGERPRINT) {
                    ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).getClass();
                }
            }
        };
        this.mIsStartFromContentsBound = false;
        this.mView = notificationStackScrollLayout;
        this.mAllowLongPress = z;
        this.mNotificationGutsManager = notificationGutsManager;
        this.mVisibilityProvider = notificationVisibilityProvider;
        this.mHeadsUpManager = headsUpManagerPhone;
        this.mNotificationRoundnessManager = notificationRoundnessManager;
        this.mDeviceProvisionedController = deviceProvisionedController;
        this.mDynamicPrivacyController = dynamicPrivacyController;
        this.mConfigurationController = configurationController;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        this.mZenModeController = zenModeController;
        this.mLockscreenUserManager = notificationLockscreenUserManager;
        this.mMetricsLogger = metricsLogger;
        this.mFalsingCollector = falsingCollector;
        this.mFalsingManager = falsingManager;
        this.mCentralSurfaces = centralSurfaces;
        this.mJankMonitor = interactionJankMonitor;
        this.mNotificationStackSizeCalculator = notificationStackSizeCalculator;
        this.mGroupExpansionManager = groupExpansionManager;
        this.mNotifCollection = notifCollection;
        this.mUiEventLogger = uiEventLogger;
        this.mSeenNotificationsProvider = seenNotificationsProvider;
        this.mLockscreenNotificationManager = lockscreenNotificationManager;
        this.mNotifIconAreaController = notificationIconAreaController;
        this.mFeatureFlags = featureFlags;
        this.mNotificationTargetsHelper = notificationTargetsHelper;
        this.mSecureSettings = secureSettings;
        this.mDismissibilityProvider = notificationDismissibilityProvider;
        this.mActivityStarter = activityStarter;
        this.mShelfManager = notificationShelfManager;
        ((NotificationSectionsManager) Dependency.get(NotificationSectionsManager.class)).sectionStateProvider = this;
        notificationStackSizeCalculator.updateResources();
        notificationStackScrollLayout.mStateAnimator.mLogger = stackStateLogger;
        notificationStackScrollLayout.mController = this;
        notificationRoundnessManager.mAnimatedChildren = notificationStackScrollLayout.mChildrenToAddAnimated;
        notificationStackScrollLayout.mLogger = notificationStackScrollLogger;
        notificationStackScrollLayout.mTouchHandler = new TouchHandler();
        notificationStackScrollLayout.mCentralSurfaces = centralSurfaces;
        notificationStackScrollLayout.mActivityStarter = activityStarter;
        notificationStackScrollLayout.mClearAllAnimationListener = new NotificationStackScrollLayoutController$$ExternalSyntheticLambda3(this);
        notificationStackScrollLayout.mClearAllListener = new NotificationStackScrollLayoutController$$ExternalSyntheticLambda3(this);
        notificationStackScrollLayout.mIsRemoteInputActive = notificationRemoteInputManager.isRemoteInputActive();
        notificationStackScrollLayout.updateFooter();
        notificationRemoteInputManager.addControllerCallback(new RemoteInputController.Callback() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.13
            @Override // com.android.systemui.statusbar.RemoteInputController.Callback
            public final void onRemoteInputActive(boolean z2) {
                NotificationStackScrollLayout notificationStackScrollLayout2 = NotificationStackScrollLayoutController.this.mView;
                notificationStackScrollLayout2.mIsRemoteInputActive = z2;
                notificationStackScrollLayout2.updateFooter();
            }
        });
        notificationStackScrollLayout.mShadeController = shadeController;
        notificationStackScrollLayout.mShelfManager = notificationShelfManager;
        dumpManager.registerDumpable(notificationStackScrollLayout);
        final int i2 = 0;
        keyguardBypassController.registerOnBypassStateChangedListener(new KeyguardBypassController.OnBypassStateChangedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda7
            @Override // com.android.systemui.statusbar.phone.KeyguardBypassController.OnBypassStateChangedListener
            public final void onBypassStateChanged(boolean z2) {
                int i3 = i2;
                Object obj = this;
                switch (i3) {
                    case 0:
                        ((NotificationStackScrollLayoutController) obj).mNotificationRoundnessManager.mRoundForPulsingViews = !z2;
                        return;
                    default:
                        ((NotificationStackScrollLayout) obj).mKeyguardBypassEnabled = z2;
                        return;
                }
            }
        });
        notificationRoundnessManager.mRoundForPulsingViews = !keyguardBypassController.getBypassEnabled();
        builder.mNotificationCallback = anonymousClass9;
        builder.mOnMenuEventListener = r124;
        NotificationSwipeHelper notificationSwipeHelper = new NotificationSwipeHelper(builder.mResources, builder.mViewConfiguration, builder.mFalsingManager, builder.mFeatureFlags, builder.mNotificationCallback, builder.mOnMenuEventListener, builder.mNotificationRoundnessManager);
        builder.mDumpManager.registerDumpable(notificationSwipeHelper);
        this.mSwipeHelper = notificationSwipeHelper;
        notifPipeline.addCollectionListener(new NotifCollectionListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.14
            @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
            public final void onEntryUpdated(NotificationEntry notificationEntry) {
                boolean z2;
                float f;
                NotificationStackScrollLayout notificationStackScrollLayout2 = NotificationStackScrollLayoutController.this.mView;
                notificationStackScrollLayout2.getClass();
                if (notificationEntry.rowExists() && !notificationEntry.mSbn.isClearable()) {
                    ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                    if (!notificationStackScrollLayout2.mIsExpanded && !NotificationStackScrollLayout.isPinnedHeadsUp(expandableNotificationRow)) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    NotificationMenuRowPlugin notificationMenuRowPlugin = expandableNotificationRow.mMenuRow;
                    if (notificationMenuRowPlugin != null) {
                        if (notificationMenuRowPlugin.isMenuVisible()) {
                            f = expandableNotificationRow.getTranslation();
                        } else {
                            f = 0.0f;
                        }
                        notificationStackScrollLayout2.mSwipeHelper.snapChildIfNeeded(expandableNotificationRow, f, z2);
                    }
                }
            }
        });
        notificationStackScrollLayout.initView(notificationStackScrollLayout.getContext(), this.mSwipeHelper, notificationStackSizeCalculator);
        notificationStackScrollLayout.mKeyguardBypassEnabled = keyguardBypassController.getBypassEnabled();
        final int i3 = 1;
        keyguardBypassController.registerOnBypassStateChangedListener(new KeyguardBypassController.OnBypassStateChangedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda7
            @Override // com.android.systemui.statusbar.phone.KeyguardBypassController.OnBypassStateChangedListener
            public final void onBypassStateChanged(boolean z2) {
                int i32 = i3;
                Object obj = notificationStackScrollLayout;
                switch (i32) {
                    case 0:
                        ((NotificationStackScrollLayoutController) obj).mNotificationRoundnessManager.mRoundForPulsingViews = !z2;
                        return;
                    default:
                        ((NotificationStackScrollLayout) obj).mKeyguardBypassEnabled = z2;
                        return;
                }
            }
        });
        headsUpManagerPhone.addListener(r125);
        headsUpManagerPhone.mAnimationStateHandler = new NotificationStackScrollLayoutController$$ExternalSyntheticLambda3(notificationStackScrollLayout);
        dynamicPrivacyController.mListeners.add(r10);
        NotificationStackScrollLayoutController$$ExternalSyntheticLambda2 notificationStackScrollLayoutController$$ExternalSyntheticLambda2 = new NotificationStackScrollLayoutController$$ExternalSyntheticLambda2(notificationStackScrollLayout, 1);
        ScrimView scrimView = scrimController.mScrimBehind;
        if (scrimView == null) {
            scrimController.mScrimBehindChangeRunnable = notificationStackScrollLayoutController$$ExternalSyntheticLambda2;
        } else {
            Executor executor = scrimController.mMainExecutor;
            scrimView.mChangeRunnable = notificationStackScrollLayoutController$$ExternalSyntheticLambda2;
            scrimView.mChangeRunnableExecutor = executor;
        }
        lockscreenShadeTransitionController.nsslController = this;
        lockscreenShadeTransitionController.touchHelper.expandCallback = notificationStackScrollLayout.mExpandHelperCallback;
        NotificationLockscreenUserManagerImpl notificationLockscreenUserManagerImpl = (NotificationLockscreenUserManagerImpl) notificationLockscreenUserManager;
        ((ArrayList) notificationLockscreenUserManagerImpl.mListeners).add(r123);
        notificationLockscreenUserManagerImpl.mNotifStateChangedListeners.addIfAbsent(new NotificationLockscreenUserManager.NotificationStateChangedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda9
            @Override // com.android.systemui.statusbar.NotificationLockscreenUserManager.NotificationStateChangedListener
            public final void onNotificationStateChanged() {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                notificationStackScrollLayoutController.mView.updateSensitiveness(false, ((NotificationLockscreenUserManagerImpl) notificationStackScrollLayoutController.mLockscreenUserManager).isAnyProfilePublicMode());
            }
        });
        visibilityLocationProviderDelegator.delegate = new VisibilityLocationProvider() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda10
            @Override // com.android.systemui.statusbar.notification.VisibilityLocationProvider
            public final boolean isInVisibleLocation(NotificationEntry notificationEntry) {
                NotificationStackScrollLayoutController.this.getClass();
                return NotificationStackScrollLayoutController.isInVisibleLocation(notificationEntry);
            }
        };
        tunerService.addTunable(new TunerService.Tunable() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda4
            @Override // com.android.systemui.tuner.TunerService.Tunable
            public final void onTuningChanged(String str, String str2) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                notificationStackScrollLayoutController.getClass();
                str.getClass();
                if (!str.equals("high_priority")) {
                    if (str.equals("notification_history_enabled")) {
                        notificationStackScrollLayoutController.mHistoryEnabled = null;
                        notificationStackScrollLayoutController.updateFooter();
                        return;
                    }
                    return;
                }
                notificationStackScrollLayoutController.mView.mHighPriorityBeforeSpeedBump = "1".equals(str2);
            }
        }, "high_priority", "notification_history_enabled");
        keyguardMediaController.getClass();
        ((DeviceProvisionedControllerImpl) deviceProvisionedController).addCallback(r122);
        r122.updateCurrentUserIsSetup();
        if (notificationStackScrollLayout.isAttachedToWindow()) {
            onAttachStateChangeListener = onAttachStateChangeListener2;
            onAttachStateChangeListener.onViewAttachedToWindow(notificationStackScrollLayout);
        } else {
            onAttachStateChangeListener = onAttachStateChangeListener2;
        }
        notificationStackScrollLayout.addOnAttachStateChangeListener(onAttachStateChangeListener);
        NotificationStackScrollLayoutController$$ExternalSyntheticLambda8 notificationStackScrollLayoutController$$ExternalSyntheticLambda8 = new NotificationStackScrollLayoutController$$ExternalSyntheticLambda8(this, 1);
        SectionHeaderNodeControllerImpl sectionHeaderNodeControllerImpl = (SectionHeaderNodeControllerImpl) sectionHeaderController;
        sectionHeaderNodeControllerImpl.clearAllClickListener = notificationStackScrollLayoutController$$ExternalSyntheticLambda8;
        SectionHeaderView sectionHeaderView = sectionHeaderNodeControllerImpl._view;
        if (sectionHeaderView != null) {
            sectionHeaderView.mOnClearClickListener = notificationStackScrollLayoutController$$ExternalSyntheticLambda8;
            sectionHeaderView.mClearAllButton.setOnClickListener(notificationStackScrollLayoutController$$ExternalSyntheticLambda8);
        }
        ((HashSet) ((GroupExpansionManagerImpl) groupExpansionManager).mOnGroupChangeListeners).add(new NotificationStackScrollLayoutController$$ExternalSyntheticLambda5(this));
        optional.ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController$$ExternalSyntheticLambda6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NotificationStackScrollLayoutController notificationStackScrollLayoutController = NotificationStackScrollLayoutController.this;
                FalsingManager falsingManager2 = notificationStackScrollLayoutController.mFalsingManager;
                int i4 = NotificationListViewBinder.$r8$clinit;
                NotificationStackScrollLayout notificationStackScrollLayout2 = notificationStackScrollLayoutController.mView;
                NotificationShelf notificationShelf = (NotificationShelf) LayoutInflater.from(notificationStackScrollLayout2.getContext()).inflate(R.layout.status_bar_notification_shelf, (ViewGroup) notificationStackScrollLayout2, false);
                NotificationShelfViewBinder notificationShelfViewBinder = NotificationShelfViewBinder.INSTANCE;
                NotificationShelfViewModel notificationShelfViewModel = ((NotificationListViewModel) obj).shelf;
                notificationShelfViewBinder.getClass();
                NotificationShelfViewBinder.bind(notificationShelf, notificationShelfViewModel, falsingManager2, notificationStackScrollLayoutController.mNotifIconAreaController);
                FeatureFlags featureFlags2 = notificationStackScrollLayout2.mAmbientState.mFeatureFlags;
                NotificationShelfController.checkRefactorFlagEnabled();
            }
        });
        ((NotificationIconTransitionController) Dependency.get(NotificationIconTransitionController.class)).mNotificationStackScrollLayout = notificationStackScrollLayout;
        if (NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE) {
            ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).registerCallback(this.mKeyguardUpdateCallback);
        }
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(r126, Settings.Global.getUriFor("notification_apply_wallpaper_theme"));
        ((KeyguardVisibilityMonitor) Dependency.get(KeyguardVisibilityMonitor.class)).addVisibilityChangedListener(r12);
        ArrayList arrayList = (ArrayList) ((KeyguardFoldControllerImpl) ((KeyguardFoldController) Dependency.get(KeyguardFoldController.class))).foldOpenModeListeners;
        if (arrayList.contains(anonymousClass2)) {
            return;
        }
        arrayList.add(anonymousClass2);
    }

    public static boolean isInVisibleLocation(NotificationEntry notificationEntry) {
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        if (expandableNotificationRow == null || (expandableNotificationRow.mViewState.location & 5) == 0 || expandableNotificationRow.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public final void checkSnoozeLeavebehind() {
        NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
        if (notificationStackScrollLayout.mCheckForLeavebehind) {
            this.mNotificationGutsManager.closeAndSaveGuts(true, false, false, false);
            notificationStackScrollLayout.mCheckForLeavebehind = false;
        }
    }

    public final int getHeight() {
        return this.mView.getHeight();
    }

    public final int getNotGoneChildCount() {
        NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
        int childCount = notificationStackScrollLayout.getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            ExpandableView childAtIndex = notificationStackScrollLayout.getChildAtIndex(i2);
            if (childAtIndex.getVisibility() != 8 && !childAtIndex.mWillBeGone && childAtIndex != notificationStackScrollLayout.mShelf) {
                i++;
            }
        }
        return i;
    }

    public final boolean hasNotifications(int i, boolean z) {
        boolean z2;
        boolean z3;
        if (z) {
            z2 = this.mNotifStats.hasClearableAlertingNotifs;
        } else {
            z2 = this.mNotifStats.hasNonClearableAlertingNotifs;
        }
        if (z) {
            z3 = this.mNotifStats.hasClearableSilentNotifs;
        } else {
            z3 = this.mNotifStats.hasNonClearableSilentNotifs;
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return z3;
                }
                throw new IllegalStateException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Bad selection: ", i));
            }
            return z2;
        }
        if (z3 || z2) {
            return true;
        }
        return false;
    }

    public final boolean isAddOrRemoveAnimationPending() {
        boolean z;
        NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
        if (notificationStackScrollLayout == null) {
            return false;
        }
        if (notificationStackScrollLayout.mNeedsAnimation && (!notificationStackScrollLayout.mChildrenToAddAnimated.isEmpty() || !notificationStackScrollLayout.mChildrenToRemoveAnimated.isEmpty())) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isHistoryEnabled() {
        Boolean bool = this.mHistoryEnabled;
        if (bool == null) {
            boolean z = false;
            NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
            if (notificationStackScrollLayout != null && notificationStackScrollLayout.getContext() != null) {
                if (this.mSecureSettings.getIntForUser(0, -2, "notification_history_enabled") == 1) {
                    z = true;
                }
                bool = Boolean.valueOf(z);
                this.mHistoryEnabled = bool;
            } else {
                Log.wtf("StackScrollerController", "isHistoryEnabled failed to initialize its value");
                return false;
            }
        }
        return bool.booleanValue();
    }

    public final boolean isInContentBounds(float f) {
        NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
        float f2 = notificationStackScrollLayout.mSidePaddings;
        float x = notificationStackScrollLayout.getX() + f2;
        if (x < f && f < (notificationStackScrollLayout.getWidth() + x) - (f2 * 2.0f)) {
            return true;
        }
        return false;
    }

    public final void setOverScrollAmount(int i) {
        NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
        notificationStackScrollLayout.mExtraTopInsetForFullShadeTransition = i;
        notificationStackScrollLayout.updateStackPosition(false);
        notificationStackScrollLayout.requestChildrenUpdate();
    }

    public final void setQsExpansionFraction(float f) {
        boolean z;
        NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
        float f2 = notificationStackScrollLayout.mQsExpansionFraction;
        boolean z2 = true;
        float f3 = 1.0f;
        if (f2 != f && (f2 == 1.0f || f == 1.0f)) {
            z = true;
        } else {
            z = false;
        }
        notificationStackScrollLayout.mQsExpansionFraction = f;
        notificationStackScrollLayout.updateUseRoundedRectClipping();
        int i = notificationStackScrollLayout.mOwnScrollY;
        if (i > 0) {
            notificationStackScrollLayout.setOwnScrollY((int) MathUtils.lerp(i, 0, notificationStackScrollLayout.mQsExpansionFraction));
        }
        if (z) {
            notificationStackScrollLayout.updateFooter();
        }
        FullExpansionPanelNotiAlphaController fullExpansionPanelNotiAlphaController = notificationStackScrollLayout.mFullExpansionPanelNotiAlphaController;
        float f4 = notificationStackScrollLayout.mQsExpansionFraction;
        if (!fullExpansionPanelNotiAlphaController.mKeyguardTouchAnimator.isViRunning() && !((NotificationIconTransitionController) Dependency.get(NotificationIconTransitionController.class)).misTransformAnimating && !((KeyguardEditModeControllerImpl) fullExpansionPanelNotiAlphaController.mKeyguardEditModeController).getVIRunning()) {
            z2 = false;
        }
        if (!z2) {
            if (fullExpansionPanelNotiAlphaController.mStackScrollerOverscrolling) {
                TouchAnimator touchAnimator = fullExpansionPanelNotiAlphaController.mStackScrollerAlphaAnimator;
                if (!NotiRune.NOTI_STYLE_TABLET_BG || !fullExpansionPanelNotiAlphaController.mStackScrollLayout.mQsExpandedImmediate) {
                    f3 = 0.0f;
                }
                touchAnimator.setPosition(f3);
                return;
            }
            TouchAnimator touchAnimator2 = fullExpansionPanelNotiAlphaController.mStackScrollerAlphaAnimator;
            if (!NotiRune.NOTI_STYLE_TABLET_BG || !fullExpansionPanelNotiAlphaController.mStackScrollLayout.mQsExpandedImmediate) {
                f3 = f4;
            }
            touchAnimator2.setPosition(f3);
        }
    }

    public final void updateFooter() {
        Trace.beginSection("NSSLC.updateFooter");
        this.mView.updateFooter();
        Trace.endSection();
    }

    public final void updateImportantForAccessibility() {
        int i = this.mNotifStats.numActiveNotifs;
        NotificationStackScrollLayout notificationStackScrollLayout = this.mView;
        if (i == 0 && notificationStackScrollLayout.onKeyguard()) {
            notificationStackScrollLayout.setImportantForAccessibility(2);
        } else {
            notificationStackScrollLayout.setImportantForAccessibility(1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateShowEmptyShadeView() {
        /*
            r6 = this;
            java.lang.String r0 = "NSSLC.updateShowEmptyShadeView"
            android.os.Trace.beginSection(r0)
            com.android.systemui.statusbar.notification.collection.render.NotifStats r0 = r6.mNotifStats
            int r0 = r0.numActiveNotifs
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r1 = r6.mView
            r2 = 1
            r3 = 0
            if (r0 != 0) goto L32
            boolean r0 = r1.mQsFullScreen
            if (r0 != 0) goto L32
            com.android.systemui.statusbar.SysuiStatusBarStateController r0 = r6.mStatusBarStateController
            com.android.systemui.statusbar.StatusBarStateControllerImpl r0 = (com.android.systemui.statusbar.StatusBarStateControllerImpl) r0
            int r4 = r0.mState
            int r0 = r0.mUpcomingState
            if (r4 == r0) goto L21
            if (r0 != r2) goto L21
            r0 = r2
            goto L22
        L21:
            r0 = r3
        L22:
            if (r0 != 0) goto L32
            com.android.systemui.statusbar.phone.CentralSurfaces r0 = r6.mCentralSurfaces
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r0 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r0
            boolean r0 = r0.mBouncerShowing
            if (r0 != 0) goto L32
            boolean r0 = r6.mMediaPlayerVisible
            if (r0 != 0) goto L32
            r0 = r2
            goto L33
        L32:
            r0 = r3
        L33:
            com.android.systemui.statusbar.policy.ZenModeController r6 = r6.mZenModeController
            com.android.systemui.statusbar.policy.ZenModeControllerImpl r6 = (com.android.systemui.statusbar.policy.ZenModeControllerImpl) r6
            int r4 = r6.mZenMode
            if (r4 == 0) goto L45
            android.app.NotificationManager$Policy r6 = r6.mConsolidatedNotificationPolicy
            int r6 = r6.suppressedVisualEffects
            r6 = r6 & 256(0x100, float:3.59E-43)
            if (r6 == 0) goto L45
            r6 = r2
            goto L46
        L45:
            r6 = r3
        L46:
            r1.getClass()
            boolean r4 = com.android.systemui.NotiRune.NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW
            if (r4 == 0) goto L4e
            goto L8c
        L4e:
            boolean r4 = com.android.systemui.NotiRune.NOTI_STYLE_EMPTY_SHADE
            if (r4 == 0) goto L5d
            if (r0 == 0) goto L5d
            r1.updateEmptyShadeViewHeight()
            com.android.systemui.statusbar.EmptyShadeView r4 = r1.mEmptyShadeView
            r5 = 1065353216(0x3f800000, float:1.0)
            r4.mEndAlpha = r5
        L5d:
            com.android.systemui.statusbar.EmptyShadeView r4 = r1.mEmptyShadeView
            boolean r5 = r1.mIsExpanded
            if (r5 == 0) goto L68
            boolean r5 = r1.mAnimationsEnabled
            if (r5 == 0) goto L68
            goto L69
        L68:
            r2 = r3
        L69:
            r4.setVisible(r0, r2)
            if (r6 == 0) goto L75
            r6 = 2131952837(0x7f1304c5, float:1.9542128E38)
            r1.updateEmptyShadeView(r6, r3, r3)
            goto L8c
        L75:
            boolean r6 = r1.mHasFilteredOutSeenNotifications
            if (r6 == 0) goto L86
            r6 = 2131233021(0x7f0808fd, float:1.8082168E38)
            r0 = 2131954681(0x7f130bf9, float:1.9545868E38)
            r2 = 2131956145(0x7f1311b1, float:1.9548837E38)
            r1.updateEmptyShadeView(r0, r2, r6)
            goto L8c
        L86:
            r6 = 2131952934(0x7f130526, float:1.9542325E38)
            r1.updateEmptyShadeView(r6, r3, r3)
        L8c:
            android.os.Trace.endSection()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController.updateShowEmptyShadeView():void");
    }
}
