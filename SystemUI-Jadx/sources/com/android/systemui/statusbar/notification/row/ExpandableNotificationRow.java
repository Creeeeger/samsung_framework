package com.android.systemui.statusbar.notification.row;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.Trace;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.NotificationHeaderView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import android.widget.Chronometer;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.MotionLayout$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.statusbar.NotificationVisibility;
import com.android.internal.util.ContrastColorUtil;
import com.android.internal.widget.CachingIconView;
import com.android.internal.widget.CallLayout;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.SecNotificationBlockManager;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.NotificationClickNotifier;
import com.android.systemui.statusbar.NotificationClickNotifier$onNotificationClick$1;
import com.android.systemui.statusbar.NotificationGroupingUtil;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.SmartReplyController;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.notification.AboveShelfObserver;
import com.android.systemui.statusbar.notification.ConversationNotificationManager$onEntryViewBound$1;
import com.android.systemui.statusbar.notification.NotificationClicker;
import com.android.systemui.statusbar.notification.NotificationFadeAware;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.SourceType;
import com.android.systemui.statusbar.notification.SourceType$Companion$from$1;
import com.android.systemui.statusbar.notification.SubscreenDeviceModelParent;
import com.android.systemui.statusbar.notification.SubscreenNotificationController;
import com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter;
import com.android.systemui.statusbar.notification.SubscreenNotificationInfo;
import com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager;
import com.android.systemui.statusbar.notification.SubscreenSubRoomNotification;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.OnUserInteractionCallbackImpl;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProvider;
import com.android.systemui.statusbar.notification.collection.provider.NotificationDismissibilityProviderImpl;
import com.android.systemui.statusbar.notification.collection.provider.NotificationVisibilityProviderImpl;
import com.android.systemui.statusbar.notification.collection.render.GroupExpansionManager;
import com.android.systemui.statusbar.notification.collection.render.GroupExpansionManagerImpl;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManager;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl;
import com.android.systemui.statusbar.notification.logging.NotificationLogger;
import com.android.systemui.statusbar.notification.people.PeopleNotificationIdentifier;
import com.android.systemui.statusbar.notification.people.PeopleNotificationIdentifierImpl;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRowController;
import com.android.systemui.statusbar.notification.row.ExpandableOutlineView;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.notification.row.NotificationGuts;
import com.android.systemui.statusbar.notification.row.NotificationMenuRow;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationHeaderViewWrapper;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper;
import com.android.systemui.statusbar.notification.stack.AnimationProperties;
import com.android.systemui.statusbar.notification.stack.ExpandableViewState;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.statusbar.notification.stack.SwipeableView;
import com.android.systemui.statusbar.notification.stack.ViewState;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;
import com.android.systemui.statusbar.phone.StatusBarNotificationPresenter;
import com.android.systemui.statusbar.policy.HeadsUpManager;
import com.android.systemui.statusbar.policy.InflatedSmartReplyState;
import com.android.systemui.statusbar.policy.RemoteInputView;
import com.android.systemui.statusbar.policy.RemoteInputViewController;
import com.android.systemui.statusbar.policy.RemoteInputViewControllerImpl;
import com.android.systemui.statusbar.policy.SmartReplyConstants;
import com.android.systemui.statusbar.policy.SmartReplyView;
import com.android.systemui.statusbar.policy.dagger.RemoteInputViewSubcomponent;
import com.android.systemui.util.DumpUtilsKt;
import com.sec.ims.volte2.data.VolteConstants;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import noticolorpicker.NotificationColorPicker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ExpandableNotificationRow extends ActivatableNotificationView implements PluginListener<NotificationMenuRowPlugin>, SwipeableView, NotificationFadeAware.FadeOptimizedNotification, PanelScreenShotLogger.LogProvider {
    public boolean mAboveShelf;
    public AboveShelfObserver mAboveShelfChangedListener;
    public ActivityStarter mActivityStarter;
    public boolean mAnimatePinnedRoundness;
    public boolean mAnimationRunning;
    public String mAppName;
    public Optional mBubblesManagerOptional;
    public KeyguardBypassController mBypassController;
    public View mChildAfterViewWhenDismissed;
    public boolean mChildIsExpanding;
    public NotificationChildrenContainer mChildrenContainer;
    public ViewStub mChildrenContainerStub;
    public boolean mChildrenExpanded;
    public NotificationDismissibilityProvider mDismissibilityProvider;
    public ExpandableNotificationRowDragController mDragController;
    public boolean mEnableNonGroupedNotificationExpand;
    public NotificationEntry mEntry;
    public boolean mExpandAnimationRunning;
    public final AnonymousClass1 mExpandClickListener;
    public boolean mExpandable;
    public boolean mExpandedWhenPinned;
    public Path mExpandingClipPath;
    public ConversationNotificationManager$onEntryViewBound$1 mExpansionChangedListener;
    public final ExpandableNotificationRow$$ExternalSyntheticLambda2 mExpireRecentlyAlertedFlag;
    public FalsingCollector mFalsingCollector;
    public FalsingManager mFalsingManager;
    public FeatureFlags mFeatureFlags;
    public boolean mGroupExpansionChanging;
    public GroupExpansionManager mGroupExpansionManager;
    public GroupMembershipManager mGroupMembershipManager;
    public ExpandableNotificationRow mGroupParentWhenDismissed;
    public NotificationGuts mGuts;
    public ViewStub mGutsStub;
    public boolean mHasUserChangedExpansion;
    public float mHeaderVisibleAmount;
    public Consumer mHeadsUpAnimatingAwayListener;
    public HeadsUpManager mHeadsUpManager;
    public boolean mHeadsupDisappearRunning;
    public boolean mHideSensitiveForIntrinsicHeight;
    public int mIconTransformContentShift;
    public boolean mIgnoreLockscreenConstraints;
    public final NotificationInlineImageResolver mImageResolver;
    public boolean mIsCustomBigNotification;
    public boolean mIsCustomHeadsUpNotification;
    public boolean mIsCustomNotification;
    public boolean mIsCustomPublicNotification;
    public boolean mIsFaded;
    public boolean mIsGroupHeaderContainAtMark;
    public boolean mIsHeadsUp;
    public boolean mIsInlineReplyAnimationFlagEnabled;
    public boolean mIsLowPriority;
    public boolean mIsPinned;
    public boolean mIsSnoozed;
    public boolean mIsSummaryWithChildren;
    public boolean mIsSystemChildExpanded;
    public boolean mJustClicked;
    public boolean mKeepInParentForDismissAnimation;
    public boolean mLastChronometerRunning;
    public LayoutListener mLayoutListener;
    public NotificationContentView[] mLayouts;
    public ExpandableNotificationRowController.AnonymousClass1 mLogger;
    public String mLoggingKey;
    public LongPressListener mLongPressListener;
    public LongPressListener mLongPressListenerForBubble;
    public int mMaxExpandedHeight;
    public int mMaxHeadsUpHeight;
    public int mMaxHeadsUpHeightBeforeN;
    public int mMaxHeadsUpHeightBeforeP;
    public int mMaxHeadsUpHeightBeforeS;
    public int mMaxHeadsUpHeightIncreased;
    public int mMaxSmallHeight;
    public int mMaxSmallHeightBeforeN;
    public int mMaxSmallHeightBeforeP;
    public int mMaxSmallHeightBeforeS;
    public int mMaxSmallHeightLarge;
    public NotificationMenuRowPlugin mMenuRow;
    public MetricsLogger mMetricsLogger;
    public boolean mMustStayOnScreen;
    public int mNotificationColor;
    public NotificationGutsManager mNotificationGutsManager;
    public int mNotificationLaunchHeight;
    public ExpandableNotificationRow mNotificationParent;
    public View.OnClickListener mOnClickListener;
    public NotificationClicker.AnonymousClass1 mOnDragSuccessListener;
    public OnExpandClickListener mOnExpandClickListener;
    public ExpandableNotificationRow$$ExternalSyntheticLambda3 mOnFeedbackClickListener;
    public Runnable mOnIntrinsicHeightReachedRunnable;
    public boolean mOnKeyguard;
    public OnUserInteractionCallback mOnUserInteractionCallback;
    public PeopleNotificationIdentifier mPeopleNotificationIdentifier;
    public NotificationContentView mPrivateLayout;
    public NotificationContentView mPublicLayout;
    public RowContentBindStage mRowContentBindStage;
    public boolean mSaveSpaceOnLockscreen;
    public BooleanSupplier mSecureStateProvider;
    public boolean mSensitive;
    public boolean mSensitiveHiddenInGeneral;
    public boolean mShowNoBackground;
    public boolean mShowingPublic;
    public boolean mShowingPublicInitialized;
    public final float mSmallRoundness;
    public StatusBarStateController mStatusBarStateController;
    public Animator mTranslateAnim;
    public ArrayList mTranslateableViews;
    public boolean mUseIncreasedCollapsedHeight;
    public boolean mUseIncreasedHeadsUpHeight;
    public boolean mUserExpanded;
    public boolean mUserLocked;
    public static final long RECENTLY_ALERTED_THRESHOLD_MS = TimeUnit.SECONDS.toMillis(30);
    public static final SourceType$Companion$from$1 BASE_VALUE = SourceType.from("BaseValue");
    public static final SourceType$Companion$from$1 FROM_PARENT = SourceType.from("FromParent(ENR)");
    public static final SourceType$Companion$from$1 PINNED = SourceType.from("Pinned");
    public static final AnonymousClass2 TRANSLATE_CONTENT = new FloatProperty("translate") { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow.2
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((ExpandableNotificationRow) obj).getTranslation());
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f) {
            ((ExpandableNotificationRow) obj).setTranslation(f);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            NotificationChildrenContainer notificationChildrenContainer;
            if (((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isKidsModeRunning()) {
                return;
            }
            ExpandableNotificationRow expandableNotificationRow = ExpandableNotificationRow.this;
            if (expandableNotificationRow.mIsLowPriority) {
                if (((GroupMembershipManagerImpl) expandableNotificationRow.mGroupMembershipManager).isGroupSummary(expandableNotificationRow.mEntry) && (notificationChildrenContainer = ExpandableNotificationRow.this.mChildrenContainer) != null) {
                    notificationChildrenContainer.mWasLowPriorityShowing = notificationChildrenContainer.showingAsLowPriority();
                }
            }
            if (!ExpandableNotificationRow.this.shouldShowPublic()) {
                ExpandableNotificationRow expandableNotificationRow2 = ExpandableNotificationRow.this;
                if (!expandableNotificationRow2.mIsLowPriority || expandableNotificationRow2.isExpanded(false)) {
                    ExpandableNotificationRow expandableNotificationRow3 = ExpandableNotificationRow.this;
                    if (((GroupMembershipManagerImpl) expandableNotificationRow3.mGroupMembershipManager).isGroupSummary(expandableNotificationRow3.mEntry)) {
                        ExpandableNotificationRow expandableNotificationRow4 = ExpandableNotificationRow.this;
                        expandableNotificationRow4.mGroupExpansionChanging = true;
                        boolean isGroupExpanded = ((GroupExpansionManagerImpl) expandableNotificationRow4.mGroupExpansionManager).isGroupExpanded(expandableNotificationRow4.mEntry);
                        ExpandableNotificationRow expandableNotificationRow5 = ExpandableNotificationRow.this;
                        GroupExpansionManager groupExpansionManager = expandableNotificationRow5.mGroupExpansionManager;
                        NotificationEntry notificationEntry = expandableNotificationRow5.mEntry;
                        GroupExpansionManagerImpl groupExpansionManagerImpl = (GroupExpansionManagerImpl) groupExpansionManager;
                        groupExpansionManagerImpl.setGroupExpanded(notificationEntry, !groupExpansionManagerImpl.isGroupExpanded(notificationEntry));
                        boolean isGroupExpanded2 = groupExpansionManagerImpl.isGroupExpanded(notificationEntry);
                        ExpandableNotificationRow expandableNotificationRow6 = ExpandableNotificationRow.this;
                        ((StatusBarNotificationPresenter) expandableNotificationRow6.mOnExpandClickListener).onExpandClicked(expandableNotificationRow6.mEntry, isGroupExpanded2);
                        ExpandableNotificationRow.this.mMetricsLogger.action(VolteConstants.ErrorCode.REQUEST_TIMEOUT, isGroupExpanded2);
                        ExpandableNotificationRow.this.onExpansionChanged(true, isGroupExpanded);
                        return;
                    }
                }
            }
            if (ExpandableNotificationRow.this.mEnableNonGroupedNotificationExpand) {
                if (view.isAccessibilityFocused()) {
                    ExpandableNotificationRow.this.mPrivateLayout.mFocusOnVisibilityChange = true;
                }
                ExpandableNotificationRow expandableNotificationRow7 = ExpandableNotificationRow.this;
                if (expandableNotificationRow7.mIsPinned) {
                    z = !expandableNotificationRow7.mExpandedWhenPinned;
                    expandableNotificationRow7.mExpandedWhenPinned = z;
                    ConversationNotificationManager$onEntryViewBound$1 conversationNotificationManager$onEntryViewBound$1 = expandableNotificationRow7.mExpansionChangedListener;
                    if (conversationNotificationManager$onEntryViewBound$1 != null) {
                        conversationNotificationManager$onEntryViewBound$1.onExpansionChanged(z);
                    }
                } else {
                    z = !expandableNotificationRow7.isExpanded(false);
                    ExpandableNotificationRow.this.setUserExpanded(z, false);
                }
                ExpandableNotificationRow.this.notifyHeightChanged(true);
                ExpandableNotificationRow expandableNotificationRow8 = ExpandableNotificationRow.this;
                ((StatusBarNotificationPresenter) expandableNotificationRow8.mOnExpandClickListener).onExpandClicked(expandableNotificationRow8.mEntry, z);
                ExpandableNotificationRow.this.mMetricsLogger.action(407, z);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface CoordinateOnClickListener {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface LayoutListener {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface LongPressListener {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationViewState extends ExpandableViewState {
        public /* synthetic */ NotificationViewState(int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.notification.stack.ExpandableViewState, com.android.systemui.statusbar.notification.stack.ViewState
        public final void animateTo(View view, AnimationProperties animationProperties) {
            boolean z;
            boolean z2;
            float f;
            if (view instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                if (expandableNotificationRow.mExpandAnimationRunning) {
                    return;
                }
                if (expandableNotificationRow.mChildIsExpanding) {
                    setZTranslation(expandableNotificationRow.getTranslationZ());
                    this.clipTopAmount = expandableNotificationRow.mClipTopAmount;
                }
                super.animateTo(view, animationProperties);
                if (expandableNotificationRow.mIsSummaryWithChildren) {
                    NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
                    int size = ((ArrayList) notificationChildrenContainer.mAttachedChildren).size();
                    ViewState viewState = new ViewState();
                    float groupExpandFraction = notificationChildrenContainer.getGroupExpandFraction();
                    if (!notificationChildrenContainer.showingAsLowPriority() && (notificationChildrenContainer.mUserLocked || notificationChildrenContainer.mContainingNotification.isGroupExpansionChanging())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if ((notificationChildrenContainer.mChildrenExpanded && notificationChildrenContainer.mShowDividersWhenExpanded) || (z && !notificationChildrenContainer.mHideDividersDuringExpand)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    for (int i = size - 1; i >= 0; i--) {
                        ExpandableNotificationRow expandableNotificationRow2 = (ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i);
                        ExpandableViewState expandableViewState = expandableNotificationRow2.mViewState;
                        expandableViewState.animateTo(expandableNotificationRow2, animationProperties);
                        View view2 = (View) ((ArrayList) notificationChildrenContainer.mDividers).get(i);
                        viewState.initFrom(view2);
                        viewState.setYTranslation(expandableViewState.mYTranslation - notificationChildrenContainer.mDividerHeight);
                        if (notificationChildrenContainer.mChildrenExpanded && expandableViewState.mAlpha != 0.0f) {
                            f = notificationChildrenContainer.mDividerAlpha;
                        } else {
                            f = 0.0f;
                        }
                        if (notificationChildrenContainer.mUserLocked && !notificationChildrenContainer.showingAsLowPriority()) {
                            float f2 = expandableViewState.mAlpha;
                            if (f2 != 0.0f) {
                                f = NotificationUtils.interpolate(0.0f, notificationChildrenContainer.mDividerAlpha, Math.min(f2, groupExpandFraction));
                            }
                        }
                        viewState.hidden = !z2;
                        viewState.setAlpha(f);
                        if (!z2) {
                            viewState.setAlpha(0.0f);
                            view2.setAlpha(0.0f);
                        }
                        viewState.animateTo(view2, animationProperties);
                        expandableNotificationRow2.setFakeShadowIntensity(0, 0.0f, 0.0f, 0);
                    }
                    if (notificationChildrenContainer.mOverflowNumber != null) {
                        if (notificationChildrenContainer.mNeverAppliedGroupState) {
                            ViewState viewState2 = notificationChildrenContainer.mGroupOverFlowState;
                            float f3 = viewState2.mAlpha;
                            viewState2.setAlpha(0.0f);
                            notificationChildrenContainer.mGroupOverFlowState.applyToView(notificationChildrenContainer.mOverflowNumber);
                            notificationChildrenContainer.mGroupOverFlowState.setAlpha(f3);
                            notificationChildrenContainer.mNeverAppliedGroupState = false;
                        }
                        notificationChildrenContainer.mGroupOverFlowState.animateTo(notificationChildrenContainer.mOverflowNumber, animationProperties);
                    }
                    if (notificationChildrenContainer.mNotificationHeader != null) {
                        if (notificationChildrenContainer.mContainingNotification.isGroupExpanded()) {
                            notificationChildrenContainer.mHeaderViewState.applyToView(notificationChildrenContainer.mNotificationHeaderExpanded);
                        } else {
                            notificationChildrenContainer.mHeaderViewState.applyToView(notificationChildrenContainer.mNotificationHeader);
                        }
                    }
                    notificationChildrenContainer.updateChildrenClipping();
                }
            }
        }

        @Override // com.android.systemui.statusbar.notification.stack.ExpandableViewState, com.android.systemui.statusbar.notification.stack.ViewState
        public final void applyToView(View view) {
            float f;
            boolean z;
            float f2;
            if (view instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                if (expandableNotificationRow.mExpandAnimationRunning) {
                    return;
                }
                if (expandableNotificationRow.mChildIsExpanding) {
                    setZTranslation(expandableNotificationRow.getTranslationZ());
                    this.clipTopAmount = expandableNotificationRow.mClipTopAmount;
                }
                super.applyToView(view);
                if (expandableNotificationRow.mIsSummaryWithChildren) {
                    NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
                    int size = ((ArrayList) notificationChildrenContainer.mAttachedChildren).size();
                    ViewState viewState = new ViewState();
                    if (notificationChildrenContainer.mUserLocked) {
                        f = notificationChildrenContainer.getGroupExpandFraction();
                    } else {
                        f = 0.0f;
                    }
                    boolean z2 = true;
                    if (!notificationChildrenContainer.showingAsLowPriority() && (notificationChildrenContainer.mUserLocked || notificationChildrenContainer.mContainingNotification.isGroupExpansionChanging())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if ((!notificationChildrenContainer.mChildrenExpanded || !notificationChildrenContainer.mShowDividersWhenExpanded) && (!z || notificationChildrenContainer.mHideDividersDuringExpand)) {
                        z2 = false;
                    }
                    for (int i = 0; i < size; i++) {
                        ExpandableNotificationRow expandableNotificationRow2 = (ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i);
                        ExpandableViewState expandableViewState = expandableNotificationRow2.mViewState;
                        expandableViewState.applyToView(expandableNotificationRow2);
                        View view2 = (View) ((ArrayList) notificationChildrenContainer.mDividers).get(i);
                        viewState.initFrom(view2);
                        viewState.setYTranslation(expandableViewState.mYTranslation - notificationChildrenContainer.mDividerHeight);
                        if (notificationChildrenContainer.mChildrenExpanded && expandableViewState.mAlpha != 0.0f) {
                            f2 = notificationChildrenContainer.mDividerAlpha;
                        } else {
                            f2 = 0.0f;
                        }
                        if (notificationChildrenContainer.mUserLocked && !notificationChildrenContainer.showingAsLowPriority()) {
                            float f3 = expandableViewState.mAlpha;
                            if (f3 != 0.0f) {
                                f2 = NotificationUtils.interpolate(0.0f, notificationChildrenContainer.mDividerAlpha, Math.min(f3, f));
                            }
                        }
                        viewState.hidden = !z2;
                        viewState.setAlpha(f2);
                        if (!z2) {
                            viewState.setAlpha(0.0f);
                            view2.setAlpha(0.0f);
                        }
                        viewState.applyToView(view2);
                        expandableNotificationRow2.setFakeShadowIntensity(0, 0.0f, 0.0f, 0);
                    }
                    ViewState viewState2 = notificationChildrenContainer.mGroupOverFlowState;
                    if (viewState2 != null) {
                        viewState2.applyToView(notificationChildrenContainer.mOverflowNumber);
                        notificationChildrenContainer.mNeverAppliedGroupState = false;
                    }
                    ViewGroup viewGroup = notificationChildrenContainer.mCurrentHeader;
                    if (viewGroup != null) {
                        notificationChildrenContainer.mHeaderViewState.applyToView(viewGroup);
                    }
                    notificationChildrenContainer.updateChildrenClipping();
                }
            }
        }

        @Override // com.android.systemui.statusbar.notification.stack.ViewState
        public final void onYTranslationAnimationFinished(View view) {
            super.onYTranslationAnimationFinished(view);
            if (view instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                if (expandableNotificationRow.mHeadsupDisappearRunning) {
                    expandableNotificationRow.setHeadsUpAnimatingAway(false);
                }
            }
        }

        private NotificationViewState() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface OnExpandClickListener {
    }

    /* renamed from: $r8$lambda$7KWgUGCqa6FPzwWR-O4rgNV1JRc, reason: not valid java name */
    public static void m1419$r8$lambda$7KWgUGCqa6FPzwWRO4rgNV1JRc(ExpandableNotificationRow expandableNotificationRow, CoordinateOnClickListener coordinateOnClickListener, View view) {
        NotificationMenuRowPlugin.MenuItem feedbackMenuItem;
        expandableNotificationRow.createMenu();
        NotificationMenuRowPlugin notificationMenuRowPlugin = expandableNotificationRow.mMenuRow;
        if (notificationMenuRowPlugin != null && (feedbackMenuItem = notificationMenuRowPlugin.getFeedbackMenuItem(((FrameLayout) expandableNotificationRow).mContext)) != null) {
            ((NotificationGutsManager) ((ExpandableNotificationRowController$$ExternalSyntheticLambda0) coordinateOnClickListener).f$0).openGuts(expandableNotificationRow, view.getWidth() / 2, view.getHeight() / 2, feedbackMenuItem);
        }
    }

    public ExpandableNotificationRow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, context);
        Log.wtf("ExpandableNotifRow", "This constructor shouldn't be called");
    }

    private void initDimens() {
        this.mMaxSmallHeightBeforeN = NotificationUtils.getFontScaledHeight(R.dimen.notification_min_height_legacy, ((FrameLayout) this).mContext);
        this.mMaxSmallHeightBeforeP = NotificationUtils.getFontScaledHeight(R.dimen.notification_min_height_before_p, ((FrameLayout) this).mContext);
        this.mMaxSmallHeightBeforeS = NotificationUtils.getFontScaledHeight(R.dimen.notification_min_height_before_s, ((FrameLayout) this).mContext);
        this.mMaxSmallHeight = NotificationUtils.getFontScaledHeight(R.dimen.notification_min_height, ((FrameLayout) this).mContext);
        this.mMaxSmallHeightLarge = NotificationUtils.getFontScaledHeight(R.dimen.notification_min_height_increased, ((FrameLayout) this).mContext);
        this.mMaxExpandedHeight = NotificationUtils.getFontScaledHeight(R.dimen.notification_max_height, ((FrameLayout) this).mContext);
        this.mMaxHeadsUpHeightBeforeN = NotificationUtils.getFontScaledHeight(R.dimen.notification_max_heads_up_height_legacy, ((FrameLayout) this).mContext);
        this.mMaxHeadsUpHeightBeforeP = NotificationUtils.getFontScaledHeight(R.dimen.notification_max_heads_up_height_before_p, ((FrameLayout) this).mContext);
        this.mMaxHeadsUpHeightBeforeS = NotificationUtils.getFontScaledHeight(R.dimen.notification_max_heads_up_height_before_s, ((FrameLayout) this).mContext);
        this.mMaxHeadsUpHeight = NotificationUtils.getFontScaledHeight(R.dimen.notification_max_heads_up_height, ((FrameLayout) this).mContext);
        this.mMaxHeadsUpHeightIncreased = NotificationUtils.getFontScaledHeight(R.dimen.notification_max_heads_up_height_increased, ((FrameLayout) this).mContext);
        Resources resources = getResources();
        this.mEnableNonGroupedNotificationExpand = resources.getBoolean(R.bool.config_enableNonGroupedNotificationExpand);
        resources.getBoolean(R.bool.config_showGroupNotificationBgWhenExpanded);
    }

    public static void setChronometerRunningForChild(View view, boolean z) {
        if (view != null) {
            View findViewById = view.findViewById(android.R.id.costsMoney);
            if (findViewById instanceof Chronometer) {
                ((Chronometer) findViewById).setStarted(z);
            }
        }
    }

    public static void setIconAnimationRunningForChild(View view, boolean z) {
        if (view != null) {
            setImageViewAnimationRunning((ImageView) view.findViewById(android.R.id.icon), z);
            setImageViewAnimationRunning((ImageView) view.findViewById(android.R.id.translucent), z);
        }
    }

    public static void setImageViewAnimationRunning(ImageView imageView, boolean z) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
                if (z) {
                    animationDrawable.start();
                    return;
                } else {
                    animationDrawable.stop();
                    return;
                }
            }
            if (drawable instanceof AnimatedVectorDrawable) {
                AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
                if (z) {
                    animatedVectorDrawable.start();
                } else {
                    animatedVectorDrawable.stop();
                }
            }
        }
    }

    public final void addChildNotification(ExpandableNotificationRow expandableNotificationRow, int i) {
        boolean z;
        SubscreenNotificationInfo subscreenNotificationInfo;
        SubscreenNotificationInfo subscreenNotificationInfo2;
        String str;
        String str2;
        Integer num;
        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager;
        ArrayList arrayList;
        SubscreenNotificationInfo subscreenNotificationInfo3;
        String str3;
        String str4;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager2;
        ArrayList arrayList2;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager3;
        StatusBarNotification statusBarNotification;
        StatusBarNotification statusBarNotification2;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager4;
        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter2;
        if (this.mChildrenContainer == null) {
            this.mChildrenContainerStub.inflate();
        }
        String str5 = null;
        if (expandableNotificationRow.mKeepInParentForDismissAnimation) {
            ExpandableNotificationRowController.AnonymousClass1 anonymousClass1 = this.mLogger;
            if (anonymousClass1 != null) {
                NotificationEntry notificationEntry = expandableNotificationRow.mEntry;
                NotificationEntry notificationEntry2 = this.mEntry;
                NotificationRowLogger notificationRowLogger = ExpandableNotificationRowController.this.mLogBufferLogger;
                notificationRowLogger.getClass();
                LogLevel logLevel = LogLevel.WARNING;
                NotificationRowLogger$logSkipAttachingKeepInParentChild$2 notificationRowLogger$logSkipAttachingKeepInParentChild$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.row.NotificationRowLogger$logSkipAttachingKeepInParentChild$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LogMessage logMessage = (LogMessage) obj;
                        return MotionLayout$$ExternalSyntheticOutline0.m("Skipping to attach ", logMessage.getStr1(), " to ", logMessage.getStr2(), ", because it still flagged to keep in parent");
                    }
                };
                LogBuffer logBuffer = notificationRowLogger.buffer;
                LogMessage obtain = logBuffer.obtain("NotifRow", logLevel, notificationRowLogger$logSkipAttachingKeepInParentChild$2, null);
                obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
                obtain.setStr2(NotificationUtilsKt.getLogKey(notificationEntry2));
                logBuffer.commit(obtain);
                return;
            }
            return;
        }
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        notificationChildrenContainer.getClass();
        if (expandableNotificationRow.getParent() != null) {
            expandableNotificationRow.removeFromTransientContainerForAdditionTo(notificationChildrenContainer);
        }
        if (i < 0) {
            i = ((ArrayList) notificationChildrenContainer.mAttachedChildren).size();
        }
        ((ArrayList) notificationChildrenContainer.mAttachedChildren).add(i, expandableNotificationRow);
        notificationChildrenContainer.addView(expandableNotificationRow);
        expandableNotificationRow.setUserLocked(notificationChildrenContainer.mUserLocked);
        View inflateDivider = notificationChildrenContainer.inflateDivider();
        notificationChildrenContainer.addView(inflateDivider);
        ((ArrayList) notificationChildrenContainer.mDividers).add(i, inflateDivider);
        boolean z2 = expandableNotificationRow.mIsLastChild;
        if (expandableNotificationRow.mContentTransformationAmount != 0.0f) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = z2 | z;
        expandableNotificationRow.mIsLastChild = false;
        expandableNotificationRow.mContentTransformationAmount = 0.0f;
        if (z3) {
            expandableNotificationRow.updateContentTransformation();
        }
        expandableNotificationRow.setNotificationFaded(notificationChildrenContainer.mContainingNotificationIsFaded);
        ExpandableViewState expandableViewState = expandableNotificationRow.mViewState;
        if (expandableViewState != null) {
            expandableViewState.cancelAnimations(expandableNotificationRow);
            ValueAnimator valueAnimator = expandableNotificationRow.mAppearAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                expandableNotificationRow.mAppearAnimator = null;
            }
            expandableNotificationRow.enableAppearDrawing(false);
            expandableNotificationRow.setHeadsUpAnimatingAway(false);
        }
        notificationChildrenContainer.applyRoundnessAndInvalidate();
        onAttachedChildrenCountChanged();
        expandableNotificationRow.setIsChildInGroup(this, true);
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON) {
            SubscreenDeviceModelParent subscreenDeviceModelParent = ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel;
            SubscreenDeviceModelParent.MainListHashMapItem mainListHashMapItem = (SubscreenDeviceModelParent.MainListHashMapItem) subscreenDeviceModelParent.mMainListArrayHashMap.get(expandableNotificationRow.mEntry.mKey);
            NotificationEntry notificationEntry3 = (NotificationEntry) subscreenDeviceModelParent.mMainListAddEntryHashMap.get(expandableNotificationRow.mEntry.mKey);
            if (subscreenDeviceModelParent.isShownGroup() && mainListHashMapItem == null && notificationEntry3 == null) {
                SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelParent.mSubRoomNotification;
                if (subscreenSubRoomNotification != null && (subscreenNotificationGroupAdapter2 = subscreenSubRoomNotification.mNotificationGroupAdapter) != null) {
                    subscreenNotificationInfo = subscreenNotificationGroupAdapter2.mSummaryInfo;
                } else {
                    subscreenNotificationInfo = null;
                }
                if (subscreenSubRoomNotification != null && (subscreenNotificationInfoManager4 = subscreenSubRoomNotification.mNotificationInfoManager) != null) {
                    subscreenNotificationInfo2 = subscreenNotificationInfoManager4.createItemsData(expandableNotificationRow);
                } else {
                    subscreenNotificationInfo2 = null;
                }
                if (subscreenNotificationInfo != null && (statusBarNotification2 = subscreenNotificationInfo.mSbn) != null) {
                    str = statusBarNotification2.getGroupKey();
                } else {
                    str = null;
                }
                if (subscreenNotificationInfo2 != null && (statusBarNotification = subscreenNotificationInfo2.mSbn) != null) {
                    str2 = statusBarNotification.getGroupKey();
                } else {
                    str2 = null;
                }
                if (StringsKt__StringsJVMKt.equals(str, str2, false)) {
                    SubscreenSubRoomNotification subscreenSubRoomNotification2 = subscreenDeviceModelParent.mSubRoomNotification;
                    if (subscreenSubRoomNotification2 != null && (subscreenNotificationInfoManager3 = subscreenSubRoomNotification2.mNotificationInfoManager) != null) {
                        num = Integer.valueOf(subscreenNotificationInfoManager3.getGroupDataArraySize());
                    } else {
                        num = null;
                    }
                    Intrinsics.checkNotNull(num);
                    int intValue = num.intValue();
                    for (int i2 = 0; i2 < intValue; i2++) {
                        SubscreenSubRoomNotification subscreenSubRoomNotification3 = subscreenDeviceModelParent.mSubRoomNotification;
                        if (subscreenSubRoomNotification3 != null && (subscreenNotificationInfoManager2 = subscreenSubRoomNotification3.mNotificationInfoManager) != null && (arrayList2 = subscreenNotificationInfoManager2.mGroupDataArray) != null) {
                            subscreenNotificationInfo3 = (SubscreenNotificationInfo) arrayList2.get(i2);
                        } else {
                            subscreenNotificationInfo3 = null;
                        }
                        if (subscreenNotificationInfo3 != null) {
                            str3 = subscreenNotificationInfo3.mKey;
                        } else {
                            str3 = null;
                        }
                        if (subscreenNotificationInfo2 != null) {
                            str4 = subscreenNotificationInfo2.mKey;
                        } else {
                            str4 = null;
                        }
                        if (StringsKt__StringsJVMKt.equals(str3, str4, false)) {
                            if (subscreenNotificationInfo2 != null) {
                                str5 = subscreenNotificationInfo2.mKey;
                            }
                            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("addChildNotification parent - already Item  : ", str5, "S.S.N.");
                        }
                    }
                    SubscreenSubRoomNotification subscreenSubRoomNotification4 = subscreenDeviceModelParent.mSubRoomNotification;
                    if (subscreenSubRoomNotification4 != null && (subscreenNotificationInfoManager = subscreenSubRoomNotification4.mNotificationInfoManager) != null && (arrayList = subscreenNotificationInfoManager.mGroupDataArray) != null) {
                        arrayList.add(intValue, subscreenNotificationInfo2);
                    }
                    SubscreenSubRoomNotification subscreenSubRoomNotification5 = subscreenDeviceModelParent.mSubRoomNotification;
                    if (subscreenSubRoomNotification5 != null && (subscreenNotificationGroupAdapter = subscreenSubRoomNotification5.mNotificationGroupAdapter) != null) {
                        subscreenNotificationGroupAdapter.notifyItemInserted(intValue);
                    }
                    if (subscreenNotificationInfo2 != null) {
                        str5 = subscreenNotificationInfo2.mKey;
                    }
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("addChildNotification parent - add Item  : ", str5, "S.S.N.");
                }
                subscreenDeviceModelParent.putMainListArrayHashMap(expandableNotificationRow.mEntry);
                subscreenDeviceModelParent.mNotiKeySet.add(expandableNotificationRow.mEntry.mKey);
            }
        }
        initGroupHeaderContainAtMark();
    }

    public final String appendTraceStyleTag(String str) {
        if (!Trace.isEnabled()) {
            return str;
        }
        Class notificationStyle = this.mEntry.mSbn.getNotification().getNotificationStyle();
        if (notificationStyle == null) {
            return str.concat("(nostyle)");
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, "(");
        m.append(notificationStyle.getSimpleName());
        m.append(")");
        return m.toString();
    }

    public final void applyAudiblyAlertedRecently(boolean z) {
        if (this.mIsSummaryWithChildren) {
            NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
            NotificationHeaderViewWrapper notificationHeaderViewWrapper = notificationChildrenContainer.mNotificationHeaderWrapper;
            if (notificationHeaderViewWrapper != null) {
                notificationHeaderViewWrapper.setRecentlyAudiblyAlerted(z);
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = notificationChildrenContainer.mNotificationHeaderWrapperLowPriority;
            if (notificationHeaderViewWrapper2 != null) {
                notificationHeaderViewWrapper2.setRecentlyAudiblyAlerted(z);
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper3 = notificationChildrenContainer.mNotificationHeaderWrapperExpanded;
            if (notificationHeaderViewWrapper3 != null) {
                notificationHeaderViewWrapper3.setRecentlyAudiblyAlerted(z);
            }
        }
        NotificationContentView notificationContentView = this.mPrivateLayout;
        if (notificationContentView.mContractedChild != null) {
            notificationContentView.mContractedWrapper.setRecentlyAudiblyAlerted(z);
        }
        if (notificationContentView.mExpandedChild != null) {
            notificationContentView.mExpandedWrapper.setRecentlyAudiblyAlerted(z);
        }
        if (notificationContentView.mHeadsUpChild != null) {
            notificationContentView.mHeadsUpWrapper.setRecentlyAudiblyAlerted(z);
        }
        NotificationContentView notificationContentView2 = this.mPublicLayout;
        if (notificationContentView2.mContractedChild != null) {
            notificationContentView2.mContractedWrapper.setRecentlyAudiblyAlerted(z);
        }
        if (notificationContentView2.mExpandedChild != null) {
            notificationContentView2.mExpandedWrapper.setRecentlyAudiblyAlerted(z);
        }
        if (notificationContentView2.mHeadsUpChild != null) {
            notificationContentView2.mHeadsUpWrapper.setRecentlyAudiblyAlerted(z);
        }
    }

    public final void applyContentTransformation(float f, float f2) {
        if (!this.mIsLastChild) {
            f = 1.0f;
        }
        for (NotificationContentView notificationContentView : this.mLayouts) {
            notificationContentView.setAlpha(f);
            notificationContentView.setTranslationY(f2);
        }
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            notificationChildrenContainer.setAlpha(f);
            this.mChildrenContainer.setTranslationY(f2);
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView, com.android.systemui.statusbar.notification.Roundable
    public final void applyRoundnessAndInvalidate() {
        if (this.mIsSummaryWithChildren) {
            this.mChildrenContainer.requestRoundness(getTopRoundness(), getBottomRoundness(), FROM_PARENT, false);
        }
        super.applyRoundnessAndInvalidate();
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean areChildrenExpanded() {
        return this.mChildrenExpanded;
    }

    public final boolean areGutsExposed() {
        NotificationGuts notificationGuts = this.mGuts;
        if (notificationGuts != null && notificationGuts.mExposed) {
            return true;
        }
        return false;
    }

    public final boolean canShowHeadsUp() {
        boolean z;
        boolean z2;
        if (this.mOnKeyguard) {
            StatusBarStateController statusBarStateController = this.mStatusBarStateController;
            if (statusBarStateController != null && statusBarStateController.isDozing()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                KeyguardBypassController keyguardBypassController = this.mBypassController;
                if (keyguardBypassController != null && !keyguardBypassController.getBypassEnabled()) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (!z2 && (!this.mEntry.isStickyAndNotDemoted() || (!this.mIgnoreLockscreenConstraints && this.mSaveSpaceOnLockscreen))) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean canViewBeDismissed$1() {
        if (((NotificationDismissibilityProviderImpl) this.mDismissibilityProvider).isDismissable(this.mEntry) && (!shouldShowPublic() || !this.mSensitiveHiddenInGeneral)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView
    public final boolean childNeedsClipping(View view) {
        boolean z;
        boolean shouldClipToRounding;
        if (view instanceof NotificationContentView) {
            NotificationContentView notificationContentView = (NotificationContentView) view;
            if (isClippingNeeded()) {
                return true;
            }
            if (hasRoundedCorner()) {
                getTopRoundness();
                boolean z2 = false;
                if (getBottomRoundness() != 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                NotificationViewWrapper visibleWrapper = notificationContentView.getVisibleWrapper(notificationContentView.mVisibleType);
                if (visibleWrapper == null) {
                    shouldClipToRounding = false;
                } else {
                    shouldClipToRounding = visibleWrapper.shouldClipToRounding(z);
                }
                if (notificationContentView.mUserExpanding) {
                    NotificationViewWrapper visibleWrapper2 = notificationContentView.getVisibleWrapper(notificationContentView.mTransformationStartVisibleType);
                    if (visibleWrapper2 != null) {
                        z2 = visibleWrapper2.shouldClipToRounding(z);
                    }
                    shouldClipToRounding |= z2;
                }
                if (shouldClipToRounding) {
                    return true;
                }
            }
        } else if (view == this.mChildrenContainer) {
            if (isClippingNeeded() || hasRoundedCorner()) {
                return true;
            }
        } else if (view instanceof NotificationGuts) {
            return hasRoundedCorner();
        }
        return super.childNeedsClipping(view);
    }

    public final boolean childrenRequireOverlappingRendering() {
        RemoteInputView remoteInputView;
        boolean z;
        if (this.mEntry.mSbn.getNotification().isColorized()) {
            return true;
        }
        NotificationContentView showingLayout = getShowingLayout();
        if (showingLayout != null) {
            RemoteInputView remoteInputView2 = showingLayout.mHeadsUpRemoteInput;
            if ((remoteInputView2 != null && remoteInputView2.isActive()) || ((remoteInputView = showingLayout.mExpandedRemoteInput) != null && remoteInputView.isActive())) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final ExpandableViewState createExpandableViewState() {
        return new NotificationViewState(0);
    }

    public final NotificationMenuRowPlugin createMenu() {
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin == null) {
            return null;
        }
        if (notificationMenuRowPlugin.getMenuView() == null) {
            this.mMenuRow.createMenu(this, this.mEntry.mSbn);
            this.mMenuRow.setAppName(this.mAppName);
            addView(this.mMenuRow.getMenuView(), 0, new FrameLayout.LayoutParams(-1, -1));
        }
        return this.mMenuRow;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        canvas.save();
        Path path = this.mExpandingClipPath;
        if (path != null && (this.mExpandAnimationRunning || this.mChildIsExpanding)) {
            canvas.clipPath(path);
        }
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public final void doLongClickCallback(int i, int i2) {
        createMenu();
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        doLongClickCallback(i, i2, notificationMenuRowPlugin != null ? notificationMenuRowPlugin.getLongpressMenuItem(((FrameLayout) this).mContext) : null);
    }

    public final void doSmartActionClick(int i, int i2) {
        NotificationMenuRowPlugin.MenuItem menuItem;
        createMenu();
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null) {
            menuItem = notificationMenuRowPlugin.getLongpressMenuItem(((FrameLayout) this).mContext);
        } else {
            menuItem = null;
        }
        if (menuItem.getGutsView() instanceof NotificationConversationInfo) {
            ((NotificationConversationInfo) menuItem.getGutsView()).setSelectedAction(2);
        }
        doLongClickCallback(i, i2, menuItem);
    }

    public final void dragAndDropSuccess() {
        NotificationClicker.AnonymousClass1 anonymousClass1 = this.mOnDragSuccessListener;
        if (anonymousClass1 != null) {
            NotificationEntry notificationEntry = this.mEntry;
            StatusBarNotificationActivityStarter statusBarNotificationActivityStarter = (StatusBarNotificationActivityStarter) NotificationClicker.this.mNotificationActivityStarter;
            NotificationVisibility obtain = ((NotificationVisibilityProviderImpl) statusBarNotificationActivityStarter.mVisibilityProvider).obtain(notificationEntry);
            boolean shouldAutoCancel = StatusBarNotificationActivityStarter.shouldAutoCancel(notificationEntry.mSbn);
            String str = notificationEntry.mKey;
            if (shouldAutoCancel || statusBarNotificationActivityStarter.mRemoteInputManager.isNotificationKeptForRemoteInputHistory(str)) {
                statusBarNotificationActivityStarter.mMainThreadHandler.post(new StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3(statusBarNotificationActivityStarter, ((OnUserInteractionCallbackImpl) statusBarNotificationActivityStarter.mOnUserInteractionCallback).registerFutureDismissal(notificationEntry, 1), 1));
            }
            NotificationClickNotifier notificationClickNotifier = statusBarNotificationActivityStarter.mClickNotifier;
            notificationClickNotifier.getClass();
            try {
                notificationClickNotifier.barService.onNotificationClick(str, obtain);
            } catch (RemoteException unused) {
            }
            notificationClickNotifier.mainExecutor.execute(new NotificationClickNotifier$onNotificationClick$1(notificationClickNotifier, str));
            statusBarNotificationActivityStarter.mIsCollapsingToShowActivityOverLockscreen = false;
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView, com.android.systemui.statusbar.notification.row.ExpandableView, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, final String[] strArr) {
        final IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.println("Notification: " + this.mEntry.mKey);
        DumpUtilsKt.withIncreasedIndent(asIndenting, new Runnable() { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                int transientViewCount;
                ExpandableNotificationRow expandableNotificationRow = ExpandableNotificationRow.this;
                IndentingPrintWriter indentingPrintWriter = asIndenting;
                String[] strArr2 = strArr;
                SourceType$Companion$from$1 sourceType$Companion$from$1 = ExpandableNotificationRow.BASE_VALUE;
                expandableNotificationRow.getClass();
                indentingPrintWriter.println(expandableNotificationRow);
                indentingPrintWriter.print("visibility: " + expandableNotificationRow.getVisibility());
                indentingPrintWriter.print(", alpha: " + expandableNotificationRow.getAlpha());
                indentingPrintWriter.print(", translation: " + expandableNotificationRow.getTranslation());
                indentingPrintWriter.print(", entry dismissable: " + ((NotificationDismissibilityProviderImpl) expandableNotificationRow.mDismissibilityProvider).isDismissable(expandableNotificationRow.mEntry));
                StringBuilder sb = new StringBuilder(", mOnUserInteractionCallback null: ");
                boolean z2 = true;
                if (expandableNotificationRow.mOnUserInteractionCallback == null) {
                    z = true;
                } else {
                    z = false;
                }
                sb.append(z);
                indentingPrintWriter.print(sb.toString());
                indentingPrintWriter.print(", removed: false");
                indentingPrintWriter.print(", expandAnimationRunning: " + expandableNotificationRow.mExpandAnimationRunning);
                NotificationContentView showingLayout = expandableNotificationRow.getShowingLayout();
                StringBuilder sb2 = new StringBuilder(", privateShowing: ");
                if (showingLayout != expandableNotificationRow.mPrivateLayout) {
                    z2 = false;
                }
                sb2.append(z2);
                indentingPrintWriter.print(sb2.toString());
                if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON || NotiRune.NOTI_SUBSCREEN_CLEAR_COVER) {
                    indentingPrintWriter.print(", inflationWakelock: " + expandableNotificationRow.mEntry.mInflationWakeLock);
                }
                indentingPrintWriter.println();
                indentingPrintWriter.print("contentView visibility: " + showingLayout.getVisibility());
                indentingPrintWriter.print(", alpha: " + showingLayout.getAlpha());
                indentingPrintWriter.print(", clipBounds: " + showingLayout.getClipBounds());
                indentingPrintWriter.print(", contentHeight: " + showingLayout.mContentHeight);
                indentingPrintWriter.print(", visibleType: " + showingLayout.mVisibleType);
                View viewForVisibleType = showingLayout.getViewForVisibleType(showingLayout.mVisibleType);
                indentingPrintWriter.print(", visibleView ");
                if (viewForVisibleType != null) {
                    indentingPrintWriter.print(" visibility: " + viewForVisibleType.getVisibility());
                    indentingPrintWriter.print(", alpha: " + viewForVisibleType.getAlpha());
                    indentingPrintWriter.print(", clipBounds: " + viewForVisibleType.getClipBounds());
                } else {
                    indentingPrintWriter.print("null");
                }
                indentingPrintWriter.println();
                indentingPrintWriter.print("RemoteInputViews { ");
                indentingPrintWriter.print(" visibleType: " + showingLayout.mVisibleType);
                if (showingLayout.mHeadsUpRemoteInputController != null) {
                    indentingPrintWriter.print(", headsUpRemoteInputController.isActive: " + ((RemoteInputViewControllerImpl) showingLayout.mHeadsUpRemoteInputController).view.isActive());
                } else {
                    indentingPrintWriter.print(", headsUpRemoteInputController: null");
                }
                if (showingLayout.mExpandedRemoteInputController != null) {
                    indentingPrintWriter.print(", expandedRemoteInputController.isActive: " + ((RemoteInputViewControllerImpl) showingLayout.mExpandedRemoteInputController).view.isActive());
                } else {
                    indentingPrintWriter.print(", expandedRemoteInputController: null");
                }
                indentingPrintWriter.println(" }");
                ExpandableViewState expandableViewState = expandableNotificationRow.mViewState;
                if (expandableViewState != null) {
                    expandableViewState.dump(indentingPrintWriter, strArr2);
                    indentingPrintWriter.println();
                } else {
                    indentingPrintWriter.println("no viewState!!!");
                }
                indentingPrintWriter.println(((ExpandableOutlineView) expandableNotificationRow).mRoundableState.debugString());
                indentingPrintWriter.println("Background View: " + expandableNotificationRow.mBackgroundNormal);
                NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
                if (notificationChildrenContainer == null) {
                    transientViewCount = 0;
                } else {
                    transientViewCount = notificationChildrenContainer.getTransientViewCount();
                }
                if (!expandableNotificationRow.mIsSummaryWithChildren && transientViewCount <= 0) {
                    NotificationContentView notificationContentView = expandableNotificationRow.mPrivateLayout;
                    if (notificationContentView != null) {
                        if (notificationContentView.mHeadsUpSmartReplyView != null) {
                            indentingPrintWriter.println("HeadsUp SmartReplyView:");
                            indentingPrintWriter.increaseIndent();
                            notificationContentView.mHeadsUpSmartReplyView.dump(indentingPrintWriter);
                            indentingPrintWriter.decreaseIndent();
                        }
                        if (notificationContentView.mExpandedSmartReplyView != null) {
                            indentingPrintWriter.println("Expanded SmartReplyView:");
                            indentingPrintWriter.increaseIndent();
                            notificationContentView.mExpandedSmartReplyView.dump(indentingPrintWriter);
                            indentingPrintWriter.decreaseIndent();
                            return;
                        }
                        return;
                    }
                    return;
                }
                NotificationChildrenContainer notificationChildrenContainer2 = expandableNotificationRow.mChildrenContainer;
                indentingPrintWriter.println("NotificationChildrenContainer { visibility: " + notificationChildrenContainer2.getVisibility() + ", alpha: " + notificationChildrenContainer2.getAlpha() + ", translationY: " + notificationChildrenContainer2.getTranslationY() + ", roundableState: " + notificationChildrenContainer2.mRoundableState.debugString() + "}");
                indentingPrintWriter.println();
                List<ExpandableNotificationRow> attachedChildren = expandableNotificationRow.getAttachedChildren();
                StringBuilder sb3 = new StringBuilder("Children: ");
                sb3.append(attachedChildren.size());
                sb3.append(" {");
                indentingPrintWriter.print(sb3.toString());
                indentingPrintWriter.increaseIndent();
                for (ExpandableNotificationRow expandableNotificationRow2 : attachedChildren) {
                    indentingPrintWriter.println();
                    expandableNotificationRow2.dump(indentingPrintWriter, strArr2);
                }
                indentingPrintWriter.decreaseIndent();
                indentingPrintWriter.println("}");
                indentingPrintWriter.print("Transient Views: " + transientViewCount + " {");
                indentingPrintWriter.increaseIndent();
                for (int i = 0; i < transientViewCount; i++) {
                    indentingPrintWriter.println();
                    ((ExpandableView) expandableNotificationRow.mChildrenContainer.getTransientView(i)).dump(indentingPrintWriter, strArr2);
                }
                indentingPrintWriter.decreaseIndent();
                indentingPrintWriter.println("}");
            }
        });
    }

    @Override // com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        PanelScreenShotLogger panelScreenShotLogger = PanelScreenShotLogger.INSTANCE;
        Boolean valueOf = Boolean.valueOf(this.mSensitive);
        panelScreenShotLogger.getClass();
        PanelScreenShotLogger.addLogItem(arrayList, "mSensitive", valueOf);
        PanelScreenShotLogger.addLogItem(arrayList, "mNeedsRedaction", Boolean.valueOf(needsRedaction()));
        PanelScreenShotLogger.addLogItem(arrayList, "shouldShowPublic", Boolean.valueOf(shouldShowPublic()));
        PanelScreenShotLogger.addLogItem(arrayList, "mHideSensitiveForIntrinsicHeight", Boolean.valueOf(this.mHideSensitiveForIntrinsicHeight));
        PanelScreenShotLogger.addLogItem(arrayList, "isExpanded", Boolean.valueOf(isExpanded(false)));
        PanelScreenShotLogger.addLogItem(arrayList, "getMaxExpandHeight", Integer.valueOf(getMaxExpandHeight()));
        PanelScreenShotLogger.addLogItem(arrayList, "getCollapsedHeight", Integer.valueOf(getCollapsedHeight()));
        PanelScreenShotLogger.addLogItem(arrayList, "getMinHeight", Integer.valueOf(getMinHeight(false)));
        PanelScreenShotLogger.addLogItem(arrayList, "mUseIncreasedCollapsedHeight", Boolean.valueOf(this.mUseIncreasedCollapsedHeight));
        PanelScreenShotLogger.addLogItem(arrayList, "hasInterrupted", Boolean.valueOf(this.mEntry.interruption));
        PanelScreenShotLogger.addLogItem(arrayList, "mDismissState", this.mEntry.mDismissState);
        PanelScreenShotLogger.addLogItem(arrayList, "isDismissable", Boolean.valueOf(((NotificationDismissibilityProviderImpl) this.mDismissibilityProvider).isDismissable(this.mEntry)));
        StatusBarIconView statusBarIconView = this.mEntry.mIcons.mStatusBarIcon;
        if (statusBarIconView != null) {
            PanelScreenShotLogger.addLogItem(arrayList, "isGrayScale", Boolean.valueOf(NotificationUtils.isGrayscale(statusBarIconView, ContrastColorUtil.getInstance(getContext()))));
        }
        arrayList.addAll(getShowingLayout().gatherState());
        return arrayList;
    }

    public final List getAttachedChildren() {
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer == null) {
            return null;
        }
        return notificationChildrenContainer.mAttachedChildren;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getCollapsedHeight() {
        if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
            NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
            return notificationChildrenContainer.getMinHeight(notificationChildrenContainer.getMaxAllowedVisibleChildren(true), false);
        }
        return getMinHeight(false);
    }

    public final float getContentTransformationShift() {
        return this.mIconTransformContentShift;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final View getContentView() {
        if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
            return this.mChildrenContainer;
        }
        return getShowingLayout();
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableOutlineView
    public final Path getCustomClipPath(View view) {
        if (view instanceof NotificationGuts) {
            return getClipPath(true);
        }
        return null;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final float getHeaderVisibleAmount() {
        return this.mHeaderVisibleAmount;
    }

    public final int getHeadsUpHeight() {
        return getShowingLayout().getHeadsUpHeight(false);
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getHeadsUpHeightWithoutHeader() {
        if (canShowHeadsUp() && this.mIsHeadsUp) {
            if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
                NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
                return notificationChildrenContainer.getMinHeight(notificationChildrenContainer.getMaxAllowedVisibleChildren(true), false);
            }
            return getShowingLayout().getHeadsUpHeight(true);
        }
        return getCollapsedHeight();
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getHeightWithoutLockscreenConstraints() {
        this.mIgnoreLockscreenConstraints = true;
        int intrinsicHeight = getIntrinsicHeight();
        this.mIgnoreLockscreenConstraints = false;
        return intrinsicHeight;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getIntrinsicHeight() {
        boolean z;
        boolean z2;
        if (this.mUserLocked) {
            return this.mActualHeight;
        }
        NotificationGuts notificationGuts = this.mGuts;
        if (notificationGuts != null && (z2 = notificationGuts.mExposed)) {
            NotificationGuts.GutsContent gutsContent = notificationGuts.mGutsContent;
            if (gutsContent != null && z2) {
                return gutsContent.getActualHeight();
            }
            return notificationGuts.getHeight();
        }
        if (isChildInGroup() && !isGroupExpanded()) {
            return this.mPrivateLayout.getMinHeight(false);
        }
        if (this.mSensitive && this.mHideSensitiveForIntrinsicHeight) {
            return getMinHeight(false);
        }
        if (this.mIsSummaryWithChildren) {
            return this.mChildrenContainer.getIntrinsicHeight();
        }
        if (canShowHeadsUp()) {
            if (!this.mIsHeadsUp && !this.mHeadsupDisappearRunning) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                if (!this.mIsPinned && !this.mHeadsupDisappearRunning) {
                    if (isExpanded(false)) {
                        return Math.max(getMaxExpandHeight(), getHeadsUpHeight());
                    }
                    return Math.max(getCollapsedHeight(), getHeadsUpHeight());
                }
                return getPinnedHeadsUpHeight(true);
            }
        }
        if (isExpanded(false)) {
            return getMaxExpandHeight();
        }
        return getCollapsedHeight();
    }

    public final boolean getIsNonPackageBlockable() {
        return !SecNotificationBlockManager.isBlockablePackage(((FrameLayout) this).mContext, this.mEntry.mSbn.getPackageName());
    }

    public final boolean getIsNonblockable() {
        int checkSystemAppAndMetaData;
        Context context = ((FrameLayout) this).mContext;
        String packageName = this.mEntry.mSbn.getPackageName();
        NotificationChannel channel = this.mEntry.getChannel();
        boolean z = false;
        if (SecNotificationBlockManager.checkConfigCSC(context, packageName, channel) != 2 && ((checkSystemAppAndMetaData = SecNotificationBlockManager.checkSystemAppAndMetaData(context, packageName)) == 4 || channel.isBlockable() || checkSystemAppAndMetaData != 2)) {
            z = true;
        }
        return !z;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getMaxContentHeight() {
        int viewHeight;
        int extraRemoteInputHeight;
        if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
            return this.mChildrenContainer.getMaxContentHeight();
        }
        NotificationContentView showingLayout = getShowingLayout();
        if (showingLayout.mExpandedChild != null) {
            viewHeight = showingLayout.getViewHeight(1, false);
            extraRemoteInputHeight = showingLayout.getExtraRemoteInputHeight(showingLayout.mExpandedRemoteInput);
        } else if (showingLayout.mIsHeadsUp && showingLayout.mHeadsUpChild != null && showingLayout.mContainingNotification.canShowHeadsUp()) {
            viewHeight = showingLayout.getViewHeight(2, false);
            extraRemoteInputHeight = showingLayout.getExtraRemoteInputHeight(showingLayout.mHeadsUpRemoteInput);
        } else {
            if (showingLayout.mContractedChild != null) {
                return showingLayout.getViewHeight(0, false);
            }
            return showingLayout.mNotificationMaxHeight;
        }
        return extraRemoteInputHeight + viewHeight;
    }

    public final int getMaxExpandHeight() {
        int i;
        NotificationContentView notificationContentView = this.mPrivateLayout;
        if (notificationContentView.mExpandedChild != null) {
            i = 1;
        } else if (notificationContentView.mContractedChild != null) {
            i = 0;
        } else {
            return notificationContentView.getMinHeight(false);
        }
        return notificationContentView.getExtraRemoteInputHeight(notificationContentView.mExpandedRemoteInput) + notificationContentView.getViewHeight(i, false);
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getMinHeight(boolean z) {
        NotificationGuts notificationGuts;
        boolean z2;
        if (!z && (notificationGuts = this.mGuts) != null && (z2 = notificationGuts.mExposed)) {
            NotificationGuts.GutsContent gutsContent = notificationGuts.mGutsContent;
            if (gutsContent != null && z2) {
                return gutsContent.getActualHeight();
            }
            return notificationGuts.getHeight();
        }
        if (!z && canShowHeadsUp() && this.mIsHeadsUp && this.mHeadsUpManager.isTrackingHeadsUp()) {
            return getPinnedHeadsUpHeight(false);
        }
        if (this.mIsSummaryWithChildren && !isGroupExpanded() && !shouldShowPublic()) {
            return this.mChildrenContainer.getMinHeight(2, false);
        }
        if (!z && canShowHeadsUp() && this.mIsHeadsUp) {
            return getHeadsUpHeight();
        }
        return getShowingLayout().getMinHeight(false);
    }

    public final NotificationViewWrapper getNotificationViewWrapper() {
        NotificationViewWrapper notificationViewWrapper;
        NotificationViewWrapper notificationViewWrapper2;
        NotificationViewWrapper notificationViewWrapper3;
        if (this.mIsSummaryWithChildren) {
            return this.mChildrenContainer.mNotificationHeaderWrapper;
        }
        NotificationContentView notificationContentView = this.mPrivateLayout;
        if (notificationContentView.mContractedChild == null || (notificationViewWrapper3 = notificationContentView.mContractedWrapper) == null) {
            if (notificationContentView.mExpandedChild == null || (notificationViewWrapper2 = notificationContentView.mExpandedWrapper) == null) {
                if (notificationContentView.mHeadsUpChild == null || (notificationViewWrapper = notificationContentView.mHeadsUpWrapper) == null) {
                    return null;
                }
                return notificationViewWrapper;
            }
            return notificationViewWrapper2;
        }
        return notificationViewWrapper3;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final int getPinnedHeadsUpHeight() {
        return getPinnedHeadsUpHeight(true);
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final StatusBarIconView getShelfIcon() {
        return this.mEntry.mIcons.mShelfIcon;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final View getShelfTransformationTarget() {
        if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
            return this.mChildrenContainer.getVisibleWrapper().getShelfTransformationTarget();
        }
        NotificationContentView showingLayout = getShowingLayout();
        NotificationViewWrapper visibleWrapper = showingLayout.getVisibleWrapper(showingLayout.mVisibleType);
        if (visibleWrapper != null) {
            return visibleWrapper.getShelfTransformationTarget();
        }
        return null;
    }

    public final NotificationContentView getShowingLayout() {
        if (shouldShowPublic()) {
            return this.mPublicLayout;
        }
        return this.mPrivateLayout;
    }

    public final Animator getTranslateViewAnimator(final float f, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        Animator animator = this.mTranslateAnim;
        if (animator != null) {
            animator.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, TRANSLATE_CONTENT, f);
        if (animatorUpdateListener != null) {
            ofFloat.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow.3
            public boolean cancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator2) {
                this.cancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                if (!this.cancelled && f == 0.0f) {
                    NotificationMenuRowPlugin notificationMenuRowPlugin = ExpandableNotificationRow.this.mMenuRow;
                    if (notificationMenuRowPlugin != null) {
                        notificationMenuRowPlugin.resetMenu();
                    }
                    ExpandableNotificationRow.this.mTranslateAnim = null;
                }
                ExpandableNotificationRow.this.mTranslateAnim = null;
            }
        });
        this.mTranslateAnim = ofFloat;
        return ofFloat;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final float getTranslation() {
        if (this.mDismissUsingRowTranslationX) {
            return getTranslationX();
        }
        ArrayList arrayList = this.mTranslateableViews;
        if (arrayList != null && arrayList.size() > 0) {
            return ((View) this.mTranslateableViews.get(0)).getTranslationX();
        }
        return 0.0f;
    }

    public final ArraySet getUniqueChannels() {
        ArraySet arraySet = new ArraySet();
        arraySet.add(this.mEntry.getChannel());
        if (this.mIsSummaryWithChildren) {
            List attachedChildren = getAttachedChildren();
            int size = attachedChildren.size();
            for (int i = 0; i < size; i++) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) attachedChildren.get(i);
                NotificationChannel channel = expandableNotificationRow.mEntry.getChannel();
                StatusBarNotification statusBarNotification = expandableNotificationRow.mEntry.mSbn;
                if (statusBarNotification.getUser().equals(this.mEntry.mSbn.getUser()) && statusBarNotification.getPackageName().equals(this.mEntry.mSbn.getPackageName())) {
                    arraySet.add(channel);
                }
            }
        }
        return arraySet;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean hasExpandingChild() {
        return this.mChildIsExpanding;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView, android.view.View
    public final boolean hasOverlappingRendering() {
        if (super.hasOverlappingRendering() && childrenRequireOverlappingRendering()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final boolean hideBackground() {
        if (!this.mShowNoBackground) {
            return false;
        }
        return true;
    }

    public final void initGroupHeaderContainAtMark() {
        TextView textView;
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null && (textView = (TextView) notificationChildrenContainer.mNotificationHeader.findViewById(android.R.id.line)) != null && textView.getText().toString().contains("@")) {
            this.mIsGroupHeaderContainAtMark = true;
        }
    }

    public final void initialize(NotificationEntry notificationEntry, RemoteInputViewSubcomponent.Factory factory, String str, String str2, ExpandableNotificationRowController.AnonymousClass1 anonymousClass1, KeyguardBypassController keyguardBypassController, GroupMembershipManager groupMembershipManager, GroupExpansionManager groupExpansionManager, HeadsUpManager headsUpManager, RowContentBindStage rowContentBindStage, OnExpandClickListener onExpandClickListener, ExpandableNotificationRowController$$ExternalSyntheticLambda0 expandableNotificationRowController$$ExternalSyntheticLambda0, FalsingManager falsingManager, FalsingCollector falsingCollector, StatusBarStateController statusBarStateController, PeopleNotificationIdentifier peopleNotificationIdentifier, OnUserInteractionCallback onUserInteractionCallback, Optional optional, NotificationGutsManager notificationGutsManager, NotificationDismissibilityProvider notificationDismissibilityProvider, MetricsLogger metricsLogger, SmartReplyConstants smartReplyConstants, SmartReplyController smartReplyController, FeatureFlags featureFlags, IStatusBarService iStatusBarService, ActivityStarter activityStarter) {
        this.mEntry = notificationEntry;
        this.mAppName = str;
        if (this.mMenuRow == null) {
            this.mMenuRow = new NotificationMenuRow(((FrameLayout) this).mContext, peopleNotificationIdentifier);
        }
        if (this.mMenuRow.getMenuView() != null) {
            this.mMenuRow.setAppName(this.mAppName);
        }
        this.mLogger = anonymousClass1;
        this.mLoggingKey = str2;
        this.mBypassController = keyguardBypassController;
        this.mGroupMembershipManager = groupMembershipManager;
        this.mGroupExpansionManager = groupExpansionManager;
        this.mPrivateLayout.getClass();
        this.mHeadsUpManager = headsUpManager;
        this.mRowContentBindStage = rowContentBindStage;
        this.mOnExpandClickListener = onExpandClickListener;
        this.mOnFeedbackClickListener = new ExpandableNotificationRow$$ExternalSyntheticLambda3(this, expandableNotificationRowController$$ExternalSyntheticLambda0, 1);
        this.mFalsingManager = falsingManager;
        this.mFalsingCollector = falsingCollector;
        this.mStatusBarStateController = statusBarStateController;
        this.mPeopleNotificationIdentifier = peopleNotificationIdentifier;
        for (NotificationContentView notificationContentView : this.mLayouts) {
            notificationContentView.mPeopleIdentifier = this.mPeopleNotificationIdentifier;
            notificationContentView.mRemoteInputSubcomponentFactory = factory;
            notificationContentView.mSmartReplyConstants = smartReplyConstants;
            notificationContentView.mSmartReplyController = smartReplyController;
            notificationContentView.mStatusBarService = iStatusBarService;
        }
        this.mOnUserInteractionCallback = onUserInteractionCallback;
        this.mBubblesManagerOptional = optional;
        this.mNotificationGutsManager = notificationGutsManager;
        this.mMetricsLogger = metricsLogger;
        this.mDismissibilityProvider = notificationDismissibilityProvider;
        this.mFeatureFlags = featureFlags;
        this.mActivityStarter = activityStarter;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isAboveShelf() {
        if (canShowHeadsUp() && (this.mIsPinned || this.mHeadsupDisappearRunning || ((this.mIsHeadsUp && this.mAboveShelf) || this.mExpandAnimationRunning || this.mChildIsExpanding))) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isChildInGroup() {
        if (this.mNotificationParent != null) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isContentExpandable() {
        if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
            return true;
        }
        return getShowingLayout().mIsContentExpandable;
    }

    public final boolean isConversation$1() {
        if (((PeopleNotificationIdentifierImpl) this.mPeopleNotificationIdentifier).getPeopleNotificationType(this.mEntry) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isExpandAnimationRunning() {
        return this.mExpandAnimationRunning;
    }

    public final boolean isExpandable() {
        if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
            return !this.mChildrenExpanded;
        }
        if (this.mEnableNonGroupedNotificationExpand && this.mExpandable) {
            return true;
        }
        return false;
    }

    public final boolean isExpanded(boolean z) {
        if ((!this.mOnKeyguard || z) && ((!this.mHasUserChangedExpansion && this.mIsSystemChildExpanded) || this.mUserExpanded)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isGroupExpanded() {
        return ((GroupExpansionManagerImpl) this.mGroupExpansionManager).isGroupExpanded(this.mEntry);
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isGroupExpansionChanging() {
        if (isChildInGroup()) {
            return this.mNotificationParent.isGroupExpansionChanging();
        }
        return this.mGroupExpansionChanging;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final boolean isHeadsUp() {
        return this.mIsHeadsUp;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isHeadsUpAnimatingAway() {
        return this.mHeadsupDisappearRunning;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isPinned() {
        return this.mIsPinned;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final boolean isShowingPublic() {
        boolean z;
        NotificationContentView notificationContentView = this.mPublicLayout;
        if (notificationContentView != null && notificationContentView.getChildCount() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.mShowingPublic && z) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final boolean isSoundEffectsEnabled() {
        boolean z;
        BooleanSupplier booleanSupplier;
        StatusBarStateController statusBarStateController = this.mStatusBarStateController;
        if (statusBarStateController != null && statusBarStateController.isDozing() && (booleanSupplier = this.mSecureStateProvider) != null && !booleanSupplier.getAsBoolean()) {
            z = true;
        } else {
            z = false;
        }
        if (!z && super.isSoundEffectsEnabled()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean isSummaryWithChildren() {
        return this.mIsSummaryWithChildren;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean mustStayOnScreen() {
        if (this.mIsHeadsUp && this.mMustStayOnScreen) {
            return true;
        }
        return false;
    }

    public final boolean needsRedaction() {
        return ((NotificationLockscreenUserManagerImpl) ((NotificationLockscreenUserManager) Dependency.get(NotificationLockscreenUserManager.class))).needsRedaction(this.mEntry);
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final void notifyHeightChanged(boolean z) {
        boolean z2;
        super.notifyHeightChanged(z);
        NotificationContentView showingLayout = getShowingLayout();
        if (!z && !this.mUserLocked) {
            z2 = false;
        } else {
            z2 = true;
        }
        showingLayout.selectLayout(z2, false);
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final void onAppearAnimationFinished(boolean z) {
        if (z) {
            resetAllContentAlphas();
            setNotificationFaded(false);
        } else {
            setHeadsUpAnimatingAway(false);
        }
    }

    public final void onAttachedChildrenCountChanged() {
        boolean z;
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null && notificationChildrenContainer.getNotificationChildCount() > 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsSummaryWithChildren = z;
        if (z) {
            Trace.beginSection("ExpNotRow#onChildCountChanged (summary)");
            NotificationChildrenContainer notificationChildrenContainer2 = this.mChildrenContainer;
            NotificationHeaderViewWrapper notificationHeaderViewWrapper = notificationChildrenContainer2.mNotificationHeaderWrapper;
            if (notificationHeaderViewWrapper == null || notificationHeaderViewWrapper.mNotificationHeader == null) {
                notificationChildrenContainer2.recreateNotificationHeader(this.mExpandClickListener, isConversation$1());
            }
        }
        getShowingLayout().updateBackgroundColor(false);
        this.mPrivateLayout.updateExpandButtonsDuringLayout(isExpandable(), false);
        if (this.mIsSummaryWithChildren) {
            this.mChildrenContainer.updateChildrenAppearance();
        }
        updateChildrenVisibility();
        if (this.mIsSummaryWithChildren) {
            this.mChildrenContainer.requestRoundness(getTopRoundness(), getBottomRoundness(), FROM_PARENT, false);
        }
        if (this.mIsSummaryWithChildren) {
            Trace.endSection();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isChildInGroup()) {
            requestRoundnessReset(BASE_VALUE);
        } else {
            float f = this.mSmallRoundness;
            requestRoundness(f, f, BASE_VALUE);
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null && notificationMenuRowPlugin.getMenuView() != null) {
            this.mMenuRow.onConfigurationChanged();
        }
        NotificationInlineImageResolver notificationInlineImageResolver = this.mImageResolver;
        if (notificationInlineImageResolver != null) {
            notificationInlineImageResolver.mMaxImageWidth = notificationInlineImageResolver.getMaxImageWidth();
            notificationInlineImageResolver.mMaxImageHeight = notificationInlineImageResolver.getMaxImageHeight();
        }
        if (this.mIsSummaryWithChildren) {
            NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
            NotificationHeaderViewWrapper notificationHeaderViewWrapper = notificationChildrenContainer.mNotificationHeaderWrapperExpanded;
            if (notificationHeaderViewWrapper != null) {
                notificationHeaderViewWrapper.updateContentDescription();
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = notificationChildrenContainer.mNotificationHeaderWrapper;
            if (notificationHeaderViewWrapper2 != null) {
                notificationHeaderViewWrapper2.updateContentDescription();
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper3 = notificationChildrenContainer.mNotificationHeaderWrapperLowPriority;
            if (notificationHeaderViewWrapper3 != null) {
                notificationHeaderViewWrapper3.updateContentDescription();
            }
        }
        NotificationContentView notificationContentView = this.mPublicLayout;
        if (notificationContentView.mExpandedChild != null) {
            notificationContentView.mExpandedWrapper.updateContentDescription();
        }
        if (notificationContentView.mContractedChild != null) {
            notificationContentView.mContractedWrapper.updateContentDescription();
        }
        if (notificationContentView.mHeadsUpChild != null) {
            notificationContentView.mHeadsUpWrapper.updateContentDescription();
        }
        NotificationContentView notificationContentView2 = this.mPrivateLayout;
        if (notificationContentView2.mExpandedChild != null) {
            notificationContentView2.mExpandedWrapper.updateContentDescription();
        }
        if (notificationContentView2.mContractedChild != null) {
            notificationContentView2.mContractedWrapper.updateContentDescription();
        }
        if (notificationContentView2.mHeadsUpChild != null) {
            notificationContentView2.mHeadsUpWrapper.updateContentDescription();
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableOutlineView
    public final void onDensityOrFontScaleChanged() {
        super.onDensityOrFontScaleChanged();
        initDimens();
        initBackground();
        reInflateViews();
    }

    public final void onExpandedByGesture(boolean z) {
        int i;
        if (((GroupMembershipManagerImpl) this.mGroupMembershipManager).isGroupSummary(this.mEntry)) {
            i = 410;
        } else {
            i = 409;
        }
        this.mMetricsLogger.action(i, z);
    }

    public final void onExpansionChanged(boolean z, boolean z2) {
        boolean isExpanded = isExpanded(false);
        if (this.mIsSummaryWithChildren && (!this.mIsLowPriority || z2)) {
            isExpanded = ((GroupExpansionManagerImpl) this.mGroupExpansionManager).isGroupExpanded(this.mEntry);
        }
        if (isExpanded != z2) {
            updateShelfIconColor();
            ExpandableNotificationRowController.AnonymousClass1 anonymousClass1 = this.mLogger;
            if (anonymousClass1 != null) {
                String str = this.mLoggingKey;
                NotificationLogger notificationLogger = ExpandableNotificationRowController.this.mNotificationLogger;
                notificationLogger.mExpansionStateLogger.onExpansionChanged(str, z, isExpanded, NotificationLogger.getNotificationLocation(((NotifPipeline) ((NotificationVisibilityProviderImpl) notificationLogger.mVisibilityProvider).notifCollection).getEntry(str)));
            }
            if (this.mIsSummaryWithChildren) {
                NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
                if (notificationChildrenContainer.mIsLowPriority) {
                    boolean z3 = notificationChildrenContainer.mUserLocked;
                    if (z3) {
                        notificationChildrenContainer.setUserLocked(z3);
                    }
                    notificationChildrenContainer.updateHeaderVisibility(true, false);
                }
                if (!notificationChildrenContainer.mUserLocked) {
                    notificationChildrenContainer.updateHeaderVisibility(true, false);
                }
            }
            ConversationNotificationManager$onEntryViewBound$1 conversationNotificationManager$onEntryViewBound$1 = this.mExpansionChangedListener;
            if (conversationNotificationManager$onEntryViewBound$1 != null) {
                conversationNotificationManager$onEntryViewBound$1.onExpansionChanged(isExpanded);
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mPublicLayout = (NotificationContentView) findViewById(R.id.expandedPublic);
        NotificationContentView notificationContentView = (NotificationContentView) findViewById(R.id.expanded);
        this.mPrivateLayout = notificationContentView;
        NotificationContentView[] notificationContentViewArr = {notificationContentView, this.mPublicLayout};
        this.mLayouts = notificationContentViewArr;
        final int i = 0;
        for (NotificationContentView notificationContentView2 : notificationContentViewArr) {
            notificationContentView2.mExpandClickListener = this.mExpandClickListener;
            notificationContentView2.mContainingNotification = this;
        }
        ViewStub viewStub = (ViewStub) findViewById(R.id.notification_guts_stub);
        this.mGutsStub = viewStub;
        viewStub.setOnInflateListener(new ViewStub.OnInflateListener(this) { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda0
            public final /* synthetic */ ExpandableNotificationRow f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.ViewStub.OnInflateListener
            public final void onInflate(ViewStub viewStub2, View view) {
                switch (i) {
                    case 0:
                        ExpandableNotificationRow expandableNotificationRow = this.f$0;
                        SourceType$Companion$from$1 sourceType$Companion$from$1 = ExpandableNotificationRow.BASE_VALUE;
                        expandableNotificationRow.getClass();
                        NotificationGuts notificationGuts = (NotificationGuts) view;
                        expandableNotificationRow.mGuts = notificationGuts;
                        notificationGuts.mClipTopAmount = expandableNotificationRow.mClipTopAmount;
                        notificationGuts.invalidate();
                        NotificationGuts notificationGuts2 = expandableNotificationRow.mGuts;
                        notificationGuts2.mActualHeight = expandableNotificationRow.mActualHeight;
                        notificationGuts2.invalidate();
                        expandableNotificationRow.mGutsStub = null;
                        return;
                    default:
                        ExpandableNotificationRow expandableNotificationRow2 = this.f$0;
                        SourceType$Companion$from$1 sourceType$Companion$from$12 = ExpandableNotificationRow.BASE_VALUE;
                        expandableNotificationRow2.getClass();
                        NotificationChildrenContainer notificationChildrenContainer = (NotificationChildrenContainer) view;
                        expandableNotificationRow2.mChildrenContainer = notificationChildrenContainer;
                        notificationChildrenContainer.mIsLowPriority = expandableNotificationRow2.mIsLowPriority;
                        if (notificationChildrenContainer.mContainingNotification != null) {
                            notificationChildrenContainer.recreateLowPriorityHeader(null);
                            notificationChildrenContainer.updateHeaderVisibility(false, false);
                        }
                        boolean z = notificationChildrenContainer.mUserLocked;
                        if (z) {
                            notificationChildrenContainer.setUserLocked(z);
                        }
                        NotificationChildrenContainer notificationChildrenContainer2 = expandableNotificationRow2.mChildrenContainer;
                        notificationChildrenContainer2.mContainingNotification = expandableNotificationRow2;
                        notificationChildrenContainer2.mGroupingUtil = new NotificationGroupingUtil(notificationChildrenContainer2.mContainingNotification);
                        expandableNotificationRow2.mChildrenContainer.onNotificationUpdated();
                        expandableNotificationRow2.mTranslateableViews.add(expandableNotificationRow2.mChildrenContainer);
                        return;
                }
            }
        });
        ViewStub viewStub2 = (ViewStub) findViewById(R.id.child_container_stub);
        this.mChildrenContainerStub = viewStub2;
        final int i2 = 1;
        viewStub2.setOnInflateListener(new ViewStub.OnInflateListener(this) { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda0
            public final /* synthetic */ ExpandableNotificationRow f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.ViewStub.OnInflateListener
            public final void onInflate(ViewStub viewStub22, View view) {
                switch (i2) {
                    case 0:
                        ExpandableNotificationRow expandableNotificationRow = this.f$0;
                        SourceType$Companion$from$1 sourceType$Companion$from$1 = ExpandableNotificationRow.BASE_VALUE;
                        expandableNotificationRow.getClass();
                        NotificationGuts notificationGuts = (NotificationGuts) view;
                        expandableNotificationRow.mGuts = notificationGuts;
                        notificationGuts.mClipTopAmount = expandableNotificationRow.mClipTopAmount;
                        notificationGuts.invalidate();
                        NotificationGuts notificationGuts2 = expandableNotificationRow.mGuts;
                        notificationGuts2.mActualHeight = expandableNotificationRow.mActualHeight;
                        notificationGuts2.invalidate();
                        expandableNotificationRow.mGutsStub = null;
                        return;
                    default:
                        ExpandableNotificationRow expandableNotificationRow2 = this.f$0;
                        SourceType$Companion$from$1 sourceType$Companion$from$12 = ExpandableNotificationRow.BASE_VALUE;
                        expandableNotificationRow2.getClass();
                        NotificationChildrenContainer notificationChildrenContainer = (NotificationChildrenContainer) view;
                        expandableNotificationRow2.mChildrenContainer = notificationChildrenContainer;
                        notificationChildrenContainer.mIsLowPriority = expandableNotificationRow2.mIsLowPriority;
                        if (notificationChildrenContainer.mContainingNotification != null) {
                            notificationChildrenContainer.recreateLowPriorityHeader(null);
                            notificationChildrenContainer.updateHeaderVisibility(false, false);
                        }
                        boolean z = notificationChildrenContainer.mUserLocked;
                        if (z) {
                            notificationChildrenContainer.setUserLocked(z);
                        }
                        NotificationChildrenContainer notificationChildrenContainer2 = expandableNotificationRow2.mChildrenContainer;
                        notificationChildrenContainer2.mContainingNotification = expandableNotificationRow2;
                        notificationChildrenContainer2.mGroupingUtil = new NotificationGroupingUtil(notificationChildrenContainer2.mContainingNotification);
                        expandableNotificationRow2.mChildrenContainer.onNotificationUpdated();
                        expandableNotificationRow2.mTranslateableViews.add(expandableNotificationRow2.mChildrenContainer);
                        return;
                }
            }
        });
        this.mTranslateableViews = new ArrayList();
        while (i < getChildCount()) {
            this.mTranslateableViews.add(getChildAt(i));
            i++;
        }
        this.mTranslateableViews.remove(this.mChildrenContainerStub);
        this.mTranslateableViews.remove(this.mGutsStub);
    }

    public final void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z;
        boolean z2;
        boolean z3;
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        boolean z4 = false;
        boolean z5 = true;
        if (this.mLongPressListener == null) {
            z2 = false;
        } else if (!areGutsExposed()) {
            z2 = true;
        } else {
            NotificationGuts notificationGuts = this.mGuts;
            if (notificationGuts != null) {
                NotificationGuts.GutsContent gutsContent = notificationGuts.mGutsContent;
                if (gutsContent != null && gutsContent.isLeavebehind()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    z = true;
                    z2 = !z;
                }
            }
            z = false;
            z2 = !z;
        }
        if (z2) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK);
        }
        accessibilityNodeInfo.setLongClickable(z2);
        if (canViewBeDismissed$1() && !this.mIsSnoozed) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_DISMISS);
        }
        boolean shouldShowPublic = shouldShowPublic();
        if (!shouldShowPublic) {
            if (this.mIsSummaryWithChildren) {
                if (!this.mIsLowPriority || isExpanded(false)) {
                    z4 = isGroupExpanded();
                }
            } else {
                z5 = this.mPrivateLayout.mIsContentExpandable;
                z4 = isExpanded(false);
            }
        } else {
            z5 = shouldShowPublic;
        }
        if (z5 && !this.mIsSnoozed) {
            if (z4) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_COLLAPSE);
            } else {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_EXPAND);
            }
        }
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null && notificationMenuRowPlugin.getSnoozeMenuItem(getContext()) != null) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_snooze, getContext().getResources().getString(R.string.notification_menu_snooze_action)));
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            this.mFalsingManager.isFalseTap(2);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (KeyEvent.isConfirmKey(i)) {
            keyEvent.startTracking();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (KeyEvent.isConfirmKey(i)) {
            doLongClickCallback(getWidth() / 2, getHeight() / 2);
            return true;
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (KeyEvent.isConfirmKey(i)) {
            if (!keyEvent.isCanceled()) {
                performClick();
                return true;
            }
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        NotificationViewWrapper visibleWrapper;
        View icon;
        Trace.beginSection(appendTraceStyleTag("ExpNotRow#onLayout"));
        int intrinsicHeight = getIntrinsicHeight();
        super.onLayout(z, i, i2, i3, i4);
        if (intrinsicHeight != getIntrinsicHeight() && (intrinsicHeight != 0 || this.mActualHeight > 0)) {
            notifyHeightChanged(true);
        }
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null && notificationMenuRowPlugin.getMenuView() != null) {
            this.mMenuRow.onParentHeightUpdate();
        }
        if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
            visibleWrapper = this.mChildrenContainer.getVisibleWrapper();
        } else {
            NotificationContentView showingLayout = getShowingLayout();
            visibleWrapper = showingLayout.getVisibleWrapper(showingLayout.mVisibleType);
        }
        if (visibleWrapper == null) {
            icon = null;
        } else {
            icon = visibleWrapper.getIcon();
        }
        if (icon != null) {
            this.mIconTransformContentShift = icon.getHeight() + getRelativeTopPadding(icon);
        } else {
            this.mIconTransformContentShift = this.mContentShift;
        }
        LayoutListener layoutListener = this.mLayoutListener;
        if (layoutListener != null) {
            NotificationMenuRow notificationMenuRow = (NotificationMenuRow) layoutListener;
            notificationMenuRow.mIconsPlaced = false;
            notificationMenuRow.setMenuLocation();
            notificationMenuRow.mParent.mLayoutListener = null;
        }
        Trace.endSection();
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        Trace.beginSection(appendTraceStyleTag("ExpNotRow#onMeasure"));
        super.onMeasure(i, i2);
        Trace.endSection();
    }

    public final void onNotificationUpdated() {
        TextView textView;
        TextView textView2;
        boolean z;
        int size;
        int size2;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (this.mIsSummaryWithChildren) {
            Trace.beginSection("ExpNotRow#onNotifUpdated (summary)");
        } else {
            Trace.beginSection("ExpNotRow#onNotifUpdated (leaf)");
        }
        for (NotificationContentView notificationContentView : this.mLayouts) {
            NotificationEntry notificationEntry = this.mEntry;
            notificationContentView.mNotificationEntry = notificationEntry;
            if (notificationEntry.targetSdk < 24) {
                z = true;
            } else {
                z = false;
            }
            notificationContentView.mBeforeN = z;
            notificationContentView.updateAllSingleLineViews();
            ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
            if (notificationContentView.mContractedChild != null) {
                notificationContentView.mContractedWrapper.onContentUpdated(expandableNotificationRow);
            }
            if (notificationContentView.mExpandedChild != null) {
                notificationContentView.mExpandedWrapper.onContentUpdated(expandableNotificationRow);
            }
            if (notificationContentView.mHeadsUpChild != null) {
                notificationContentView.mHeadsUpWrapper.onContentUpdated(expandableNotificationRow);
            }
            if (notificationContentView.mRemoteInputController != null) {
                if (notificationContentView.mNotificationEntry.mSbn.getNotification().findRemoteInputActionPair(true) != null) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                View view = notificationContentView.mExpandedChild;
                if (view != null) {
                    NotificationContentView.RemoteInputViewData applyRemoteInput = notificationContentView.applyRemoteInput(view, notificationContentView.mNotificationEntry, z5, notificationContentView.mPreviousExpandedRemoteInputIntent, notificationContentView.mExpandedWrapper);
                    notificationContentView.mExpandedRemoteInput = applyRemoteInput.mView;
                    RemoteInputViewController remoteInputViewController = applyRemoteInput.mController;
                    notificationContentView.mExpandedRemoteInputController = remoteInputViewController;
                    if (remoteInputViewController != null) {
                        ((RemoteInputViewControllerImpl) remoteInputViewController).bind();
                    }
                } else {
                    notificationContentView.mExpandedRemoteInput = null;
                    RemoteInputViewController remoteInputViewController2 = notificationContentView.mExpandedRemoteInputController;
                    if (remoteInputViewController2 != null) {
                        ((RemoteInputViewControllerImpl) remoteInputViewController2).unbind();
                    }
                    notificationContentView.mExpandedRemoteInputController = null;
                }
                RemoteInputView remoteInputView = notificationContentView.mCachedExpandedRemoteInput;
                if (remoteInputView != null && remoteInputView != notificationContentView.mExpandedRemoteInput) {
                    remoteInputView.dispatchFinishTemporaryDetach();
                }
                notificationContentView.mCachedExpandedRemoteInput = null;
                notificationContentView.mCachedExpandedRemoteInputViewController = null;
                View view2 = notificationContentView.mHeadsUpChild;
                if (view2 != null) {
                    NotificationContentView.RemoteInputViewData applyRemoteInput2 = notificationContentView.applyRemoteInput(view2, notificationContentView.mNotificationEntry, z5, notificationContentView.mPreviousHeadsUpRemoteInputIntent, notificationContentView.mHeadsUpWrapper);
                    notificationContentView.mHeadsUpRemoteInput = applyRemoteInput2.mView;
                    RemoteInputViewController remoteInputViewController3 = applyRemoteInput2.mController;
                    notificationContentView.mHeadsUpRemoteInputController = remoteInputViewController3;
                    if (remoteInputViewController3 != null) {
                        ((RemoteInputViewControllerImpl) remoteInputViewController3).bind();
                    }
                } else {
                    notificationContentView.mHeadsUpRemoteInput = null;
                    RemoteInputViewController remoteInputViewController4 = notificationContentView.mHeadsUpRemoteInputController;
                    if (remoteInputViewController4 != null) {
                        ((RemoteInputViewControllerImpl) remoteInputViewController4).unbind();
                    }
                    notificationContentView.mHeadsUpRemoteInputController = null;
                }
                RemoteInputView remoteInputView2 = notificationContentView.mCachedHeadsUpRemoteInput;
                if (remoteInputView2 != null && remoteInputView2 != notificationContentView.mHeadsUpRemoteInput) {
                    remoteInputView2.dispatchFinishTemporaryDetach();
                }
                notificationContentView.mCachedHeadsUpRemoteInput = null;
                notificationContentView.mCachedHeadsUpRemoteInputViewController = null;
            }
            InflatedSmartReplyState inflatedSmartReplyState = notificationContentView.mCurrentSmartReplyState;
            if (inflatedSmartReplyState != null) {
                View view3 = notificationContentView.mContractedChild;
                if (view3 != null) {
                    NotificationContentView.applyExternalSmartReplyState(view3, inflatedSmartReplyState);
                }
                View view4 = notificationContentView.mExpandedChild;
                if (view4 != null) {
                    NotificationContentView.applyExternalSmartReplyState(view4, notificationContentView.mCurrentSmartReplyState);
                    SmartReplyView applySmartReplyView = NotificationContentView.applySmartReplyView(notificationContentView.mExpandedChild, notificationContentView.mCurrentSmartReplyState, notificationContentView.mNotificationEntry, notificationContentView.mExpandedInflatedSmartReplies);
                    notificationContentView.mExpandedSmartReplyView = applySmartReplyView;
                    if (applySmartReplyView != null) {
                        InflatedSmartReplyState inflatedSmartReplyState2 = notificationContentView.mCurrentSmartReplyState;
                        SmartReplyView.SmartReplies smartReplies = inflatedSmartReplyState2.smartReplies;
                        SmartReplyView.SmartActions smartActions = inflatedSmartReplyState2.smartActions;
                        if (smartReplies != null || smartActions != null) {
                            if (smartReplies == null) {
                                size = 0;
                            } else {
                                size = smartReplies.choices.size();
                            }
                            if (smartActions == null) {
                                size2 = 0;
                            } else {
                                size2 = smartActions.actions.size();
                            }
                            if (smartReplies == null) {
                                z2 = smartActions.fromAssistant;
                            } else {
                                z2 = smartReplies.fromAssistant;
                            }
                            boolean z6 = z2;
                            try {
                                if (smartReplies != null) {
                                    SmartReplyConstants smartReplyConstants = notificationContentView.mSmartReplyConstants;
                                    int editChoicesBeforeSending = smartReplies.remoteInput.getEditChoicesBeforeSending();
                                    smartReplyConstants.getClass();
                                    if (editChoicesBeforeSending != 1) {
                                        if (editChoicesBeforeSending != 2) {
                                            z4 = smartReplyConstants.mEditChoicesBeforeSending;
                                        } else {
                                            z4 = true;
                                        }
                                    } else {
                                        z4 = false;
                                    }
                                    if (z4) {
                                        z3 = true;
                                        SmartReplyController smartReplyController = notificationContentView.mSmartReplyController;
                                        NotificationEntry notificationEntry2 = notificationContentView.mNotificationEntry;
                                        smartReplyController.getClass();
                                        smartReplyController.mBarService.onNotificationSmartSuggestionsAdded(notificationEntry2.mSbn.getKey(), size, size2, z6, z3);
                                    }
                                }
                                smartReplyController.mBarService.onNotificationSmartSuggestionsAdded(notificationEntry2.mSbn.getKey(), size, size2, z6, z3);
                            } catch (RemoteException unused) {
                            }
                            z3 = false;
                            SmartReplyController smartReplyController2 = notificationContentView.mSmartReplyController;
                            NotificationEntry notificationEntry22 = notificationContentView.mNotificationEntry;
                            smartReplyController2.getClass();
                        }
                    }
                }
                View view5 = notificationContentView.mHeadsUpChild;
                if (view5 != null) {
                    NotificationContentView.applyExternalSmartReplyState(view5, notificationContentView.mCurrentSmartReplyState);
                    if (notificationContentView.mSmartReplyConstants.mShowInHeadsUp) {
                        notificationContentView.mHeadsUpSmartReplyView = NotificationContentView.applySmartReplyView(notificationContentView.mHeadsUpChild, notificationContentView.mCurrentSmartReplyState, notificationContentView.mNotificationEntry, notificationContentView.mHeadsUpInflatedSmartReplies);
                    }
                }
            }
            notificationContentView.updateLegacy();
            notificationContentView.mForceSelectNextLayout = true;
            notificationContentView.mPreviousExpandedRemoteInputIntent = null;
            notificationContentView.mPreviousHeadsUpRemoteInputIntent = null;
            View view6 = notificationContentView.mExpandedChild;
            notificationContentView.applySnoozeAction(view6);
            notificationContentView.applyBubbleAction(view6, notificationEntry);
            View view7 = notificationContentView.mHeadsUpChild;
            notificationContentView.applySnoozeAction(view7);
            notificationContentView.applyBubbleAction(view7, notificationEntry);
        }
        this.mShowingPublicInitialized = false;
        int i = getResources().getConfiguration().uiMode;
        this.mNotificationColor = ContrastColorUtil.resolveContrastColor(((FrameLayout) this).mContext, this.mEntry.mSbn.getNotification().color, calculateBgColor(false, false), false);
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null) {
            notificationMenuRowPlugin.onNotificationUpdated(this.mEntry.mSbn);
            this.mMenuRow.setAppName(this.mAppName);
        }
        if (this.mIsSummaryWithChildren) {
            this.mChildrenContainer.recreateNotificationHeader(this.mExpandClickListener, isConversation$1());
            this.mChildrenContainer.onNotificationUpdated();
        }
        if (this.mAnimationRunning) {
            setAnimationRunning(true);
        }
        if (this.mLastChronometerRunning) {
            setChronometerRunning(true);
        }
        ExpandableNotificationRow expandableNotificationRow2 = this.mNotificationParent;
        if (expandableNotificationRow2 != null && expandableNotificationRow2.mIsSummaryWithChildren) {
            expandableNotificationRow2.mChildrenContainer.updateChildrenAppearance();
        }
        onAttachedChildrenCountChanged();
        this.mPublicLayout.updateExpandButtonsDuringLayout(true, false);
        updateLimits();
        updateShelfIconColor();
        updateRippleAllowed();
        updateBackgroundColors();
        ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateAllTextViewColors(this, this.mDimmed);
        initGroupHeaderContainAtMark();
        for (NotificationContentView notificationContentView2 : this.mLayouts) {
            View view8 = notificationContentView2.mContractedChild;
            if (view8 != null && (textView2 = (TextView) view8.findViewById(android.R.id.line)) != null && textView2.getText().toString().contains("@")) {
                notificationContentView2.mIsContractedHeaderContainAtMark = true;
            }
            View view9 = notificationContentView2.mExpandedChild;
            if (view9 != null && (textView = (TextView) view9.findViewById(android.R.id.line)) != null && textView.getText().toString().contains("@")) {
                notificationContentView2.mIsExpandedHeaderContainAtMark = true;
            }
        }
        Trace.endSection();
    }

    @Override // com.android.systemui.plugins.PluginListener
    public final void onPluginConnected(NotificationMenuRowPlugin notificationMenuRowPlugin, Context context) {
        boolean z;
        NotificationMenuRowPlugin notificationMenuRowPlugin2 = notificationMenuRowPlugin;
        NotificationMenuRowPlugin notificationMenuRowPlugin3 = this.mMenuRow;
        if (notificationMenuRowPlugin3 != null && notificationMenuRowPlugin3.getMenuView() != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            removeView(this.mMenuRow.getMenuView());
        }
        if (notificationMenuRowPlugin2 != null) {
            this.mMenuRow = notificationMenuRowPlugin2;
            if (notificationMenuRowPlugin2.shouldUseDefaultMenuItems()) {
                ArrayList<NotificationMenuRowPlugin.MenuItem> arrayList = new ArrayList<>();
                Context context2 = ((FrameLayout) this).mContext;
                arrayList.add(new NotificationMenuRow.NotificationMenuItem(context2, context2.getResources().getString(R.string.notification_menu_gear_description), (NotificationConversationInfo) LayoutInflater.from(context2).inflate(R.layout.notification_conversation_info, (ViewGroup) null, false), R.drawable.ic_settings));
                Context context3 = ((FrameLayout) this).mContext;
                arrayList.add(new NotificationMenuRow.NotificationMenuItem(context3, context3.getResources().getString(R.string.notification_menu_gear_description), (PartialConversationInfo) LayoutInflater.from(context3).inflate(R.layout.partial_conversation_info, (ViewGroup) null, false), R.drawable.ic_settings));
                Context context4 = ((FrameLayout) this).mContext;
                arrayList.add(new NotificationMenuRow.NotificationMenuItem(context4, context4.getResources().getString(R.string.notification_menu_gear_description), (NotificationInfo) LayoutInflater.from(context4).inflate(R.layout.notification_info, (ViewGroup) null, false), R.drawable.ic_settings));
                arrayList.add(SecGutInflater.createNotificationMenuItem(R.string.notification_menu_snooze_description, ((FrameLayout) this).mContext, R.layout.sec_notification_snooze));
                this.mMenuRow.setMenuItems(arrayList);
            }
            if (z) {
                createMenu();
            }
        }
    }

    @Override // com.android.systemui.plugins.PluginListener
    public final void onPluginDisconnected(NotificationMenuRowPlugin notificationMenuRowPlugin) {
        boolean z;
        if (this.mMenuRow.getMenuView() != null) {
            z = true;
        } else {
            z = false;
        }
        this.mMenuRow = new NotificationMenuRow(((FrameLayout) this).mContext, this.mPeopleNotificationIdentifier);
        if (z) {
            createMenu();
        }
    }

    public final boolean onRequestSendAccessibilityEventInternal(View view, AccessibilityEvent accessibilityEvent) {
        if (super.onRequestSendAccessibilityEventInternal(view, accessibilityEvent)) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            onInitializeAccessibilityEvent(obtain);
            dispatchPopulateAccessibilityEvent(obtain);
            accessibilityEvent.appendRecord(obtain);
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final void onTap() {
        if (this.mEntry.mSbn.getNotification().contentIntent != null) {
            this.mBackgroundNormal.mIsPressedAllowed = false;
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0 && isChildInGroup() && !isGroupExpanded()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ae A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onUiModeChanged() {
        /*
            r3 = this;
            com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer r0 = r3.mChildrenContainer
            if (r0 == 0) goto L7
            r0.onNotificationUpdated()
        L7:
            boolean r0 = r3.mIsCustomNotification
            if (r0 != 0) goto L8f
            boolean r0 = r3.mIsCustomBigNotification
            if (r0 != 0) goto L8f
            boolean r0 = r3.mIsCustomHeadsUpNotification
            if (r0 != 0) goto L8f
            boolean r0 = r3.mIsCustomPublicNotification
            if (r0 != 0) goto L8f
            com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r3.mEntry
            android.service.notification.StatusBarNotification r0 = r0.mSbn
            android.app.Notification r0 = r0.getNotification()
            boolean r0 = r0.isMediaNotification()
            if (r0 != 0) goto L8f
            com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r3.mEntry
            android.service.notification.StatusBarNotification r0 = r0.mSbn
            android.app.Notification r0 = r0.getNotification()
            boolean r0 = r0.isColorized()
            if (r0 == 0) goto L39
            int r0 = r3.mBgTint
            if (r0 == 0) goto L39
            r0 = 1
            goto L3a
        L39:
            r0 = 0
        L3a:
            if (r0 == 0) goto L3d
            goto L8f
        L3d:
            java.lang.Class<noticolorpicker.NotificationColorPicker> r0 = noticolorpicker.NotificationColorPicker.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            noticolorpicker.NotificationColorPicker r0 = (noticolorpicker.NotificationColorPicker) r0
            r3.updateBackgroundColors()
            boolean r1 = r3.mDimmed
            r0.updateAllTextViewColors(r3, r1)
            com.android.systemui.statusbar.notification.row.NotificationGuts r0 = r3.mGuts
            if (r0 == 0) goto L54
            r0.invalidate()
        L54:
            com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin r0 = r3.mMenuRow
            if (r0 != 0) goto L5a
            r0 = 0
            goto L5e
        L5a:
            android.view.View r0 = r0.getMenuView()
        L5e:
            if (r0 == 0) goto L80
            int r1 = r3.indexOfChild(r0)
            r3.removeView(r0)
            com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin r0 = r3.mMenuRow
            com.android.systemui.statusbar.notification.collection.NotificationEntry r2 = r3.mEntry
            android.service.notification.StatusBarNotification r2 = r2.mSbn
            r0.createMenu(r3, r2)
            com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin r0 = r3.mMenuRow
            java.lang.String r2 = r3.mAppName
            r0.setAppName(r2)
            com.android.systemui.plugins.statusbar.NotificationMenuRowPlugin r0 = r3.mMenuRow
            android.view.View r0 = r0.getMenuView()
            r3.addView(r0, r1)
        L80:
            com.android.systemui.statusbar.notification.row.NotificationContentView[] r0 = r3.mLayouts
            java.util.stream.Stream r0 = java.util.Arrays.stream(r0)
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda5 r1 = new com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda5
            r1.<init>()
            r0.forEach(r1)
            goto L92
        L8f:
            r3.reInflateViews()
        L92:
            com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer r3 = r3.mChildrenContainer
            if (r3 == 0) goto Lae
            java.util.List r3 = r3.mAttachedChildren
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            java.util.Iterator r3 = r3.iterator()
        L9e:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto Lae
            java.lang.Object r0 = r3.next()
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r0 = (com.android.systemui.statusbar.notification.row.ExpandableNotificationRow) r0
            r0.onUiModeChanged()
            goto L9e
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow.onUiModeChanged():void");
    }

    public final boolean performAccessibilityActionInternal(int i, Bundle bundle) {
        NotificationMenuRowPlugin notificationMenuRowPlugin;
        if (super.performAccessibilityActionInternal(i, bundle)) {
            return true;
        }
        if (i != 32) {
            if (i != 262144 && i != 524288) {
                if (i != 1048576) {
                    if (i != R.id.action_snooze || (notificationMenuRowPlugin = this.mMenuRow) == null) {
                        return false;
                    }
                    NotificationMenuRowPlugin.MenuItem snoozeMenuItem = notificationMenuRowPlugin.getSnoozeMenuItem(getContext());
                    if (snoozeMenuItem != null) {
                        doLongClickCallback(getWidth() / 2, getHeight() / 2, snoozeMenuItem);
                    }
                    return true;
                }
                performDismiss(true);
                return true;
            }
            this.mExpandClickListener.onClick(this);
            return true;
        }
        doLongClickCallback(getWidth() / 2, getHeight() / 2);
        return true;
    }

    @Override // android.view.View
    public final boolean performClick() {
        updateRippleAllowed();
        return super.performClick();
    }

    public final void performDismiss(boolean z) {
        OnUserInteractionCallback onUserInteractionCallback;
        List attachedChildren;
        int indexOf;
        this.mMetricsLogger.count("notification_dismissed", 1);
        this.mDismissed = true;
        this.mRefocusOnDismiss = z;
        this.mLongPressListener = null;
        this.mDragController = null;
        this.mGroupParentWhenDismissed = this.mNotificationParent;
        this.mChildAfterViewWhenDismissed = null;
        Runnable runnable = this.mEntry.mIcons.mStatusBarIcon.mOnDismissListener;
        if (runnable != null) {
            runnable.run();
        }
        if (isChildInGroup() && (indexOf = (attachedChildren = this.mNotificationParent.getAttachedChildren()).indexOf(this)) != -1 && indexOf < attachedChildren.size() - 1) {
            this.mChildAfterViewWhenDismissed = (View) attachedChildren.get(indexOf + 1);
        }
        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("try performDismiss : "), this.mEntry.mKey, "ExpandableNotifRow");
        if (((NotificationDismissibilityProviderImpl) this.mDismissibilityProvider).isDismissable(this.mEntry) && (onUserInteractionCallback = this.mOnUserInteractionCallback) != null) {
            ((OnUserInteractionCallbackImpl) onUserInteractionCallback).registerFutureDismissal(this.mEntry, 2).run();
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableView
    public final long performRemoveAnimation(final long j, long j2, final float f, final boolean z, final float f2, final Runnable runnable, final AnimatorListenerAdapter animatorListenerAdapter) {
        final long j3 = 0;
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null && notificationMenuRowPlugin.isMenuVisible()) {
            Animator translateViewAnimator = getTranslateViewAnimator(0.0f, null);
            translateViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    ExpandableNotificationRow.super.performRemoveAnimation(j, j3, f, z, f2, runnable, animatorListenerAdapter);
                }
            });
            translateViewAnimator.start();
            return translateViewAnimator.getDuration();
        }
        super.performRemoveAnimation(j, 0L, f, z, f2, runnable, animatorListenerAdapter);
        return 0L;
    }

    public final void reInflateViews() {
        View menuView;
        HybridNotificationView hybridNotificationView;
        int i;
        Trace.beginSection("ExpandableNotificationRow#reInflateViews");
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            AnonymousClass1 anonymousClass1 = this.mExpandClickListener;
            StatusBarNotification statusBarNotification = this.mEntry.mSbn;
            NotificationHeaderView notificationHeaderView = notificationChildrenContainer.mNotificationHeader;
            if (notificationHeaderView != null) {
                notificationChildrenContainer.removeView(notificationHeaderView);
                notificationChildrenContainer.mNotificationHeader = null;
            }
            NotificationHeaderView notificationHeaderView2 = notificationChildrenContainer.mNotificationHeaderLowPriority;
            if (notificationHeaderView2 != null) {
                notificationChildrenContainer.removeView(notificationHeaderView2);
                notificationChildrenContainer.mNotificationHeaderLowPriority = null;
            }
            NotificationHeaderView notificationHeaderView3 = notificationChildrenContainer.mNotificationHeaderExpanded;
            if (notificationHeaderView3 != null) {
                notificationChildrenContainer.removeView(notificationHeaderView3);
                notificationChildrenContainer.mNotificationHeaderExpanded = null;
            }
            notificationChildrenContainer.recreateNotificationHeader(anonymousClass1, notificationChildrenContainer.mIsConversation);
            notificationChildrenContainer.initDimens();
            for (int i2 = 0; i2 < ((ArrayList) notificationChildrenContainer.mDividers).size(); i2++) {
                View view = (View) ((ArrayList) notificationChildrenContainer.mDividers).get(i2);
                int indexOfChild = notificationChildrenContainer.indexOfChild(view);
                notificationChildrenContainer.removeView(view);
                View inflateDivider = notificationChildrenContainer.inflateDivider();
                notificationChildrenContainer.addView(inflateDivider, indexOfChild);
                ((ArrayList) notificationChildrenContainer.mDividers).set(i2, inflateDivider);
            }
            notificationChildrenContainer.removeView(notificationChildrenContainer.mOverflowNumber);
            notificationChildrenContainer.mOverflowNumber = null;
            notificationChildrenContainer.mGroupOverFlowState = null;
            notificationChildrenContainer.updateGroupOverflow();
        }
        NotificationGuts notificationGuts = this.mGuts;
        if (notificationGuts != null) {
            int indexOfChild2 = indexOfChild(notificationGuts);
            removeView(notificationGuts);
            NotificationGuts notificationGuts2 = (NotificationGuts) LayoutInflater.from(((FrameLayout) this).mContext).inflate(R.layout.notification_guts, (ViewGroup) this, false);
            this.mGuts = notificationGuts2;
            if (notificationGuts.mExposed) {
                i = 0;
            } else {
                i = 8;
            }
            notificationGuts2.setVisibility(i);
            addView(this.mGuts, indexOfChild2);
        }
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin == null) {
            menuView = null;
        } else {
            menuView = notificationMenuRowPlugin.getMenuView();
        }
        if (menuView != null) {
            int indexOfChild3 = indexOfChild(menuView);
            removeView(menuView);
            this.mMenuRow.createMenu(this, this.mEntry.mSbn);
            this.mMenuRow.setAppName(this.mAppName);
            addView(this.mMenuRow.getMenuView(), indexOfChild3);
        }
        for (NotificationContentView notificationContentView : this.mLayouts) {
            notificationContentView.mMinContractedHeight = notificationContentView.getResources().getDimensionPixelSize(R.dimen.min_notification_layout_height);
            if (notificationContentView.mIsChildInGroup && (hybridNotificationView = notificationContentView.mSingleLineView) != null) {
                notificationContentView.removeView(hybridNotificationView);
                notificationContentView.mSingleLineView = null;
                notificationContentView.updateAllSingleLineViews();
            }
        }
        this.mEntry.mSbn.clearPackageContext();
        RowContentBindParams rowContentBindParams = (RowContentBindParams) this.mRowContentBindStage.getStageParams(this.mEntry);
        rowContentBindParams.mViewsNeedReinflation = true;
        rowContentBindParams.mDirtyContentViews = rowContentBindParams.mContentViews | rowContentBindParams.mDirtyContentViews;
        this.mRowContentBindStage.requestRebind(this.mEntry, null);
        Trace.endSection();
    }

    public final void removeChildNotification(ExpandableNotificationRow expandableNotificationRow) {
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            notificationChildrenContainer.removeNotification(expandableNotificationRow);
            expandableNotificationRow.mKeepInParentForDismissAnimation = false;
        }
        onAttachedChildrenCountChanged();
        Integer num = null;
        expandableNotificationRow.setIsChildInGroup(null, false);
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON || NotiRune.NOTI_SUBSCREEN_CLEAR_COVER) {
            SubscreenDeviceModelParent subscreenDeviceModelParent = ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel;
            if (subscreenDeviceModelParent.isSubScreen()) {
                if (subscreenDeviceModelParent.isShownDetail()) {
                    Log.d("S.S.N.", "removeChildNotification parent -  Detail State");
                    return;
                }
                if (expandableNotificationRow.mEntry.getChannel().isImportantConversation()) {
                    Log.d("S.S.N.", "removeChildNotification parent -  isImportantConversation");
                    return;
                }
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("removeChildNotification parent - remove Item  : ", expandableNotificationRow.mEntry.mKey, "S.S.N.");
                NotificationChildrenContainer notificationChildrenContainer2 = this.mChildrenContainer;
                if (notificationChildrenContainer2 != null) {
                    num = Integer.valueOf(notificationChildrenContainer2.getNotificationChildCount());
                }
                subscreenDeviceModelParent.mMainListArrayHashMap.remove(expandableNotificationRow.mEntry.mKey);
                if (num != null && num.intValue() == 0) {
                    subscreenDeviceModelParent.removeMainHashItem(this.mEntry);
                    subscreenDeviceModelParent.notifyListAdapterItemRemoved(this.mEntry);
                }
            }
        }
    }

    public final void removeChildrenWithKeepInParent() {
        if (this.mChildrenContainer == null) {
            return;
        }
        Iterator it = new ArrayList(this.mChildrenContainer.mAttachedChildren).iterator();
        boolean z = false;
        while (it.hasNext()) {
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) it.next();
            if (expandableNotificationRow.mKeepInParentForDismissAnimation) {
                this.mChildrenContainer.removeNotification(expandableNotificationRow);
                expandableNotificationRow.setIsChildInGroup(null, false);
                expandableNotificationRow.mKeepInParentForDismissAnimation = false;
                ExpandableNotificationRowController.AnonymousClass1 anonymousClass1 = this.mLogger;
                if (anonymousClass1 != null) {
                    NotificationEntry notificationEntry = expandableNotificationRow.mEntry;
                    NotificationEntry notificationEntry2 = this.mEntry;
                    NotificationRowLogger notificationRowLogger = ExpandableNotificationRowController.this.mLogBufferLogger;
                    notificationRowLogger.getClass();
                    LogLevel logLevel = LogLevel.DEBUG;
                    NotificationRowLogger$logKeepInParentChildDetached$2 notificationRowLogger$logKeepInParentChildDetached$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.row.NotificationRowLogger$logKeepInParentChildDetached$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            LogMessage logMessage = (LogMessage) obj;
                            return FontProvider$$ExternalSyntheticOutline0.m("Detach child ", logMessage.getStr1(), " kept in parent ", logMessage.getStr2());
                        }
                    };
                    LogBuffer logBuffer = notificationRowLogger.buffer;
                    LogMessage obtain = logBuffer.obtain("NotifRow", logLevel, notificationRowLogger$logKeepInParentChildDetached$2, null);
                    obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
                    obtain.setStr2(NotificationUtilsKt.getLogKey(notificationEntry2));
                    logBuffer.commit(obtain);
                }
                z = true;
            }
        }
        if (z) {
            onAttachedChildrenCountChanged();
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final void resetAllContentAlphas() {
        this.mPrivateLayout.setAlpha(1.0f);
        this.mPrivateLayout.setLayerType(0, null);
        this.mPublicLayout.setAlpha(1.0f);
        this.mPublicLayout.setLayerType(0, null);
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            notificationChildrenContainer.setAlpha(1.0f);
            this.mChildrenContainer.setLayerType(0, null);
        }
    }

    public final void resetTranslation() {
        Animator animator = this.mTranslateAnim;
        if (animator != null) {
            animator.cancel();
        }
        if (this.mDismissUsingRowTranslationX) {
            setTranslationX(0.0f);
        } else if (this.mTranslateableViews != null) {
            for (int i = 0; i < this.mTranslateableViews.size(); i++) {
                ((View) this.mTranslateableViews.get(i)).setTranslationX(0.0f);
            }
            invalidateOutline();
            this.mEntry.mIcons.mShelfIcon.setScrollX(0);
        }
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null) {
            notificationMenuRowPlugin.resetMenu();
        }
    }

    public final void setAboveShelf(boolean z) {
        boolean isAboveShelf = isAboveShelf();
        this.mAboveShelf = z;
        if (isAboveShelf() != isAboveShelf) {
            this.mAboveShelfChangedListener.onAboveShelfStateChanged(!isAboveShelf);
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView, com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setActualHeight(int i, boolean z) {
        int minHeight;
        super.setActualHeight(i, z);
        NotificationGuts notificationGuts = this.mGuts;
        if (notificationGuts != null && notificationGuts.mExposed) {
            notificationGuts.mActualHeight = i;
            notificationGuts.invalidate();
            return;
        }
        int max = Math.max(getMinHeight(false), i);
        for (NotificationContentView notificationContentView : this.mLayouts) {
            if (this.mIsInlineReplyAnimationFlagEnabled) {
                notificationContentView.setContentHeight(i);
            } else {
                notificationContentView.setContentHeight(max);
            }
        }
        if (this.mIsSummaryWithChildren) {
            NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
            if (notificationChildrenContainer.mUserLocked) {
                notificationChildrenContainer.mActualHeight = i;
                float groupExpandFraction = notificationChildrenContainer.getGroupExpandFraction();
                boolean showingAsLowPriority = notificationChildrenContainer.showingAsLowPriority();
                if (notificationChildrenContainer.mUserLocked && notificationChildrenContainer.showingAsLowPriority()) {
                    float groupExpandFraction2 = notificationChildrenContainer.getGroupExpandFraction();
                    notificationChildrenContainer.mNotificationHeaderWrapper.transformFrom(groupExpandFraction2, notificationChildrenContainer.mNotificationHeaderWrapperLowPriority);
                    notificationChildrenContainer.mNotificationHeader.setVisibility(0);
                    notificationChildrenContainer.mNotificationHeaderWrapperLowPriority.transformTo(groupExpandFraction2, notificationChildrenContainer.mNotificationHeaderWrapper);
                } else {
                    float groupExpandFraction3 = notificationChildrenContainer.getGroupExpandFraction();
                    if (!notificationChildrenContainer.mContainingNotification.isGroupExpanded()) {
                        notificationChildrenContainer.mNotificationHeaderWrapperExpanded.transformFrom(groupExpandFraction3, notificationChildrenContainer.mNotificationHeaderWrapper);
                        notificationChildrenContainer.mNotificationHeaderExpanded.setVisibility(0);
                        notificationChildrenContainer.mNotificationHeaderWrapper.transformTo(groupExpandFraction3, notificationChildrenContainer.mNotificationHeaderWrapperExpanded);
                    }
                }
                int maxAllowedVisibleChildren = notificationChildrenContainer.getMaxAllowedVisibleChildren(true);
                int size = ((ArrayList) notificationChildrenContainer.mAttachedChildren).size();
                for (int i2 = 0; i2 < size; i2++) {
                    ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i2);
                    if (showingAsLowPriority) {
                        minHeight = expandableNotificationRow.getShowingLayout().getMinHeight(false);
                    } else if (expandableNotificationRow.isExpanded(true)) {
                        minHeight = expandableNotificationRow.getMaxExpandHeight();
                    } else {
                        minHeight = expandableNotificationRow.getShowingLayout().getMinHeight(true);
                    }
                    float f = minHeight;
                    if (i2 < maxAllowedVisibleChildren) {
                        expandableNotificationRow.setActualHeight((int) NotificationUtils.interpolate(expandableNotificationRow.getShowingLayout().getMinHeight(false), f, groupExpandFraction), false);
                    } else {
                        expandableNotificationRow.setActualHeight((int) f, false);
                    }
                }
            }
        }
        NotificationGuts notificationGuts2 = this.mGuts;
        if (notificationGuts2 != null) {
            notificationGuts2.mActualHeight = i;
            notificationGuts2.invalidate();
        }
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null && notificationMenuRowPlugin.getMenuView() != null) {
            this.mMenuRow.onParentHeightUpdate();
        }
        if (this.mOnIntrinsicHeightReachedRunnable != null && this.mActualHeight == getIntrinsicHeight()) {
            this.mOnIntrinsicHeightReachedRunnable.run();
            this.mOnIntrinsicHeightReachedRunnable = null;
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setActualHeightAnimating(boolean z) {
        NotificationContentView notificationContentView = this.mPrivateLayout;
        if (notificationContentView != null) {
            if (!z) {
                notificationContentView.mContentHeightAtAnimationStart = -1;
            } else {
                notificationContentView.getClass();
            }
        }
    }

    public final void setAnimationRunning(boolean z) {
        boolean z2;
        int i = 0;
        for (NotificationContentView notificationContentView : this.mLayouts) {
            if (notificationContentView != null) {
                if (z != notificationContentView.mContentAnimating) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    NotificationViewWrapper notificationViewWrapper = notificationContentView.mContractedWrapper;
                    if (notificationViewWrapper != null) {
                        notificationViewWrapper.setAnimationsRunning(z);
                    }
                    NotificationViewWrapper notificationViewWrapper2 = notificationContentView.mExpandedWrapper;
                    if (notificationViewWrapper2 != null) {
                        notificationViewWrapper2.setAnimationsRunning(z);
                    }
                    NotificationViewWrapper notificationViewWrapper3 = notificationContentView.mHeadsUpWrapper;
                    if (notificationViewWrapper3 != null) {
                        notificationViewWrapper3.setAnimationsRunning(z);
                    }
                    notificationContentView.mContentAnimating = z;
                }
                View view = notificationContentView.mContractedChild;
                View view2 = notificationContentView.mExpandedChild;
                View view3 = notificationContentView.mHeadsUpChild;
                setIconAnimationRunningForChild(view, z);
                setIconAnimationRunningForChild(view2, z);
                setIconAnimationRunningForChild(view3, z);
            }
        }
        if (this.mIsSummaryWithChildren) {
            NotificationHeaderViewWrapper notificationHeaderViewWrapper = this.mChildrenContainer.mNotificationHeaderWrapper;
            if (notificationHeaderViewWrapper != null) {
                setIconAnimationRunningForChild(notificationHeaderViewWrapper.mIcon, z);
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = this.mChildrenContainer.mNotificationHeaderWrapperLowPriority;
            if (notificationHeaderViewWrapper2 != null) {
                setIconAnimationRunningForChild(notificationHeaderViewWrapper2.mIcon, z);
            }
            List list = this.mChildrenContainer.mAttachedChildren;
            while (true) {
                ArrayList arrayList = (ArrayList) list;
                if (i >= arrayList.size()) {
                    break;
                }
                ((ExpandableNotificationRow) arrayList.get(i)).setAnimationRunning(z);
                i++;
            }
        }
        this.mAnimationRunning = z;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final void setBackgroundTintColor(final int i) {
        super.setBackgroundTintColor(i);
        final NotificationContentView showingLayout = getShowingLayout();
        if (showingLayout != null) {
            final int i2 = 0;
            Optional map = Optional.ofNullable(showingLayout.mNotificationEntry).map(new Function() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentView$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i2) {
                        case 0:
                            return ((NotificationEntry) obj).mSbn;
                        default:
                            return ((StatusBarNotification) obj).getNotification();
                    }
                }
            });
            final int i3 = 1;
            map.map(new Function() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentView$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i3) {
                        case 0:
                            return ((NotificationEntry) obj).mSbn;
                        default:
                            return ((StatusBarNotification) obj).getNotification();
                    }
                }
            }).ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentView$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    NotificationContentView notificationContentView = NotificationContentView.this;
                    int i4 = i;
                    Notification notification2 = (Notification) obj;
                    int i5 = NotificationContentView.$r8$clinit;
                    notificationContentView.getClass();
                    boolean isColorized = notification2.isColorized();
                    RemoteInputView remoteInputView = notificationContentView.mExpandedRemoteInput;
                    if (remoteInputView != null) {
                        remoteInputView.setBackgroundTintColor(i4, notification2.color, isColorized);
                    }
                    RemoteInputView remoteInputView2 = notificationContentView.mHeadsUpRemoteInput;
                    if (remoteInputView2 != null) {
                        remoteInputView2.setBackgroundTintColor(i4, notification2.color, isColorized);
                    }
                }
            });
        }
    }

    public void setChildrenContainer(NotificationChildrenContainer notificationChildrenContainer) {
        this.mChildrenContainer = notificationChildrenContainer;
    }

    public final void setChildrenExpanded(boolean z) {
        this.mChildrenExpanded = z;
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            notificationChildrenContainer.setChildrenExpanded$1(z);
        }
        updateBackgroundForGroupState();
        updateClickAndFocus();
    }

    public final void setChronometerRunning(boolean z) {
        boolean z2;
        this.mLastChronometerRunning = z;
        NotificationContentView notificationContentView = this.mPrivateLayout;
        int i = 0;
        boolean z3 = true;
        if (notificationContentView != null) {
            if (!z && !this.mIsPinned) {
                z2 = false;
            } else {
                z2 = true;
            }
            View view = notificationContentView.mContractedChild;
            View view2 = notificationContentView.mExpandedChild;
            View view3 = notificationContentView.mHeadsUpChild;
            setChronometerRunningForChild(view, z2);
            setChronometerRunningForChild(view2, z2);
            setChronometerRunningForChild(view3, z2);
        }
        NotificationContentView notificationContentView2 = this.mPublicLayout;
        if (notificationContentView2 != null) {
            if (!z && !this.mIsPinned) {
                z3 = false;
            }
            View view4 = notificationContentView2.mContractedChild;
            View view5 = notificationContentView2.mExpandedChild;
            View view6 = notificationContentView2.mHeadsUpChild;
            setChronometerRunningForChild(view4, z3);
            setChronometerRunningForChild(view5, z3);
            setChronometerRunningForChild(view6, z3);
        }
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            List list = notificationChildrenContainer.mAttachedChildren;
            while (true) {
                ArrayList arrayList = (ArrayList) list;
                if (i < arrayList.size()) {
                    ((ExpandableNotificationRow) arrayList.get(i)).setChronometerRunning(z);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView, com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setClipBottomAmount(int i) {
        if (this.mExpandAnimationRunning) {
            return;
        }
        if (i != this.mClipBottomAmount) {
            super.setClipBottomAmount(i);
            for (NotificationContentView notificationContentView : this.mLayouts) {
                notificationContentView.mClipBottomAmount = i;
                notificationContentView.updateClipping();
            }
            NotificationGuts notificationGuts = this.mGuts;
            if (notificationGuts != null) {
                notificationGuts.mClipBottomAmount = i;
                notificationGuts.invalidate();
            }
        }
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null && !this.mChildIsExpanding) {
            notificationChildrenContainer.mClipBottomAmount = i;
            notificationChildrenContainer.updateChildrenClipping();
        }
    }

    public final void setClipToActualHeight(boolean z) {
        boolean z2;
        boolean z3 = false;
        if (!z && !this.mUserLocked) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.mClipToActualHeight = z2;
        updateClipping();
        NotificationContentView showingLayout = getShowingLayout();
        if (z || this.mUserLocked) {
            z3 = true;
        }
        showingLayout.mClipToActualHeight = z3;
        showingLayout.updateClipping();
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView, com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setClipTopAmount(int i) {
        super.setClipTopAmount(i);
        for (NotificationContentView notificationContentView : this.mLayouts) {
            notificationContentView.mClipTopAmount = i;
            notificationContentView.updateClipping();
        }
        NotificationGuts notificationGuts = this.mGuts;
        if (notificationGuts != null) {
            notificationGuts.mClipTopAmount = i;
            notificationGuts.invalidate();
        }
    }

    public final void setContentAlpha(float f) {
        for (NotificationContentView notificationContentView : this.mLayouts) {
            notificationContentView.setAlpha(f);
        }
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            for (int i = 0; i < notificationChildrenContainer.mNotificationHeader.getChildCount(); i++) {
                notificationChildrenContainer.mNotificationHeader.getChildAt(i).setAlpha(f);
            }
            Iterator it = ((ArrayList) notificationChildrenContainer.mAttachedChildren).iterator();
            while (it.hasNext()) {
                ((ExpandableNotificationRow) it.next()).setContentAlpha(f);
            }
        }
    }

    public final void setDismissUsingRowTranslationX(boolean z) {
        if (z != this.mDismissUsingRowTranslationX) {
            float translation = getTranslation();
            if (translation != 0.0f) {
                setTranslation(0.0f);
            }
            this.mDismissUsingRowTranslationX = z;
            if (translation != 0.0f) {
                setTranslation(translation);
            }
            NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
            if (notificationChildrenContainer != null) {
                List list = notificationChildrenContainer.mAttachedChildren;
                int i = 0;
                while (true) {
                    ArrayList arrayList = (ArrayList) list;
                    if (i < arrayList.size()) {
                        ((ExpandableNotificationRow) arrayList.get(i)).setDismissUsingRowTranslationX(z);
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView, com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setDistanceToTopRoundness(float f) {
        super.setDistanceToTopRoundness(f);
    }

    public void setEntry(NotificationEntry notificationEntry) {
        this.mEntry = notificationEntry;
    }

    public final void setExpandAnimationRunning(boolean z) {
        if (z) {
            setAboveShelf(true);
            this.mExpandAnimationRunning = true;
            this.mViewState.cancelAnimations(this);
            this.mNotificationLaunchHeight = Math.max(1, getContext().getResources().getDimensionPixelSize(R.dimen.z_distance_between_notifications)) * 4;
        } else {
            this.mExpandAnimationRunning = false;
            setAboveShelf(isAboveShelf());
            setVisibility(0);
            NotificationGuts notificationGuts = this.mGuts;
            if (notificationGuts != null) {
                notificationGuts.setAlpha(1.0f);
            }
            resetAllContentAlphas();
            this.mExtraWidthForClipping = 0.0f;
            invalidate();
            ExpandableNotificationRow expandableNotificationRow = this.mNotificationParent;
            if (expandableNotificationRow != null) {
                expandableNotificationRow.mExtraWidthForClipping = 0.0f;
                expandableNotificationRow.invalidate();
                ExpandableNotificationRow expandableNotificationRow2 = this.mNotificationParent;
                expandableNotificationRow2.mMinimumHeightForClipping = 0;
                expandableNotificationRow2.updateClipping();
                expandableNotificationRow2.invalidate();
            }
        }
        ExpandableNotificationRow expandableNotificationRow3 = this.mNotificationParent;
        if (expandableNotificationRow3 != null) {
            expandableNotificationRow3.mChildIsExpanding = this.mExpandAnimationRunning;
            expandableNotificationRow3.updateClipping();
            expandableNotificationRow3.invalidate();
        }
        updateChildrenVisibility();
        updateClipping();
        NotificationBackgroundView notificationBackgroundView = this.mBackgroundNormal;
        notificationBackgroundView.mExpandAnimationRunning = z;
        Drawable drawable = notificationBackgroundView.mBackground;
        if (drawable instanceof LayerDrawable) {
            ((GradientDrawable) ((LayerDrawable) drawable).getDrawable(0)).setAntiAlias(!z);
        }
        boolean z2 = notificationBackgroundView.mExpandAnimationRunning;
        if (!z2) {
            int i = notificationBackgroundView.mDrawableAlpha;
            notificationBackgroundView.mDrawableAlpha = i;
            if (!z2) {
                notificationBackgroundView.mBackground.setAlpha(i);
            }
        }
        notificationBackgroundView.invalidate();
    }

    public final void setHeadsUpAnimatingAway(boolean z) {
        boolean z2;
        Consumer consumer;
        boolean isAboveShelf = isAboveShelf();
        if (z != this.mHeadsupDisappearRunning) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mHeadsupDisappearRunning = z;
        NotificationContentView notificationContentView = this.mPrivateLayout;
        notificationContentView.mHeadsUpAnimatingAway = z;
        notificationContentView.selectLayout(false, true);
        if (z2 && (consumer = this.mHeadsUpAnimatingAwayListener) != null) {
            consumer.accept(Boolean.valueOf(z));
        }
        if (isAboveShelf() != isAboveShelf) {
            this.mAboveShelfChangedListener.onAboveShelfStateChanged(!isAboveShelf);
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setHeadsUpIsVisible() {
        this.mMustStayOnScreen = false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setHideSensitive(boolean z, boolean z2, long j, long j2) {
        boolean z3;
        View[] viewArr;
        View[] viewArr2;
        NotificationChildrenContainer notificationChildrenContainer;
        int i;
        if (getVisibility() == 8) {
            return;
        }
        boolean z4 = this.mShowingPublic;
        if (this.mSensitive && z) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.mShowingPublic = z3;
        if (this.mShowingPublicInitialized && z3 == z4) {
            return;
        }
        if (!z2) {
            this.mPublicLayout.animate().cancel();
            this.mPrivateLayout.animate().cancel();
            NotificationChildrenContainer notificationChildrenContainer2 = this.mChildrenContainer;
            if (notificationChildrenContainer2 != null) {
                notificationChildrenContainer2.animate().cancel();
            }
            resetAllContentAlphas();
            NotificationContentView notificationContentView = this.mPublicLayout;
            if (this.mShowingPublic) {
                i = 0;
            } else {
                i = 4;
            }
            notificationContentView.setVisibility(i);
            updateChildrenVisibility();
        } else {
            if (this.mIsSummaryWithChildren) {
                viewArr = new View[]{this.mChildrenContainer};
            } else {
                viewArr = new View[]{this.mPrivateLayout};
            }
            View[] viewArr3 = {this.mPublicLayout};
            if (z3) {
                viewArr2 = viewArr;
            } else {
                viewArr2 = viewArr3;
            }
            if (z3) {
                viewArr = viewArr3;
            }
            long j3 = (j2 / 10) / 2;
            long j4 = (j2 / 3) + j3;
            long j5 = (j2 - j4) + j3;
            for (final View view : viewArr2) {
                view.setVisibility(0);
                view.animate().cancel();
                if (NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE) {
                    view.setAlpha(0.0f);
                }
                view.animate().alpha(0.0f).setStartDelay(j).setDuration(j4).withEndAction(new Runnable() { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ExpandableNotificationRow expandableNotificationRow = this;
                        View view2 = view;
                        SourceType$Companion$from$1 sourceType$Companion$from$1 = ExpandableNotificationRow.BASE_VALUE;
                        expandableNotificationRow.getClass();
                        view2.setVisibility(4);
                        expandableNotificationRow.resetAllContentAlphas();
                    }
                });
            }
            for (View view2 : viewArr) {
                view2.setVisibility(0);
                view2.setAlpha(0.0f);
                view2.animate().cancel();
                view2.animate().alpha(1.0f).setStartDelay((j + j2) - j5).setDuration(j5);
            }
        }
        getShowingLayout().updateBackgroundColor(z2);
        this.mPrivateLayout.updateExpandButtonsDuringLayout(isExpandable(), false);
        updateShelfIconColor();
        this.mShowingPublicInitialized = true;
        if (this.mIsSummaryWithChildren && (notificationChildrenContainer = this.mChildrenContainer) != null && !this.mShowingPublic) {
            notificationChildrenContainer.updateHeaderVisibility(false, true);
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setHideSensitiveForIntrinsicHeight(boolean z) {
        this.mHideSensitiveForIntrinsicHeight = z;
        if (this.mIsSummaryWithChildren) {
            List list = this.mChildrenContainer.mAttachedChildren;
            int i = 0;
            while (true) {
                ArrayList arrayList = (ArrayList) list;
                if (i < arrayList.size()) {
                    ((ExpandableNotificationRow) arrayList.get(i)).setHideSensitiveForIntrinsicHeight(z);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void setIsChildInGroup(ExpandableNotificationRow expandableNotificationRow, boolean z) {
        ExpandableNotificationRow expandableNotificationRow2;
        if (this.mExpandAnimationRunning && !z && (expandableNotificationRow2 = this.mNotificationParent) != null) {
            expandableNotificationRow2.mChildIsExpanding = false;
            expandableNotificationRow2.updateClipping();
            expandableNotificationRow2.invalidate();
            ExpandableNotificationRow expandableNotificationRow3 = this.mNotificationParent;
            expandableNotificationRow3.mExpandingClipPath = null;
            expandableNotificationRow3.invalidate();
            ExpandableNotificationRow expandableNotificationRow4 = this.mNotificationParent;
            expandableNotificationRow4.mExtraWidthForClipping = 0.0f;
            expandableNotificationRow4.invalidate();
            ExpandableNotificationRow expandableNotificationRow5 = this.mNotificationParent;
            expandableNotificationRow5.mMinimumHeightForClipping = 0;
            expandableNotificationRow5.updateClipping();
            expandableNotificationRow5.invalidate();
        }
        if (!z) {
            expandableNotificationRow = null;
        }
        this.mNotificationParent = expandableNotificationRow;
        NotificationContentView notificationContentView = this.mPrivateLayout;
        notificationContentView.mIsChildInGroup = z;
        if (notificationContentView.mContractedChild != null) {
            notificationContentView.mContractedWrapper.setIsChildInGroup(z);
        }
        if (notificationContentView.mExpandedChild != null) {
            notificationContentView.mExpandedWrapper.setIsChildInGroup(notificationContentView.mIsChildInGroup);
        }
        if (notificationContentView.mHeadsUpChild != null) {
            notificationContentView.mHeadsUpWrapper.setIsChildInGroup(notificationContentView.mIsChildInGroup);
        }
        notificationContentView.updateAllSingleLineViews();
        updateBackgroundForGroupState();
        updateClickAndFocus();
        if (this.mNotificationParent != null) {
            setOverrideTintColor(0.0f, 0);
            this.mNotificationParent.updateBackgroundForGroupState();
        }
        NotificationBackgroundView notificationBackgroundView = this.mBackgroundNormal;
        boolean z2 = !isChildInGroup();
        if (z2 != notificationBackgroundView.mBottomAmountClips) {
            notificationBackgroundView.mBottomAmountClips = z2;
            notificationBackgroundView.invalidate();
        }
        if (isChildInGroup()) {
            requestRoundnessReset(BASE_VALUE);
        } else {
            float f = this.mSmallRoundness;
            requestRoundness(f, f, BASE_VALUE);
        }
    }

    public final void setNotificationFaded(boolean z) {
        this.mIsFaded = z;
        if (childrenRequireOverlappingRendering()) {
            NotificationFadeAware.setLayerTypeForFaded(this, z);
            NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
            if (notificationChildrenContainer instanceof NotificationFadeAware) {
                notificationChildrenContainer.setNotificationFaded(false);
            } else {
                NotificationFadeAware.setLayerTypeForFaded(notificationChildrenContainer, false);
            }
            for (NotificationContentView notificationContentView : this.mLayouts) {
                if (notificationContentView instanceof NotificationFadeAware) {
                    notificationContentView.setNotificationFaded(false);
                } else {
                    NotificationFadeAware.setLayerTypeForFaded(notificationContentView, false);
                }
            }
            return;
        }
        NotificationFadeAware.setLayerTypeForFaded(this, false);
        NotificationChildrenContainer notificationChildrenContainer2 = this.mChildrenContainer;
        if (notificationChildrenContainer2 instanceof NotificationFadeAware) {
            notificationChildrenContainer2.setNotificationFaded(z);
        } else {
            NotificationFadeAware.setLayerTypeForFaded(notificationChildrenContainer2, z);
        }
        for (NotificationContentView notificationContentView2 : this.mLayouts) {
            if (notificationContentView2 instanceof NotificationFadeAware) {
                notificationContentView2.setNotificationFaded(z);
            } else {
                NotificationFadeAware.setLayerTypeForFaded(notificationContentView2, z);
            }
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.mOnClickListener = onClickListener;
        updateClickAndFocus();
    }

    public final void setOnKeyguard(boolean z) {
        if (z != this.mOnKeyguard) {
            boolean isAboveShelf = isAboveShelf();
            boolean isExpanded = isExpanded(false);
            this.mOnKeyguard = z;
            this.mBackgroundNormal.mOnKeyguard = z;
            onExpansionChanged(false, isExpanded);
            if (isExpanded != isExpanded(false)) {
                if (this.mIsSummaryWithChildren) {
                    this.mChildrenContainer.updateGroupOverflow();
                }
                notifyHeightChanged(false);
            }
            if (isAboveShelf() != isAboveShelf) {
                this.mAboveShelfChangedListener.onAboveShelfStateChanged(!isAboveShelf);
            }
        }
        updateRippleAllowed();
    }

    public void setPrivateLayout(NotificationContentView notificationContentView) {
        this.mPrivateLayout = notificationContentView;
        this.mLayouts = new NotificationContentView[]{notificationContentView, this.mPublicLayout};
    }

    public void setPublicLayout(NotificationContentView notificationContentView) {
        this.mPublicLayout = notificationContentView;
        this.mLayouts = new NotificationContentView[]{this.mPrivateLayout, notificationContentView};
    }

    public final void setTranslation(float f) {
        invalidate();
        if (this.mDismissUsingRowTranslationX) {
            setTranslationX(f);
        } else if (this.mTranslateableViews != null) {
            for (int i = 0; i < this.mTranslateableViews.size(); i++) {
                if (this.mTranslateableViews.get(i) != null) {
                    ((View) this.mTranslateableViews.get(i)).setTranslationX(f);
                }
            }
            invalidateOutline();
            this.mEntry.mIcons.mShelfIcon.setScrollX((int) (-f));
        }
        NotificationMenuRowPlugin notificationMenuRowPlugin = this.mMenuRow;
        if (notificationMenuRowPlugin != null && notificationMenuRowPlugin.getMenuView() != null) {
            this.mMenuRow.onParentTranslationUpdate(f);
        }
    }

    public final void setUserExpanded(boolean z, boolean z2) {
        this.mFalsingCollector.getClass();
        if (this.mIsSummaryWithChildren && !shouldShowPublic() && z2 && !this.mChildrenContainer.showingAsLowPriority()) {
            boolean isGroupExpanded = ((GroupExpansionManagerImpl) this.mGroupExpansionManager).isGroupExpanded(this.mEntry);
            ((GroupExpansionManagerImpl) this.mGroupExpansionManager).setGroupExpanded(this.mEntry, z);
            onExpansionChanged(true, isGroupExpanded);
            return;
        }
        if (z && !this.mExpandable) {
            return;
        }
        boolean isExpanded = isExpanded(false);
        this.mHasUserChangedExpansion = true;
        this.mUserExpanded = z;
        onExpansionChanged(true, isExpanded);
        if (!isExpanded && isExpanded(false) && this.mActualHeight != getIntrinsicHeight()) {
            notifyHeightChanged(true);
        }
    }

    public final void setUserLocked(boolean z) {
        this.mUserLocked = z;
        NotificationContentView notificationContentView = this.mPrivateLayout;
        notificationContentView.mUserExpanding = z;
        if (z) {
            notificationContentView.mTransformationStartVisibleType = notificationContentView.mVisibleType;
        } else {
            notificationContentView.mTransformationStartVisibleType = -1;
            int calculateVisibleType = notificationContentView.calculateVisibleType();
            notificationContentView.mVisibleType = calculateVisibleType;
            notificationContentView.updateViewVisibilities(calculateVisibleType);
            notificationContentView.updateBackgroundColor(false);
        }
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            notificationChildrenContainer.setUserLocked(z);
            if (this.mIsSummaryWithChildren) {
                if (z || !isGroupExpanded()) {
                    updateBackgroundForGroupState();
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean shouldClipToActualHeight() {
        if (!this.mExpandAnimationRunning) {
            return true;
        }
        return false;
    }

    public final boolean shouldShowPublic() {
        if (this.mSensitive && this.mHideSensitiveForIntrinsicHeight) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean showingPulsing() {
        boolean z;
        boolean z2;
        boolean z3;
        if (!this.mIsHeadsUp && !this.mHeadsupDisappearRunning) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        StatusBarStateController statusBarStateController = this.mStatusBarStateController;
        if (statusBarStateController != null && statusBarStateController.isDozing()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            if (!this.mOnKeyguard) {
                return false;
            }
            KeyguardBypassController keyguardBypassController = this.mBypassController;
            if (keyguardBypassController != null && !keyguardBypassController.getBypassEnabled()) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!z3) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final void updateBackgroundColors() {
        super.updateBackgroundColors();
        if (this.mIsSummaryWithChildren) {
            Iterator it = ((ArrayList) this.mChildrenContainer.mAttachedChildren).iterator();
            while (it.hasNext()) {
                ((ExpandableNotificationRow) it.next()).updateBackgroundColors();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void updateBackgroundForGroupState() {
        int calculateVisibleType;
        ExpandableOutlineView.AnonymousClass1 anonymousClass1;
        boolean z;
        int i;
        int i2 = 0;
        if (this.mIsSummaryWithChildren) {
            boolean z2 = this.mShowNoBackground;
            if (!isGroupExpanded() && (!this.mUserLocked || this.mChildrenContainer.showingAsLowPriority())) {
                z = false;
            } else {
                z = true;
            }
            this.mShowNoBackground = z;
            if (z2 != z && z2) {
                this.mChildrenContainer.updateHeaderVisibility(false, true);
            }
            if (!this.mChildrenContainer.showingAsLowPriority()) {
                NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
                boolean z3 = true ^ this.mShowNoBackground;
                CachingIconView cachingIconView = notificationChildrenContainer.mGroupIconView;
                int i3 = 4;
                if (cachingIconView != null) {
                    if (z3) {
                        i = 0;
                    } else {
                        i = 4;
                    }
                    cachingIconView.setVisibility(i);
                }
                ImageView imageView = notificationChildrenContainer.mGroupIconShadow;
                if (imageView != null) {
                    if (z3) {
                        i3 = 0;
                    }
                    imageView.setVisibility(i3);
                }
            }
            this.mChildrenContainer.updateHeaderForExpansion(this.mShowNoBackground);
            List list = this.mChildrenContainer.mAttachedChildren;
            while (true) {
                ArrayList arrayList = (ArrayList) list;
                if (i2 >= arrayList.size()) {
                    break;
                }
                ((ExpandableNotificationRow) arrayList.get(i2)).updateBackgroundForGroupState();
                i2++;
            }
        } else if (isChildInGroup()) {
            NotificationContentView showingLayout = getShowingLayout();
            if (!showingLayout.isGroupExpanded() && !showingLayout.mContainingNotification.mUserLocked) {
                calculateVisibleType = showingLayout.mVisibleType;
            } else {
                calculateVisibleType = showingLayout.calculateVisibleType();
            }
            int backgroundColor = showingLayout.getBackgroundColor(calculateVisibleType);
            if (!isGroupExpanded() && !this.mNotificationParent.isGroupExpansionChanging()) {
                boolean z4 = this.mNotificationParent.mUserLocked;
            }
            if (isGroupExpanded() || this.mUserLocked || backgroundColor != 0) {
                i2 = 1;
            }
            this.mShowNoBackground = i2 ^ 1;
        } else {
            this.mShowNoBackground = false;
        }
        if (!this.mCustomOutline) {
            if (needsOutline()) {
                anonymousClass1 = this.mProvider;
            } else {
                anonymousClass1 = null;
            }
            setOutlineProvider(anonymousClass1);
        }
        updateBackground();
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final void updateBackgroundTint() {
        int i = 0;
        updateBackgroundTint(false);
        updateBackgroundForGroupState();
        if (this.mIsSummaryWithChildren) {
            List list = this.mChildrenContainer.mAttachedChildren;
            while (true) {
                ArrayList arrayList = (ArrayList) list;
                if (i < arrayList.size()) {
                    ((ExpandableNotificationRow) arrayList.get(i)).updateBackgroundForGroupState();
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void updateBubbleButton() {
        for (NotificationContentView notificationContentView : this.mLayouts) {
            notificationContentView.applyBubbleAction(notificationContentView.mExpandedChild, this.mEntry);
        }
    }

    public final void updateChildrenVisibility() {
        boolean z;
        int i;
        NotificationGuts notificationGuts;
        int i2 = 0;
        if (this.mExpandAnimationRunning && (notificationGuts = this.mGuts) != null && notificationGuts.mExposed) {
            z = true;
        } else {
            z = false;
        }
        NotificationContentView notificationContentView = this.mPrivateLayout;
        if (!this.mShowingPublic && !this.mIsSummaryWithChildren && !z) {
            i = 0;
        } else {
            i = 4;
        }
        notificationContentView.setVisibility(i);
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            if (this.mShowingPublic || !this.mIsSummaryWithChildren || z) {
                i2 = 4;
            }
            notificationChildrenContainer.setVisibility(i2);
        }
        updateLimits();
    }

    public final void updateClickAndFocus() {
        boolean z;
        boolean z2 = false;
        if (isChildInGroup() && !isGroupExpanded()) {
            z = false;
        } else {
            z = true;
        }
        if (this.mOnClickListener != null && z) {
            z2 = true;
        }
        if (isFocusable() != z) {
            setFocusable(z);
        }
        if (isClickable() != z2) {
            setClickable(z2);
        }
    }

    public final void updateContentAccessibilityImportanceForGuts(boolean z) {
        int i;
        int i2;
        int i3;
        if (z) {
            i = 0;
        } else {
            i = 2;
        }
        setImportantForAccessibility(i);
        NotificationChildrenContainer notificationChildrenContainer = this.mChildrenContainer;
        if (notificationChildrenContainer != null) {
            if (z) {
                i3 = 0;
            } else {
                i3 = 4;
            }
            notificationChildrenContainer.setImportantForAccessibility(i3);
        }
        NotificationContentView[] notificationContentViewArr = this.mLayouts;
        if (notificationContentViewArr != null) {
            for (NotificationContentView notificationContentView : notificationContentViewArr) {
                if (z) {
                    i2 = 0;
                } else {
                    i2 = 4;
                }
                notificationContentView.setImportantForAccessibility(i2);
            }
        }
        if (z) {
            requestAccessibilityFocus();
        }
    }

    public final void updateContentTransformation() {
        if (this.mExpandAnimationRunning) {
            return;
        }
        float contentTransformationShift = getContentTransformationShift() * (-this.mContentTransformationAmount);
        float interpolation = ((PathInterpolator) Interpolators.ALPHA_OUT).getInterpolation(Math.min((1.0f - this.mContentTransformationAmount) / 0.5f, 1.0f));
        if (this.mIsLastChild) {
            contentTransformationShift *= 0.4f;
        }
        this.mContentTranslation = contentTransformationShift;
        applyContentTransformation(interpolation, contentTransformationShift);
    }

    public final void updateLimits() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        for (NotificationContentView notificationContentView : this.mLayouts) {
            View view = notificationContentView.mContractedChild;
            boolean z5 = true;
            if (view != null && view.getId() != 16909810) {
                z = true;
            } else {
                z = false;
            }
            int i3 = this.mEntry.targetSdk;
            if (i3 < 24) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (i3 < 28) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (i3 < 31) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z6 = view instanceof CallLayout;
            if (z && z4 && !this.mIsSummaryWithChildren) {
                if (z2) {
                    i = this.mMaxSmallHeightBeforeN;
                } else if (z3) {
                    i = this.mMaxSmallHeightBeforeP;
                } else {
                    i = this.mMaxSmallHeightBeforeS;
                }
            } else if (z6) {
                i = this.mMaxExpandedHeight;
            } else if (this.mUseIncreasedCollapsedHeight && notificationContentView == this.mPrivateLayout) {
                i = this.mMaxSmallHeightLarge;
            } else {
                i = this.mMaxSmallHeight;
            }
            View view2 = notificationContentView.mHeadsUpChild;
            if (view2 == null || view2.getId() == 16909810) {
                z5 = false;
            }
            if (z5 && z4) {
                if (z2) {
                    i2 = this.mMaxHeadsUpHeightBeforeN;
                } else if (z3) {
                    i2 = this.mMaxHeadsUpHeightBeforeP;
                } else {
                    i2 = this.mMaxHeadsUpHeightBeforeS;
                }
            } else if (this.mUseIncreasedHeadsUpHeight && notificationContentView == this.mPrivateLayout) {
                i2 = this.mMaxHeadsUpHeightIncreased;
            } else {
                i2 = this.mMaxHeadsUpHeight;
            }
            NotificationViewWrapper visibleWrapper = notificationContentView.getVisibleWrapper(2);
            if (visibleWrapper != null) {
                i2 = Math.max(i2, visibleWrapper.getMinLayoutHeight());
            }
            int i4 = this.mMaxExpandedHeight;
            notificationContentView.mSmallHeight = i;
            notificationContentView.mHeadsUpHeight = i2;
            notificationContentView.mNotificationMaxHeight = i4;
        }
    }

    public final void updateRippleAllowed() {
        boolean z;
        if (!this.mOnKeyguard && this.mEntry.mSbn.getNotification().contentIntent != null) {
            z = false;
        } else {
            z = true;
        }
        this.mBackgroundNormal.mIsPressedAllowed = z;
    }

    public void updateShelfIconColor() {
        int i;
        boolean z;
        int resolveContrastColor;
        StatusBarIconView statusBarIconView = this.mEntry.mIcons.mShelfIcon;
        Boolean.TRUE.equals(statusBarIconView.getTag(R.id.icon_is_pre_L));
        int i2 = 0;
        if (NotificationUtils.isGrayscale(statusBarIconView, ContrastColorUtil.getInstance(((FrameLayout) this).mContext))) {
            if (this.mIsSummaryWithChildren && !shouldShowPublic()) {
                i2 = this.mChildrenContainer.getVisibleWrapper().getOriginalIconColor();
            } else {
                NotificationContentView showingLayout = getShowingLayout();
                NotificationViewWrapper visibleWrapper = showingLayout.getVisibleWrapper(showingLayout.mVisibleType);
                if (visibleWrapper != null) {
                    i = visibleWrapper.getOriginalIconColor();
                } else {
                    i = 1;
                }
                if (i != 1) {
                    i2 = i;
                } else {
                    NotificationEntry notificationEntry = this.mEntry;
                    Context context = ((FrameLayout) this).mContext;
                    if (this.mIsLowPriority && !isExpanded(false)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int calculateBgColor = calculateBgColor(false, false);
                    if (!z) {
                        i2 = notificationEntry.mSbn.getNotification().color;
                    }
                    if (notificationEntry.mCachedContrastColorIsFor != i2 || (resolveContrastColor = notificationEntry.mCachedContrastColor) == 1) {
                        resolveContrastColor = ContrastColorUtil.resolveContrastColor(context, i2, calculateBgColor);
                        notificationEntry.mCachedContrastColorIsFor = i2;
                        notificationEntry.mCachedContrastColor = resolveContrastColor;
                    }
                    i2 = resolveContrastColor;
                }
            }
        }
        statusBarIconView.setStaticDrawableColor(i2);
    }

    public final int getPinnedHeadsUpHeight(boolean z) {
        if (this.mIsSummaryWithChildren) {
            return this.mChildrenContainer.getIntrinsicHeight();
        }
        if (this.mExpandedWhenPinned) {
            return Math.max(getMaxExpandHeight(), getHeadsUpHeight());
        }
        if (z) {
            return Math.max(getCollapsedHeight(), getHeadsUpHeight());
        }
        return getHeadsUpHeight();
    }

    public ExpandableNotificationRow(Context context, AttributeSet attributeSet, NotificationEntry notificationEntry) {
        this(context, attributeSet, context.getUserId() == notificationEntry.mSbn.getNormalizedUserId() ? context : context.createContextAsUser(UserHandle.of(notificationEntry.mSbn.getNormalizedUserId()), 0));
    }

    public final void doLongClickCallback(int i, int i2, NotificationMenuRowPlugin.MenuItem menuItem) {
        LongPressListener longPressListener = this.mLongPressListener;
        if (longPressListener == null || menuItem == null) {
            return;
        }
        ((ExpandableNotificationRowController) ((ExpandableNotificationRowController$$ExternalSyntheticLambda0) longPressListener).f$0).mNotificationGutsManager.openGuts(this, i, i2, menuItem);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda2] */
    private ExpandableNotificationRow(Context context, AttributeSet attributeSet, Context context2) {
        super(context, attributeSet);
        this.mAnimatePinnedRoundness = false;
        this.mHeaderVisibleAmount = 1.0f;
        this.mLastChronometerRunning = true;
        this.mIsInlineReplyAnimationFlagEnabled = false;
        this.mExpandClickListener = new AnonymousClass1();
        this.mExpireRecentlyAlertedFlag = new Runnable() { // from class: com.android.systemui.statusbar.notification.row.ExpandableNotificationRow$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ExpandableNotificationRow expandableNotificationRow = ExpandableNotificationRow.this;
                SourceType$Companion$from$1 sourceType$Companion$from$1 = ExpandableNotificationRow.BASE_VALUE;
                expandableNotificationRow.applyAudiblyAlertedRecently(false);
            }
        };
        this.mIsGroupHeaderContainAtMark = false;
        this.mImageResolver = new NotificationInlineImageResolver(context2, new NotificationInlineImageCache());
        this.mSmallRoundness = getResources().getDimension(R.dimen.notification_corner_radius_small) / getMaxRadius();
        initDimens();
    }
}
