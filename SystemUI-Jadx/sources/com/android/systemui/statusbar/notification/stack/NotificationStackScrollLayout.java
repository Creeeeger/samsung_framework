package com.android.systemui.statusbar.notification.stack;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeAnimator;
import android.animation.ValueAnimator;
import android.app.SemWallpaperColors;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.MathUtils;
import android.util.Pair;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import androidx.core.view.ViewCompat$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.internal.graphics.ColorUtils;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.policy.SystemBarUtils;
import com.android.keyguard.BouncerPanelExpansionCalculator;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.ExpandHelper;
import com.android.systemui.NotiRune;
import com.android.systemui.QpRune;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.LaunchAnimator;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.KeyguardFoldControllerImpl;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.notification.FullExpansionPanelNotiAlphaController;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.qs.TouchAnimator;
import com.android.systemui.shade.NotificationPanelViewController$$ExternalSyntheticLambda2;
import com.android.systemui.shade.QuickSettingsController;
import com.android.systemui.shade.QuickSettingsController$$ExternalSyntheticLambda5;
import com.android.systemui.shade.SecPanelExpansionStateNotifier;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeHeaderController;
import com.android.systemui.statusbar.EmptyShadeView;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.NotificationShelf;
import com.android.systemui.statusbar.NotificationShelfManager;
import com.android.systemui.statusbar.iconsOnly.NotificationIconTransitionController;
import com.android.systemui.statusbar.notification.LaunchAnimationParameters;
import com.android.systemui.statusbar.notification.NotificationSectionsFeatureManager;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.notifcollection.DismissedByUserStats;
import com.android.systemui.statusbar.notification.collection.provider.NotificationVisibilityProviderImpl;
import com.android.systemui.statusbar.notification.collection.render.GroupExpansionManager;
import com.android.systemui.statusbar.notification.collection.render.GroupExpansionManagerImpl;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManager;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManagerImpl;
import com.android.systemui.statusbar.notification.collection.render.SectionHeaderNodeControllerImpl;
import com.android.systemui.statusbar.notification.logging.NotificationLogger$$ExternalSyntheticLambda2;
import com.android.systemui.statusbar.notification.row.ActivatableNotificationView;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.row.FooterView;
import com.android.systemui.statusbar.notification.row.StackScrollerDecorView;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.notification.stack.NotificationStackSizeCalculator;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.phone.HeadsUpAppearanceController;
import com.android.systemui.statusbar.phone.HeadsUpTouchHelper;
import com.android.systemui.statusbar.phone.ScreenOffAnimationController;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.Assert;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DumpUtilsKt;
import com.android.systemui.util.LargeScreenUtils;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.wallpaper.WallpaperEventNotifier;
import com.android.systemui.widget.SystemUIWidgetCallback;
import com.sec.ims.gls.GlsIntent;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;
import noticolorpicker.NotificationColorPicker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NotificationStackScrollLayout extends ViewGroup implements Dumpable, PanelScreenShotLogger.LogProvider {
    public static final /* synthetic */ int $r8$clinit = 0;
    static final float RUBBER_BAND_FACTOR_NORMAL = 0.1f;
    public int mActivePointerId;
    public ActivityStarter mActivityStarter;
    public final ArrayList mAddedHeadsUpChildren;
    public final AmbientState mAmbientState;
    public boolean mAnimateBottomOnLayout;
    public boolean mAnimateNextBackgroundBottom;
    public boolean mAnimateNextBackgroundTop;
    public boolean mAnimateNextSectionBoundsChange;
    public boolean mAnimateNextTopPaddingChange;
    public boolean mAnimateStackYForContentHeightChange;
    public boolean mAnimatedInsets;
    public final ArrayList mAnimationEvents;
    public final HashSet mAnimationFinishedRunnables;
    public boolean mAnimationRunning;
    public boolean mAnimationsEnabled;
    public final Rect mBackgroundAnimationRect;
    public final Paint mBackgroundPaint;
    public final NotificationStackScrollLayout$$ExternalSyntheticLambda3 mBackgroundUpdater;
    public float mBackgroundXFactor;
    public boolean mBackwardScrollable;
    public int mBgColor;
    public final float[] mBgCornerRadii;
    int mBottomInset;
    public int mBottomPadding;
    public int mCachedBackgroundColor;
    public CentralSurfaces mCentralSurfaces;
    public boolean mChangePositionInProgress;
    public boolean mCheckForLeavebehind;
    public boolean mChildTransferInProgress;
    public final ArrayList mChildrenChangingPositions;
    public final HashSet mChildrenToAddAnimated;
    public final ArrayList mChildrenToRemoveAnimated;
    public int mChildrenUpdateCount;
    public boolean mChildrenUpdateRequested;
    public long mChildrenUpdateStartTime;
    public final AnonymousClass1 mChildrenUpdater;
    public NotificationStackScrollLayoutController$$ExternalSyntheticLambda3 mClearAllAnimationListener;
    public final boolean mClearAllEnabled;
    public boolean mClearAllInProgress;
    public NotificationStackScrollLayoutController$$ExternalSyntheticLambda3 mClearAllListener;
    public final HashSet mClearTransientViewsWhenFinished;
    public final Rect mClipRect;
    public int mContentHeight;
    public boolean mContinuousBackgroundUpdate;
    public boolean mContinuousShadowUpdate;
    public NotificationStackScrollLayoutController mController;
    public int mCornerRadius;
    public int mCurrentStackHeight;
    public float mDimAmount;
    public ValueAnimator mDimAnimator;
    public final AnonymousClass3 mDimEndListener;
    public final AnonymousClass4 mDimUpdateListener;
    public boolean mDimmedNeedsAnimation;
    public boolean mDisallowDismissInThisMotion;
    public boolean mDisallowScrollingInThisMotion;
    public boolean mDismissUsingRowTranslationX;
    public final AnonymousClass6 mDisplayListener;
    public final DisplayManager mDisplayManager;
    public int mDisplayState;
    public boolean mDontClampNextScroll;
    public boolean mDontReportNextOverScroll;
    public int mDownX;
    public EmptyShadeView mEmptyShadeView;
    public boolean mEverythingNeedsAnimation;
    public final ExpandHelper mExpandHelper;
    public final AnonymousClass17 mExpandHelperCallback;
    public ExpandableNotificationRow mExpandedGroupView;
    public float mExpandedHeight;
    public final ArrayList mExpandedHeightListeners;
    public boolean mExpandedInThisMotion;
    public boolean mExpandingNotification;
    public ExpandableNotificationRow mExpandingNotificationRow;
    public float mExtraTopInsetForFullShadeTransition;
    public Runnable mFinishScrollingCallback;
    public boolean mFlingAfterUpEvent;
    public boolean mForceLayoutFirstMeasure;
    public boolean mForceNoOverlappingRendering;
    public View mForcedScroll;
    public boolean mForwardScrollable;
    public final HashSet mFromMoreCardAdditions;
    public final FullExpansionPanelNotiAlphaController mFullExpansionPanelNotiAlphaController;
    public long mGoToFullShadeDelay;
    public boolean mGoToFullShadeNeedsAnimation;
    public final GroupExpansionManager mGroupExpansionManager;
    public final GroupMembershipManager mGroupMembershipManager;
    public boolean mHasFilteredOutSeenNotifications;
    public boolean mHeadsUpAnimatingAway;
    public HeadsUpAppearanceController mHeadsUpAppearanceController;
    public final AnonymousClass15 mHeadsUpCallback;
    public final HashSet mHeadsUpChangeAnimations;
    public boolean mHeadsUpGoingAwayAnimationsAllowed;
    public int mHeadsUpInset;
    public boolean mHideSensitiveNeedsAnimation;
    public Interpolator mHideXInterpolator;
    public boolean mHighPriorityBeforeSpeedBump;
    public boolean mInHeadsUpPinnedMode;
    public float mInitialTouchX;
    public float mInitialTouchY;
    public final AnonymousClass7 mInsetsCallback;
    public float mInterpolatedHideAmount;
    public float mIntrinsicContentHeight;
    public int mIntrinsicPadding;
    public boolean mIsBeingDragged;
    public boolean mIsChangedOrientation;
    public boolean mIsClipped;
    public boolean mIsCurrentUserSetup;
    public boolean mIsExpanded;
    public boolean mIsExpansionChanging;
    public boolean mIsInsetAnimationRunning;
    public boolean mIsRemoteInputActive;
    public boolean mIsVisibleFromGone;
    public boolean mJustBackFromOcclude;
    public boolean mKeyguardBypassEnabled;
    public final KeyguardFoldController mKeyguardFoldController;
    public final KeyguardStateController mKeyguardStateController;
    public String mLastGoneCallTrace;
    public int mLastMotionY;
    public float mLastSentAppear;
    public float mLastSentExpandedHeight;
    public LaunchAnimationParameters mLaunchAnimationParams;
    public final Path mLaunchedNotificationClipPath;
    public final float[] mLaunchedNotificationRadii;
    public boolean mLaunchingNotification;
    public boolean mLaunchingNotificationNeedsToBeClipped;
    public float mLinearHideAmount;
    public NotificationLogger$$ExternalSyntheticLambda2 mListener;
    public NotificationStackScrollLogger mLogger;
    public int mMaxDisplayedNotifications;
    public int mMaxLayoutHeight;
    public float mMaxOverScroll;
    public int mMaxScrollAfterExpand;
    public int mMaxTopPadding;
    public int mMaximumVelocity;
    public int mMinInteractionHeight;
    public float mMinTopOverScrollToEscape;
    public int mMinimumPaddings;
    public int mMinimumVelocity;
    public boolean mNeedViewResizeAnimation;
    public boolean mNeedsAnimation;
    public NotificationStackSizeCalculator mNotificationStackSizeCalculator;
    public long mNumHeadsUp;
    public final AnonymousClass8 mOnChildHeightChangedListener;
    public final AnonymousClass9 mOnChildSensitivityChangedListener;
    public NotificationPanelViewController$$ExternalSyntheticLambda2 mOnEmptySpaceClickListener;
    public ExpandableView.OnHeightChangedListener mOnHeightChangedListener;
    public int mOnMeasureCount;
    public long mOnMeasureStartTime;
    public ViewCompat$$ExternalSyntheticLambda0 mOnNotificationRemovedListener;
    public Consumer mOnStackYChanged;
    public boolean mOnlyScrollingInThisMotion;
    public final SecNsslOpaqueBgHelper mOpaqueBgHelper;
    public int mOrientation;
    public final AnonymousClass5 mOutlineProvider;
    public float mOverScrolledBottomPixels;
    public float mOverScrolledTopPixels;
    public int mOverflingDistance;
    public QuickSettingsController.NsslOverscrollTopChangedListener mOverscrollTopChangedListener;
    public int mOwnScrollY;
    public int mPaddingBetweenElements;
    public final SecPanelExpansionStateNotifier mPanelExpansionStateNotifier;
    public boolean mPanelTracking;
    public boolean mPulsing;
    public boolean mQsExpandedImmediate;
    public float mQsExpansionFraction;
    public boolean mQsFullScreen;
    public ViewGroup mQsHeader;
    public final Rect mQsHeaderBound;
    public int mQsMinHeight;
    public final AnonymousClass14 mReclamp;
    public final NotificationStackScrollLayout$$ExternalSyntheticLambda2 mReflingAndAnimateScroll;
    public Rect mRequestedClipBounds;
    public final Path mRoundedClipPath;
    public int mRoundedRectClippingBottom;
    public int mRoundedRectClippingLeft;
    public int mRoundedRectClippingRight;
    public int mRoundedRectClippingTop;
    public final AnonymousClass2 mRunningAnimationUpdater;
    public final ScreenOffAnimationController mScreenOffAnimationController;
    public final AnonymousClass10 mScrollAdapter;
    public Consumer mScrollListener;
    public boolean mScrollable;
    public boolean mScrolledToTopOnFirstDown;
    public OverScroller mScroller;
    public boolean mScrollingEnabled;
    public final NotificationSection[] mSections;
    public final NotificationSectionsManager mSectionsManager;
    public ShadeController mShadeController;
    public boolean mShadeNeedsToClose;
    public final NotificationStackScrollLayout$$ExternalSyntheticLambda3 mShadowUpdater;
    public NotificationShelf mShelf;
    public boolean mShelfAlphaInAnimating;
    public boolean mShelfAlphaOutAnimating;
    public NotificationShelfManager mShelfManager;
    public final boolean mShouldDrawNotificationBackground;
    public boolean mShouldMediaPlayerDraggingStarted;
    public boolean mShouldShowShelfOnly;
    public boolean mShouldUseRoundedRectClipping;
    public boolean mShouldUseSplitNotificationShade;
    public int mSidePaddings;
    public final boolean mSimplifiedAppearFraction;
    public float mSlopMultiplier;
    public int mSpeedBumpIndex;
    public boolean mSpeedBumpIndexDirty;
    public final int mSplitShadeMinContentHeight;
    public final StackScrollAlgorithm mStackScrollAlgorithm;
    public float mStackTranslation;
    public final StackStateAnimator mStateAnimator;
    int mStatusBarHeight;
    public int mStatusBarState;
    public NotificationSwipeHelper mSwipeHelper;
    public final ArrayList mSwipedOutViews;
    public final AnonymousClass18 mSystemUIWidgetCallback;
    public final int[] mTempInt2;
    public final ArrayList mTmpList;
    public final Rect mTmpRect;
    public final ArrayList mTmpSortedChildren;
    public NotificationEntry mTopHeadsUpEntry;
    public int mTopPadding;
    public boolean mTopPaddingNeedsAnimation;
    public float mTopPaddingOverflow;
    public NotificationStackScrollLayoutController.TouchHandler mTouchHandler;
    public boolean mTouchIsClick;
    public int mTouchSlop;
    public int mUpcomingStatusBarState;
    public VelocityTracker mVelocityTracker;
    public final NotificationStackScrollLayout$$ExternalSyntheticLambda4 mViewPositionComparator;
    public int mWaterfallTopInset;
    public boolean mWillExpand;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$10, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass10 {
        public AnonymousClass10() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$15, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass15 implements HeadsUpTouchHelper.Callback {
        public AnonymousClass15() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$17, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass17 implements ExpandHelper.Callback {
        public AnonymousClass17() {
        }

        public final boolean canChildBeExpanded(View view) {
            if (view instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                if (expandableNotificationRow.isExpandable() && !expandableNotificationRow.areGutsExposed() && (NotificationStackScrollLayout.this.mIsExpanded || !expandableNotificationRow.mIsPinned)) {
                    return true;
                }
            }
            return false;
        }

        public final void expansionStateChanged(boolean z) {
            NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
            notificationStackScrollLayout.mExpandingNotification = z;
            if (!notificationStackScrollLayout.mExpandedInThisMotion) {
                notificationStackScrollLayout.mMaxScrollAfterExpand = notificationStackScrollLayout.mOwnScrollY;
                notificationStackScrollLayout.mExpandedInThisMotion = true;
            }
        }

        public final void setUserExpandedChild(View view, boolean z) {
            String str;
            if (view instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
                if (z) {
                    NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                    if (notificationStackScrollLayout.onKeyguard()) {
                        expandableNotificationRow.setUserLocked(false);
                        notificationStackScrollLayout.updateContentHeight();
                        notificationStackScrollLayout.notifyHeightChangeListener(expandableNotificationRow, false);
                        return;
                    }
                }
                expandableNotificationRow.setUserExpanded(z, true);
                expandableNotificationRow.onExpandedByGesture(z);
                if (z) {
                    String str2 = SystemUIAnalytics.sCurrentScreenID;
                    if (expandableNotificationRow.mIsSummaryWithChildren) {
                        str = "grouped";
                    } else {
                        str = "single";
                    }
                    SystemUIAnalytics.sendEventCDLog(str2, "QPNE0008", "type", str, "app", expandableNotificationRow.mEntry.mSbn.getPackageName());
                }
            }
        }

        public final void setUserLockedChild(View view, boolean z) {
            if (view instanceof ExpandableNotificationRow) {
                ((ExpandableNotificationRow) view).setUserLocked(z);
            }
            NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
            notificationStackScrollLayout.cancelLongPress();
            notificationStackScrollLayout.requestDisallowInterceptTouchEvent(true);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AnimationEvent {
        public static final AnimationFilter[] FILTERS;
        public static final int[] LENGTHS;
        public final int animationType;
        public final AnimationFilter filter;
        public boolean headsUpFromBottom;
        public final long length;
        public final ExpandableView mChangingView;
        public View viewAfterChangingView;

        static {
            AnimationFilter animationFilter = new AnimationFilter();
            animationFilter.animateAlpha = true;
            animationFilter.animateHeight = true;
            animationFilter.animateTopInset = true;
            animationFilter.animateY = true;
            animationFilter.animateZ = true;
            animationFilter.hasDelays = true;
            AnimationFilter animationFilter2 = new AnimationFilter();
            animationFilter2.animateAlpha = true;
            animationFilter2.animateHeight = true;
            animationFilter2.animateTopInset = true;
            animationFilter2.animateY = true;
            animationFilter2.animateZ = true;
            animationFilter2.hasDelays = true;
            AnimationFilter animationFilter3 = new AnimationFilter();
            animationFilter3.animateHeight = true;
            animationFilter3.animateTopInset = true;
            animationFilter3.animateY = true;
            animationFilter3.animateZ = true;
            animationFilter3.hasDelays = true;
            AnimationFilter animationFilter4 = new AnimationFilter();
            animationFilter4.animateHeight = true;
            animationFilter4.animateTopInset = true;
            animationFilter4.animateY = true;
            animationFilter4.animateDimmed = true;
            animationFilter4.animateZ = true;
            AnimationFilter animationFilter5 = new AnimationFilter();
            animationFilter5.animateZ = true;
            AnimationFilter animationFilter6 = new AnimationFilter();
            animationFilter6.animateDimmed = true;
            AnimationFilter animationFilter7 = new AnimationFilter();
            animationFilter7.animateAlpha = true;
            animationFilter7.animateHeight = true;
            animationFilter7.animateTopInset = true;
            animationFilter7.animateY = true;
            animationFilter7.animateZ = true;
            AnimationFilter animationFilter8 = new AnimationFilter();
            animationFilter8.animateHeight = true;
            animationFilter8.animateTopInset = true;
            animationFilter8.animateY = true;
            animationFilter8.animateDimmed = true;
            animationFilter8.animateZ = true;
            animationFilter8.hasDelays = true;
            AnimationFilter animationFilter9 = new AnimationFilter();
            animationFilter9.animateHideSensitive = true;
            AnimationFilter animationFilter10 = new AnimationFilter();
            animationFilter10.animateHeight = true;
            animationFilter10.animateTopInset = true;
            animationFilter10.animateY = true;
            animationFilter10.animateZ = true;
            AnimationFilter animationFilter11 = new AnimationFilter();
            animationFilter11.animateAlpha = true;
            animationFilter11.animateHeight = true;
            animationFilter11.animateTopInset = true;
            animationFilter11.animateY = true;
            animationFilter11.animateZ = true;
            AnimationFilter animationFilter12 = new AnimationFilter();
            animationFilter12.animateHeight = true;
            animationFilter12.animateTopInset = true;
            animationFilter12.animateY = true;
            animationFilter12.animateZ = true;
            AnimationFilter animationFilter13 = new AnimationFilter();
            animationFilter13.animateHeight = true;
            animationFilter13.animateTopInset = true;
            animationFilter13.animateY = true;
            animationFilter13.animateZ = true;
            animationFilter13.hasDelays = true;
            AnimationFilter animationFilter14 = new AnimationFilter();
            animationFilter14.animateHeight = true;
            animationFilter14.animateTopInset = true;
            animationFilter14.animateY = true;
            animationFilter14.animateZ = true;
            animationFilter14.hasDelays = true;
            AnimationFilter animationFilter15 = new AnimationFilter();
            animationFilter15.animateHeight = true;
            animationFilter15.animateTopInset = true;
            animationFilter15.animateY = true;
            animationFilter15.animateZ = true;
            AnimationFilter animationFilter16 = new AnimationFilter();
            animationFilter16.animateAlpha = true;
            animationFilter16.animateDimmed = true;
            animationFilter16.animateHideSensitive = true;
            animationFilter16.animateHeight = true;
            animationFilter16.animateTopInset = true;
            animationFilter16.animateY = true;
            animationFilter16.animateZ = true;
            AnimationFilter animationFilter17 = new AnimationFilter();
            animationFilter17.animateHeight = true;
            animationFilter17.animateTopInset = true;
            animationFilter17.animateY = true;
            animationFilter17.animateDimmed = true;
            animationFilter17.animateZ = true;
            animationFilter17.hasDelays = true;
            FILTERS = new AnimationFilter[]{animationFilter, animationFilter2, animationFilter3, animationFilter4, animationFilter5, animationFilter6, animationFilter7, animationFilter8, animationFilter9, animationFilter10, animationFilter11, animationFilter12, animationFilter13, animationFilter14, animationFilter15, animationFilter16, animationFilter17};
            LENGTHS = new int[]{464, 464, 360, 360, 220, 220, 360, 448, 360, 360, 360, 400, 400, 400, 360, 360, 448};
        }

        public AnimationEvent(ExpandableView expandableView, int i) {
            this(expandableView, i, LENGTHS[i]);
        }

        public AnimationEvent(ExpandableView expandableView, int i, AnimationFilter animationFilter) {
            this(expandableView, i, LENGTHS[i], animationFilter);
        }

        public AnimationEvent(ExpandableView expandableView, int i, long j) {
            this(expandableView, i, j, FILTERS[i]);
        }

        public AnimationEvent(ExpandableView expandableView, int i, long j, AnimationFilter animationFilter) {
            AnimationUtils.currentAnimationTimeMillis();
            this.mChangingView = expandableView;
            this.animationType = i;
            this.length = j;
            this.filter = animationFilter;
        }
    }

    static {
        new PathInterpolator(0.0f, 0.8f, 0.2f, 1.0f);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$1] */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$$ExternalSyntheticLambda3] */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$$ExternalSyntheticLambda3] */
    /* JADX WARN: Type inference failed for: r3v13, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$5] */
    /* JADX WARN: Type inference failed for: r3v14, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$6] */
    /* JADX WARN: Type inference failed for: r3v15, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$7] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$2] */
    /* JADX WARN: Type inference failed for: r3v7, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$3] */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$4] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$8] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$9] */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$14] */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$18] */
    public NotificationStackScrollLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        int[] iArr;
        boolean z;
        final int i = 0;
        this.mShadeNeedsToClose = false;
        this.mCurrentStackHeight = Integer.MAX_VALUE;
        this.mBackgroundPaint = new Paint();
        this.mActivePointerId = -1;
        this.mBottomInset = 0;
        this.mChildrenToAddAnimated = new HashSet();
        this.mAddedHeadsUpChildren = new ArrayList();
        this.mChildrenToRemoveAnimated = new ArrayList();
        this.mChildrenChangingPositions = new ArrayList();
        this.mFromMoreCardAdditions = new HashSet();
        this.mAnimationEvents = new ArrayList();
        this.mSwipedOutViews = new ArrayList();
        this.mStateAnimator = new StackStateAnimator(this);
        this.mSpeedBumpIndex = -1;
        final int i2 = 1;
        this.mSpeedBumpIndexDirty = true;
        this.mIsExpanded = true;
        this.mChildrenUpdateCount = 1;
        this.mOnMeasureCount = 1;
        this.mChildrenUpdater = new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.1
            /* JADX WARN: Code restructure failed: missing block: B:148:0x0280, code lost:
            
                if (r6 == false) goto L137;
             */
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final boolean onPreDraw() {
                /*
                    Method dump skipped, instructions count: 2281
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.AnonymousClass1.onPreDraw():boolean");
            }
        };
        this.mTempInt2 = new int[2];
        this.mAnimationFinishedRunnables = new HashSet();
        this.mClearTransientViewsWhenFinished = new HashSet();
        this.mHeadsUpChangeAnimations = new HashSet();
        this.mTmpList = new ArrayList();
        this.mRunningAnimationUpdater = new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                notificationStackScrollLayout.mShelf.updateAppearance();
                notificationStackScrollLayout.updateClippingToTopRoundedCorner();
                if (!notificationStackScrollLayout.mNeedsAnimation && !notificationStackScrollLayout.mChildrenUpdateRequested) {
                    notificationStackScrollLayout.updateBackground();
                    return true;
                }
                return true;
            }
        };
        this.mTmpSortedChildren = new ArrayList();
        this.mDimEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                NotificationStackScrollLayout.this.mDimAnimator = null;
            }
        };
        this.mDimUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int i3 = NotificationStackScrollLayout.$r8$clinit;
                notificationStackScrollLayout.mDimAmount = floatValue;
                notificationStackScrollLayout.updateBackgroundDimming();
            }
        };
        this.mQsHeaderBound = new Rect();
        this.mShadowUpdater = new ViewTreeObserver.OnPreDrawListener(this) { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$$ExternalSyntheticLambda3
            public final /* synthetic */ NotificationStackScrollLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                switch (i) {
                    case 0:
                        NotificationStackScrollLayout notificationStackScrollLayout = this.f$0;
                        int i3 = NotificationStackScrollLayout.$r8$clinit;
                        notificationStackScrollLayout.updateViewShadows();
                        return true;
                    default:
                        NotificationStackScrollLayout notificationStackScrollLayout2 = this.f$0;
                        int i4 = NotificationStackScrollLayout.$r8$clinit;
                        notificationStackScrollLayout2.updateBackground();
                        return true;
                }
            }
        };
        this.mBackgroundUpdater = new ViewTreeObserver.OnPreDrawListener(this) { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$$ExternalSyntheticLambda3
            public final /* synthetic */ NotificationStackScrollLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                switch (i2) {
                    case 0:
                        NotificationStackScrollLayout notificationStackScrollLayout = this.f$0;
                        int i3 = NotificationStackScrollLayout.$r8$clinit;
                        notificationStackScrollLayout.updateViewShadows();
                        return true;
                    default:
                        NotificationStackScrollLayout notificationStackScrollLayout2 = this.f$0;
                        int i4 = NotificationStackScrollLayout.$r8$clinit;
                        notificationStackScrollLayout2.updateBackground();
                        return true;
                }
            }
        };
        this.mViewPositionComparator = new NotificationStackScrollLayout$$ExternalSyntheticLambda4();
        this.mOutlineProvider = new ViewOutlineProvider() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.5
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (NotificationStackScrollLayout.this.mAmbientState.isHiddenAtAll()) {
                    NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                    float interpolation = notificationStackScrollLayout.mHideXInterpolator.getInterpolation((1.0f - notificationStackScrollLayout.mLinearHideAmount) * notificationStackScrollLayout.mBackgroundXFactor);
                    NotificationStackScrollLayout notificationStackScrollLayout2 = NotificationStackScrollLayout.this;
                    Rect rect = notificationStackScrollLayout2.mBackgroundAnimationRect;
                    int i3 = notificationStackScrollLayout2.mCornerRadius;
                    outline.setRoundRect(rect, MathUtils.lerp(i3 / 2.0f, i3, interpolation));
                    outline.setAlpha(1.0f - NotificationStackScrollLayout.this.mAmbientState.mHideAmount);
                    return;
                }
                ViewOutlineProvider.BACKGROUND.getOutline(view, outline);
            }
        };
        this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.6
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public final void onDisplayChanged(int i3) {
                if (i3 != 0) {
                    NotificationStackScrollLayout.this.mDisplayState = 0;
                    return;
                }
                Display display = NotificationStackScrollLayout.this.mDisplayManager.getDisplay(i3);
                NotificationStackScrollLayout.this.mDisplayState = display.getState();
                RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onDisplayChanged for predraw skip to "), NotificationStackScrollLayout.this.mDisplayState, "StackScroller");
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public final void onDisplayAdded(int i3) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public final void onDisplayRemoved(int i3) {
            }
        };
        this.mInsetsCallback = new WindowInsetsAnimation.Callback(i2) { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.7
            @Override // android.view.WindowInsetsAnimation.Callback
            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                NotificationStackScrollLayout.this.mIsInsetAnimationRunning = false;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                NotificationStackScrollLayout.this.mIsInsetAnimationRunning = true;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
                NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                int i3 = NotificationStackScrollLayout.$r8$clinit;
                notificationStackScrollLayout.updateBottomInset(windowInsets);
                return windowInsets;
            }
        };
        this.mInterpolatedHideAmount = 0.0f;
        this.mLinearHideAmount = 0.0f;
        this.mBackgroundXFactor = 1.0f;
        this.mMaxDisplayedNotifications = -1;
        this.mClipRect = new Rect();
        this.mHeadsUpGoingAwayAnimationsAllowed = true;
        this.mReflingAndAnimateScroll = new NotificationStackScrollLayout$$ExternalSyntheticLambda2(this, i2);
        this.mBackgroundAnimationRect = new Rect();
        this.mExpandedHeightListeners = new ArrayList();
        this.mTmpRect = new Rect();
        this.mHideXInterpolator = Interpolators.FAST_OUT_SLOW_IN;
        this.mRoundedClipPath = new Path();
        this.mLaunchedNotificationClipPath = new Path();
        this.mShouldUseRoundedRectClipping = false;
        this.mBgCornerRadii = new float[8];
        this.mAnimateStackYForContentHeightChange = false;
        this.mLaunchedNotificationRadii = new float[8];
        this.mDismissUsingRowTranslationX = true;
        this.mShouldMediaPlayerDraggingStarted = false;
        this.mOnChildHeightChangedListener = new ExpandableView.OnHeightChangedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.8
            @Override // com.android.systemui.statusbar.notification.row.ExpandableView.OnHeightChangedListener
            public final void onHeightChanged(ExpandableView expandableView, boolean z2) {
                NotificationStackScrollLayout.this.onChildHeightChanged(expandableView, z2);
            }

            @Override // com.android.systemui.statusbar.notification.row.ExpandableView.OnHeightChangedListener
            public final void onReset(ExpandableNotificationRow expandableNotificationRow) {
                boolean z2;
                NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                if ((!notificationStackScrollLayout.mAnimationsEnabled && !notificationStackScrollLayout.mPulsing) || (!notificationStackScrollLayout.mIsExpanded && !NotificationStackScrollLayout.isPinnedHeadsUp(expandableNotificationRow))) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                expandableNotificationRow.setAnimationRunning(z2);
                expandableNotificationRow.setChronometerRunning(notificationStackScrollLayout.mIsExpanded);
            }
        };
        this.mOnChildSensitivityChangedListener = new NotificationEntry.OnSensitivityChangedListener() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.9
            @Override // com.android.systemui.statusbar.notification.collection.NotificationEntry.OnSensitivityChangedListener
            public final void onSensitivityChanged(NotificationEntry notificationEntry) {
                NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                if (notificationStackScrollLayout.mAnimationsEnabled) {
                    notificationStackScrollLayout.mHideSensitiveNeedsAnimation = true;
                    notificationStackScrollLayout.requestChildrenUpdate();
                }
            }
        };
        this.mScrollAdapter = new AnonymousClass10();
        this.mReclamp = new Runnable() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.14
            @Override // java.lang.Runnable
            public final void run() {
                NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                int i3 = NotificationStackScrollLayout.$r8$clinit;
                int scrollRange = notificationStackScrollLayout.getScrollRange();
                NotificationStackScrollLayout notificationStackScrollLayout2 = NotificationStackScrollLayout.this;
                OverScroller overScroller = notificationStackScrollLayout2.mScroller;
                int i4 = ((ViewGroup) notificationStackScrollLayout2).mScrollX;
                int i5 = NotificationStackScrollLayout.this.mOwnScrollY;
                overScroller.startScroll(i4, i5, 0, scrollRange - i5);
                NotificationStackScrollLayout notificationStackScrollLayout3 = NotificationStackScrollLayout.this;
                notificationStackScrollLayout3.mDontReportNextOverScroll = true;
                notificationStackScrollLayout3.mDontClampNextScroll = true;
                notificationStackScrollLayout3.animateScroll();
            }
        };
        this.mHeadsUpCallback = new AnonymousClass15();
        this.mExpandHelperCallback = new AnonymousClass17();
        this.mSystemUIWidgetCallback = new SystemUIWidgetCallback() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.18
            @Override // com.android.systemui.widget.SystemUIWidgetCallback
            public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
                if ((j & 512) != 0) {
                    NotificationStackScrollLayout notificationStackScrollLayout = NotificationStackScrollLayout.this;
                    int childCount = notificationStackScrollLayout.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        View childAt = notificationStackScrollLayout.getChildAt(i3);
                        if (childAt instanceof ExpandableNotificationRow) {
                            NotificationStackScrollLayout.updateNotification((ExpandableNotificationRow) childAt);
                        }
                    }
                }
            }
        };
        Resources resources = getResources();
        FeatureFlags featureFlags = (FeatureFlags) Dependency.get(FeatureFlags.class);
        Flags flags = Flags.INSTANCE;
        featureFlags.getClass();
        FeatureFlagsRelease featureFlagsRelease = (FeatureFlagsRelease) featureFlags;
        this.mSimplifiedAppearFraction = featureFlagsRelease.isEnabled(Flags.SIMPLIFIED_APPEAR_FRACTION);
        setAnimatedInsetsEnabled(featureFlagsRelease.isEnabled(Flags.ANIMATED_NOTIFICATION_SHADE_INSETS));
        NotificationSectionsManager notificationSectionsManager = (NotificationSectionsManager) Dependency.get(NotificationSectionsManager.class);
        this.mSectionsManager = notificationSectionsManager;
        this.mScreenOffAnimationController = (ScreenOffAnimationController) Dependency.get(ScreenOffAnimationController.class);
        updateSplitNotificationShade();
        if (!notificationSectionsManager.initialized) {
            notificationSectionsManager.initialized = true;
            notificationSectionsManager.parent = this;
            notificationSectionsManager.reinflateViews();
            ((ConfigurationControllerImpl) notificationSectionsManager.configurationController).addCallback(notificationSectionsManager.configurationListener);
            NotificationSectionsFeatureManager notificationSectionsFeatureManager = notificationSectionsManager.sectionsFeatureManager;
            notificationSectionsFeatureManager.isFilteringEnabled();
            notificationSectionsFeatureManager.isFilteringEnabled();
            if (notificationSectionsFeatureManager.isFilteringEnabled()) {
                iArr = new int[]{2, 3, 4, 5, 6, 7, 8, 9};
            } else {
                iArr = new int[]{2, 3, 8, 9};
            }
            ArrayList arrayList = new ArrayList(iArr.length);
            for (int i3 : iArr) {
                NotificationStackScrollLayout notificationStackScrollLayout = notificationSectionsManager.parent;
                if (notificationStackScrollLayout == null) {
                    notificationStackScrollLayout = null;
                }
                arrayList.add(new NotificationSection(notificationStackScrollLayout, i3));
            }
            this.mSections = (NotificationSection[]) arrayList.toArray(new NotificationSection[0]);
            AmbientState ambientState = (AmbientState) Dependency.get(AmbientState.class);
            this.mAmbientState = ambientState;
            this.mBgColor = Utils.getColorAttr(R.attr.colorBackgroundFloating, ((ViewGroup) this).mContext).getDefaultColor();
            int dimensionPixelSize = resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_min_height);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_max_height);
            this.mSplitShadeMinContentHeight = resources.getDimensionPixelSize(com.android.systemui.R.dimen.nssl_split_shade_min_content_height);
            ExpandHelper expandHelper = new ExpandHelper(getContext(), this.mExpandHelperCallback, dimensionPixelSize, dimensionPixelSize2);
            this.mExpandHelper = expandHelper;
            expandHelper.mEventSource = this;
            expandHelper.mScrollAdapter = this.mScrollAdapter;
            this.mStackScrollAlgorithm = new StackScrollAlgorithm(context, this);
            boolean z2 = NotiRune.NOTI_STYLE_TABLET_BG;
            if (z2) {
                this.mOpaqueBgHelper = new SecNsslOpaqueBgHelper(context);
            }
            if (z2) {
                this.mOpaqueBgHelper.getClass();
            } else {
                z2 = resources.getBoolean(com.android.systemui.R.bool.config_drawNotificationBackground);
            }
            this.mShouldDrawNotificationBackground = z2;
            setOutlineProvider(this.mOutlineProvider);
            if (!z2) {
                z = false;
            } else {
                z = true;
            }
            setWillNotDraw(!z);
            this.mBackgroundPaint.setAntiAlias(true);
            this.mClearAllEnabled = resources.getBoolean(com.android.systemui.R.bool.config_enableNotificationsClearAll);
            this.mGroupMembershipManager = (GroupMembershipManager) Dependency.get(GroupMembershipManager.class);
            this.mGroupExpansionManager = (GroupExpansionManager) Dependency.get(GroupExpansionManager.class);
            setImportantForAccessibility(1);
            if (this.mAnimatedInsets) {
                setWindowInsetsAnimationCallback(this.mInsetsCallback);
            }
            FullExpansionPanelNotiAlphaController fullExpansionPanelNotiAlphaController = (FullExpansionPanelNotiAlphaController) Dependency.get(FullExpansionPanelNotiAlphaController.class);
            this.mFullExpansionPanelNotiAlphaController = fullExpansionPanelNotiAlphaController;
            fullExpansionPanelNotiAlphaController.mStackScrollLayout = this;
            TouchAnimator.Builder builder = new TouchAnimator.Builder();
            builder.addFloat(fullExpansionPanelNotiAlphaController.mStackScrollLayout, "alpha", 1.0f, 0.0f);
            builder.mStartDelay = 0.0f;
            builder.mEndDelay = 0.5f;
            builder.mInterpolator = fullExpansionPanelNotiAlphaController.mSineInOut33;
            fullExpansionPanelNotiAlphaController.mStackScrollerAlphaAnimator = builder.build();
            TouchAnimator.Builder builder2 = new TouchAnimator.Builder();
            builder2.addFloat(fullExpansionPanelNotiAlphaController.mStackScrollLayout, "alpha", 1.0f, 0.0f);
            builder2.mEndDelay = 0.8f;
            builder2.build();
            ((WallpaperEventNotifier) Dependency.get(WallpaperEventNotifier.class)).registerCallback(false, this.mSystemUIWidgetCallback, 512L);
            PanelScreenShotLogger panelScreenShotLogger = PanelScreenShotLogger.INSTANCE;
            panelScreenShotLogger.addLogProvider("AmbientState", ambientState);
            panelScreenShotLogger.addLogProvider("StackScroller", this);
            this.mKeyguardFoldController = (KeyguardFoldController) Dependency.get(KeyguardFoldController.class);
            KeyguardStateController keyguardStateController = (KeyguardStateController) Dependency.get(KeyguardStateController.class);
            this.mKeyguardStateController = keyguardStateController;
            ((KeyguardStateControllerImpl) keyguardStateController).addCallback(new KeyguardStateController.Callback() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.11
                @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
                public final void onKeyguardShowingChanged() {
                    NotificationStackScrollLayout notificationStackScrollLayout2 = NotificationStackScrollLayout.this;
                    KeyguardStateController keyguardStateController2 = notificationStackScrollLayout2.mKeyguardStateController;
                    if (((KeyguardStateControllerImpl) keyguardStateController2).mShowing && ((KeyguardStateControllerImpl) keyguardStateController2).mOccluded) {
                        notificationStackScrollLayout2.mJustBackFromOcclude = true;
                        notificationStackScrollLayout2.forceLayout();
                    }
                }
            });
            Handler handler = (Handler) Dependency.get(Dependency.BG_HANDLER);
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            this.mDisplayManager = displayManager;
            displayManager.registerDisplayListener(this.mDisplayListener, handler);
            this.mPanelExpansionStateNotifier = (SecPanelExpansionStateNotifier) Dependency.get(SecPanelExpansionStateNotifier.class);
            return;
        }
        throw new IllegalStateException("NotificationSectionsManager already initialized".toString());
    }

    public static void clearTemporaryViewsInGroup(ViewGroup viewGroup) {
        while (viewGroup != null && viewGroup.getTransientViewCount() != 0) {
            View transientView = viewGroup.getTransientView(0);
            viewGroup.removeTransientView(transientView);
            Log.d("StackScroller", "clearTemporaryViewsInGroup : " + transientView);
            if (transientView instanceof ExpandableView) {
                ((ExpandableView) transientView).mTransientContainer = null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
    
        if (r4.mEntry.mBucket == 9) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0068, code lost:
    
        if (r4.mEntry.mBucket < 9) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean includeChildInClearAll(com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r4, int r5) {
        /*
            boolean r0 = r4 instanceof com.android.systemui.statusbar.notification.row.ExpandableNotificationRow
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L29
            boolean r0 = r4.areGutsExposed()
            if (r0 != 0) goto L29
            com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r4.mEntry
            boolean r0 = r0.hasFinishedInitialization()
            if (r0 != 0) goto L15
            goto L29
        L15:
            com.android.systemui.statusbar.notification.collection.NotificationEntry r0 = r4.mEntry
            boolean r0 = r0.isClearable()
            if (r0 == 0) goto L29
            boolean r0 = r4.shouldShowPublic()
            if (r0 == 0) goto L27
            boolean r0 = r4.mSensitiveHiddenInGeneral
            if (r0 != 0) goto L29
        L27:
            r0 = r1
            goto L2a
        L29:
            r0 = r2
        L2a:
            if (r0 == 0) goto L71
            if (r5 == 0) goto L6d
            r0 = 9
            if (r5 == r1) goto L64
            r3 = 2
            if (r5 == r3) goto L5d
            r0 = 3
            if (r5 != r0) goto L51
            com.android.systemui.noticenter.NotiCenterPlugin r5 = com.android.systemui.noticenter.NotiCenterPlugin.INSTANCE
            com.android.systemui.statusbar.notification.collection.NotificationEntry r4 = r4.mEntry
            android.service.notification.StatusBarNotification r4 = r4.mSbn
            java.lang.String r4 = r4.getPackageName()
            r5.getClass()
            java.util.HashSet r5 = com.android.systemui.noticenter.NotiCenterPlugin.noclearAppList
            if (r5 == 0) goto L4e
            boolean r4 = r5.contains(r4)
            goto L4f
        L4e:
            r4 = r2
        L4f:
            r4 = r4 ^ r1
            goto L6e
        L51:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Unknown selection: "
            java.lang.String r5 = android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r0, r5)
            r4.<init>(r5)
            throw r4
        L5d:
            com.android.systemui.statusbar.notification.collection.NotificationEntry r4 = r4.mEntry
            int r4 = r4.mBucket
            if (r4 != r0) goto L6b
            goto L6d
        L64:
            com.android.systemui.statusbar.notification.collection.NotificationEntry r4 = r4.mEntry
            int r4 = r4.mBucket
            if (r4 >= r0) goto L6b
            goto L6d
        L6b:
            r4 = r2
            goto L6e
        L6d:
            r4 = r1
        L6e:
            if (r4 == 0) goto L71
            goto L72
        L71:
            r1 = r2
        L72:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.includeChildInClearAll(com.android.systemui.statusbar.notification.row.ExpandableNotificationRow, int):boolean");
    }

    public static boolean isPinnedHeadsUp(View view) {
        if (!(view instanceof ExpandableNotificationRow)) {
            return false;
        }
        ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) view;
        if (!expandableNotificationRow.mIsHeadsUp || !expandableNotificationRow.mIsPinned) {
            return false;
        }
        return true;
    }

    public static void updateNotification(ExpandableNotificationRow expandableNotificationRow) {
        ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateAllTextViewColors(expandableNotificationRow, expandableNotificationRow.mDimmed);
        if (expandableNotificationRow.mIsSummaryWithChildren) {
            NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
            int notificationChildCount = notificationChildrenContainer.getNotificationChildCount();
            for (int i = 0; i < notificationChildCount; i++) {
                updateNotification((ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i));
            }
        }
    }

    public final void animateScroll() {
        if (this.mScroller.computeScrollOffset()) {
            int i = this.mOwnScrollY;
            int currY = this.mScroller.getCurrY();
            if (i != currY) {
                int scrollRange = getScrollRange();
                if ((currY < 0 && i >= 0) || (currY > scrollRange && i <= scrollRange)) {
                    float currVelocity = this.mScroller.getCurrVelocity();
                    if (currVelocity >= this.mMinimumVelocity) {
                        this.mMaxOverScroll = (Math.abs(currVelocity) / 1000.0f) * this.mOverflingDistance;
                    }
                }
                if (this.mDontClampNextScroll) {
                    scrollRange = Math.max(scrollRange, i);
                }
                customOverScrollBy(currY - i, i, scrollRange, (int) this.mMaxOverScroll);
            }
            postOnAnimation(this.mReflingAndAnimateScroll);
            return;
        }
        this.mDontClampNextScroll = false;
        Runnable runnable = this.mFinishScrollingCallback;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void applyCurrentState() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ExpandableView childAtIndex = getChildAtIndex(i);
            ExpandableViewState expandableViewState = childAtIndex.mViewState;
            if (!expandableViewState.gone) {
                expandableViewState.applyToView(childAtIndex);
            }
        }
        NotificationLogger$$ExternalSyntheticLambda2 notificationLogger$$ExternalSyntheticLambda2 = this.mListener;
        if (notificationLogger$$ExternalSyntheticLambda2 != null) {
            notificationLogger$$ExternalSyntheticLambda2.f$0.onChildLocationsChanged();
        }
        Iterator it = this.mAnimationFinishedRunnables.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.mAnimationFinishedRunnables.clear();
        setAnimationRunning(false);
        updateBackground();
        updateViewShadows();
        updateClippingToTopRoundedCorner();
    }

    public final float calculateAppearFraction(float f) {
        if (this.mSimplifiedAppearFraction) {
            if (isHeadsUpTransition()) {
                float appearEndPosition = getAppearEndPosition();
                float appearStartPosition = getAppearStartPosition();
                return MathUtils.constrain((f - appearStartPosition) / (appearEndPosition - appearStartPosition), -1.0f, 1.0f);
            }
            return this.mAmbientState.mExpansionFraction;
        }
        if (this.mShouldUseSplitNotificationShade) {
            if (isHeadsUpTransition()) {
                float appearEndPosition2 = getAppearEndPosition();
                float appearStartPosition2 = getAppearStartPosition();
                return MathUtils.constrain((f - appearStartPosition2) / (appearEndPosition2 - appearStartPosition2), -1.0f, 1.0f);
            }
            return this.mAmbientState.mExpansionFraction;
        }
        float appearEndPosition3 = getAppearEndPosition();
        float appearStartPosition3 = getAppearStartPosition();
        return (f - appearStartPosition3) / (appearEndPosition3 - appearStartPosition3);
    }

    public final float calculateGapHeight(ExpandableView expandableView, ExpandableView expandableView2, int i) {
        if (onKeyguard()) {
            return 0.0f;
        }
        StackScrollAlgorithm stackScrollAlgorithm = this.mStackScrollAlgorithm;
        NotificationSectionsManager notificationSectionsManager = this.mSectionsManager;
        AmbientState ambientState = this.mAmbientState;
        float f = ambientState.mFractionToShade;
        boolean isOnKeyguard = ambientState.isOnKeyguard();
        stackScrollAlgorithm.getClass();
        if (expandableView instanceof ExpandableView) {
            return NotificationUtils.interpolate(0.0f, stackScrollAlgorithm.mMaxGroupExpandedBottomGap, StackScrollAlgorithm.getPreviousGroupExpandFraction(expandableView));
        }
        if (!StackScrollAlgorithm.childNeedsGapHeight(notificationSectionsManager, i, expandableView2, expandableView)) {
            return 0.0f;
        }
        return stackScrollAlgorithm.getGapForLocation(f, isOnKeyguard);
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        this.mSwipeHelper.cancelLongPress();
    }

    public final void changeViewPosition(ExpandableView expandableView, int i) {
        String str;
        NotificationShelf notificationShelf;
        Assert.isMainThread();
        if (!this.mChangePositionInProgress) {
            int indexOfChild = indexOfChild(expandableView);
            boolean z = false;
            if (indexOfChild == -1) {
                if ((expandableView instanceof ExpandableNotificationRow) && expandableView.mTransientContainer != null) {
                    z = true;
                }
                StringBuilder sb = new StringBuilder("Attempting to re-position ");
                if (z) {
                    str = "transient";
                } else {
                    str = "";
                }
                sb.append(str);
                sb.append(" view {");
                sb.append(expandableView);
                sb.append("}");
                Log.e("StackScroller", sb.toString());
                if ((expandableView instanceof NotificationShelf) && (notificationShelf = this.mShelf) != null) {
                    addView(notificationShelf);
                    return;
                }
                return;
            }
            if (expandableView != null && expandableView.getParent() == this && indexOfChild != i) {
                this.mChangePositionInProgress = true;
                expandableView.mChangingPosition = true;
                removeView(expandableView);
                addView(expandableView, i);
                expandableView.mChangingPosition = false;
                this.mChangePositionInProgress = false;
                if (this.mIsExpanded && this.mAnimationsEnabled && expandableView.getVisibility() != 8) {
                    this.mChildrenChangingPositions.add(expandableView);
                    this.mNeedsAnimation = true;
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("Reentrant call to changeViewPosition");
    }

    public final void clampScrollPosition() {
        boolean z;
        int scrollRange = getScrollRange();
        if (scrollRange < this.mOwnScrollY && !this.mAmbientState.mClearAllInProgress) {
            if (scrollRange < getScrollAmountToScrollBoundary() && this.mAnimateStackYForContentHeightChange) {
                z = true;
            } else {
                z = false;
            }
            setOwnScrollY(scrollRange, z);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void clearChildFocus(View view) {
        super.clearChildFocus(view);
        if (this.mForcedScroll == view) {
            this.mForcedScroll = null;
        }
    }

    public final void clearHeadsUpDisappearRunning() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) childAt;
                expandableNotificationRow.setHeadsUpAnimatingAway(false);
                if (expandableNotificationRow.mIsSummaryWithChildren) {
                    Iterator it = expandableNotificationRow.getAttachedChildren().iterator();
                    while (it.hasNext()) {
                        ((ExpandableNotificationRow) it.next()).setHeadsUpAnimatingAway(false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0038, code lost:
    
        if (includeChildInClearAll(r8, r22) != false) goto L15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void clearNotifications(final int r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.clearNotifications(int, boolean):void");
    }

    public final void customOverScrollBy(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2;
        boolean z3;
        float f;
        boolean z4;
        int i5 = i2 + i;
        int i6 = -i4;
        int i7 = i4 + i3;
        if (i5 > i7) {
            z = true;
            i5 = i7;
        } else if (i5 < i6) {
            i5 = i6;
            z = true;
        } else {
            z = false;
        }
        if (!this.mScroller.isFinished()) {
            setOwnScrollY(i5);
            if (z) {
                int scrollRange = getScrollRange();
                int i8 = this.mOwnScrollY;
                if (i8 <= 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (i8 >= scrollRange) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z2 || z3) {
                    if (z2) {
                        f = -i8;
                        setOwnScrollY(0);
                        this.mDontReportNextOverScroll = true;
                        z4 = true;
                    } else {
                        setOwnScrollY(scrollRange);
                        f = i8 - scrollRange;
                        z4 = false;
                    }
                    setOverScrollAmount(f, z4, false, true);
                    setOverScrollAmount(0.0f, z4, true, true);
                    this.mScroller.forceFinished(true);
                    return;
                }
                return;
            }
            float currentOverScrollAmount = getCurrentOverScrollAmount(true);
            if (this.mOwnScrollY < 0) {
                notifyOverscrollTopListener(-r4, isRubberbanded(true));
                return;
            } else {
                notifyOverscrollTopListener(currentOverScrollAmount, isRubberbanded(true));
                return;
            }
        }
        setOwnScrollY(i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.mShouldUseRoundedRectClipping && !this.mLaunchingNotification) {
            canvas.clipPath(this.mRoundedClipPath);
        }
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x012f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x015f, code lost:
    
        r10 = scrollAmountForKeyboardFocus(r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0163, code lost:
    
        if (r10 == 0) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x016c, code lost:
    
        if ((r9.mOwnScrollY + r10) <= getScrollRange()) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x016e, code lost:
    
        r9.mOwnScrollY = getScrollRange();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x017c, code lost:
    
        if (r9.mAnimationsEnabled == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x017e, code lost:
    
        r9.mNeedsAnimation = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0180, code lost:
    
        requestChildrenUpdate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0175, code lost:
    
        r9.mOwnScrollY += r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0183, code lost:
    
        r3.requestFocus();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0186, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0072, code lost:
    
        r10 = scrollAmountForKeyboardFocus(r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0076, code lost:
    
        if (r10 == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0078, code lost:
    
        r0 = r9.mOwnScrollY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007c, code lost:
    
        if ((r0 + r10) > 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007e, code lost:
    
        r9.mOwnScrollY = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0086, code lost:
    
        if (r9.mAnimationsEnabled == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
    
        r9.mNeedsAnimation = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008a, code lost:
    
        requestChildrenUpdate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0081, code lost:
    
        r9.mOwnScrollY = r0 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008d, code lost:
    
        r3.requestFocus();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0090, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0106, code lost:
    
        if ((r3 instanceof com.android.systemui.statusbar.NotificationShelf) != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0108, code lost:
    
        r10 = scrollAmountForKeyboardFocus(r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x010c, code lost:
    
        if (r10 == 0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0115, code lost:
    
        if ((r9.mOwnScrollY + r10) <= getScrollRange()) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0117, code lost:
    
        r9.mOwnScrollY = getScrollRange();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0125, code lost:
    
        if (r9.mAnimationsEnabled == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0127, code lost:
    
        r9.mNeedsAnimation = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0129, code lost:
    
        requestChildrenUpdate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x011e, code lost:
    
        r9.mOwnScrollY += r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x012c, code lost:
    
        r3.requestFocus();
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r10) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        Path path;
        if (this.mShouldUseRoundedRectClipping && this.mLaunchingNotification) {
            canvas.save();
            ExpandableView expandableView = (ExpandableView) view;
            if (!expandableView.isExpandAnimationRunning() && !expandableView.hasExpandingChild()) {
                path = this.mRoundedClipPath;
            } else {
                path = null;
            }
            if (path != null) {
                canvas.clipPath(path);
            }
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, final String[] strArr) {
        final IndentingPrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        asIndenting.println("Internal state:");
        final int i = 0;
        DumpUtilsKt.withIncreasedIndent(asIndenting, new Runnable(this) { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$$ExternalSyntheticLambda6
            public final /* synthetic */ NotificationStackScrollLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ExpandableView expandableView;
                switch (i) {
                    case 0:
                        NotificationStackScrollLayout notificationStackScrollLayout = this.f$0;
                        IndentingPrintWriter indentingPrintWriter = asIndenting;
                        DumpUtilsKt.println(indentingPrintWriter, "pulsing", Boolean.valueOf(notificationStackScrollLayout.mPulsing));
                        DumpUtilsKt.println(indentingPrintWriter, "expanded", Boolean.valueOf(notificationStackScrollLayout.mIsExpanded));
                        DumpUtilsKt.println(indentingPrintWriter, "headsUpPinned", Boolean.valueOf(notificationStackScrollLayout.mInHeadsUpPinnedMode));
                        DumpUtilsKt.println(indentingPrintWriter, "qsClipping", Boolean.valueOf(notificationStackScrollLayout.mShouldUseRoundedRectClipping));
                        DumpUtilsKt.println(indentingPrintWriter, "qsClipDismiss", Boolean.valueOf(notificationStackScrollLayout.mDismissUsingRowTranslationX));
                        DumpUtilsKt.println(indentingPrintWriter, "visibility", DumpUtilsKt.visibilityString(notificationStackScrollLayout.getVisibility()));
                        DumpUtilsKt.println(indentingPrintWriter, "alpha", Float.valueOf(notificationStackScrollLayout.getAlpha()));
                        DumpUtilsKt.println(indentingPrintWriter, "scrollY", Integer.valueOf(notificationStackScrollLayout.mAmbientState.mScrollY));
                        DumpUtilsKt.println(indentingPrintWriter, "maxTopPadding", Integer.valueOf(notificationStackScrollLayout.mMaxTopPadding));
                        DumpUtilsKt.println(indentingPrintWriter, "showShelfOnly", Boolean.valueOf(notificationStackScrollLayout.mShouldShowShelfOnly));
                        DumpUtilsKt.println(indentingPrintWriter, "qsExpandFraction", Float.valueOf(notificationStackScrollLayout.mQsExpansionFraction));
                        DumpUtilsKt.println(indentingPrintWriter, "isCurrentUserSetup", Boolean.valueOf(notificationStackScrollLayout.mIsCurrentUserSetup));
                        DumpUtilsKt.println(indentingPrintWriter, "hideAmount", Float.valueOf(notificationStackScrollLayout.mAmbientState.mHideAmount));
                        DumpUtilsKt.println(indentingPrintWriter, "ambientStateSwipingUp", Boolean.valueOf(notificationStackScrollLayout.mAmbientState.mIsSwipingUp));
                        DumpUtilsKt.println(indentingPrintWriter, "maxDisplayedNotifications", Integer.valueOf(notificationStackScrollLayout.mMaxDisplayedNotifications));
                        DumpUtilsKt.println(indentingPrintWriter, "intrinsicContentHeight", Float.valueOf(notificationStackScrollLayout.mIntrinsicContentHeight));
                        DumpUtilsKt.println(indentingPrintWriter, "contentHeight", Integer.valueOf(notificationStackScrollLayout.mContentHeight));
                        DumpUtilsKt.println(indentingPrintWriter, "intrinsicPadding", Integer.valueOf(notificationStackScrollLayout.mIntrinsicPadding));
                        DumpUtilsKt.println(indentingPrintWriter, "topPadding", Integer.valueOf(notificationStackScrollLayout.mTopPadding));
                        DumpUtilsKt.println(indentingPrintWriter, "bottomPadding", Integer.valueOf(notificationStackScrollLayout.mBottomPadding));
                        indentingPrintWriter.println("NotificationStackSizeCalculator saveSpaceOnLockscreen=" + notificationStackScrollLayout.mNotificationStackSizeCalculator.saveSpaceOnLockscreen);
                        return;
                    default:
                        NotificationStackScrollLayout notificationStackScrollLayout2 = this.f$0;
                        PrintWriter printWriter2 = asIndenting;
                        String[] strArr2 = strArr;
                        int i2 = NotificationStackScrollLayout.$r8$clinit;
                        int childCount = notificationStackScrollLayout2.getChildCount();
                        printWriter2.println("Number of children: " + childCount);
                        printWriter2.println();
                        int i3 = 0;
                        for (int i4 = 0; i4 < childCount; i4++) {
                            ExpandableView childAtIndex = notificationStackScrollLayout2.getChildAtIndex(i4);
                            childAtIndex.dump(printWriter2, strArr2);
                            if (childAtIndex instanceof FooterView) {
                                DumpUtilsKt.withIncreasedIndent(printWriter2, new NotificationStackScrollLayout$$ExternalSyntheticLambda7(notificationStackScrollLayout2, printWriter2, i3));
                            }
                            printWriter2.println();
                        }
                        int transientViewCount = notificationStackScrollLayout2.getTransientViewCount();
                        printWriter2.println("Transient Views: " + transientViewCount);
                        while (i3 < transientViewCount) {
                            ((ExpandableView) notificationStackScrollLayout2.getTransientView(i3)).dump(printWriter2, strArr2);
                            i3++;
                        }
                        NotificationSwipeHelper notificationSwipeHelper = notificationStackScrollLayout2.mSwipeHelper;
                        if (notificationSwipeHelper.mIsSwiping) {
                            expandableView = notificationSwipeHelper.mTouchedView;
                        } else {
                            expandableView = null;
                        }
                        printWriter2.println("Swiped view: " + expandableView);
                        if (expandableView instanceof ExpandableView) {
                            expandableView.dump(printWriter2, strArr2);
                            return;
                        }
                        return;
                }
            }
        });
        asIndenting.println();
        asIndenting.println("Contents:");
        final int i2 = 1;
        DumpUtilsKt.withIncreasedIndent(asIndenting, new Runnable(this) { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$$ExternalSyntheticLambda6
            public final /* synthetic */ NotificationStackScrollLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ExpandableView expandableView;
                switch (i2) {
                    case 0:
                        NotificationStackScrollLayout notificationStackScrollLayout = this.f$0;
                        IndentingPrintWriter indentingPrintWriter = asIndenting;
                        DumpUtilsKt.println(indentingPrintWriter, "pulsing", Boolean.valueOf(notificationStackScrollLayout.mPulsing));
                        DumpUtilsKt.println(indentingPrintWriter, "expanded", Boolean.valueOf(notificationStackScrollLayout.mIsExpanded));
                        DumpUtilsKt.println(indentingPrintWriter, "headsUpPinned", Boolean.valueOf(notificationStackScrollLayout.mInHeadsUpPinnedMode));
                        DumpUtilsKt.println(indentingPrintWriter, "qsClipping", Boolean.valueOf(notificationStackScrollLayout.mShouldUseRoundedRectClipping));
                        DumpUtilsKt.println(indentingPrintWriter, "qsClipDismiss", Boolean.valueOf(notificationStackScrollLayout.mDismissUsingRowTranslationX));
                        DumpUtilsKt.println(indentingPrintWriter, "visibility", DumpUtilsKt.visibilityString(notificationStackScrollLayout.getVisibility()));
                        DumpUtilsKt.println(indentingPrintWriter, "alpha", Float.valueOf(notificationStackScrollLayout.getAlpha()));
                        DumpUtilsKt.println(indentingPrintWriter, "scrollY", Integer.valueOf(notificationStackScrollLayout.mAmbientState.mScrollY));
                        DumpUtilsKt.println(indentingPrintWriter, "maxTopPadding", Integer.valueOf(notificationStackScrollLayout.mMaxTopPadding));
                        DumpUtilsKt.println(indentingPrintWriter, "showShelfOnly", Boolean.valueOf(notificationStackScrollLayout.mShouldShowShelfOnly));
                        DumpUtilsKt.println(indentingPrintWriter, "qsExpandFraction", Float.valueOf(notificationStackScrollLayout.mQsExpansionFraction));
                        DumpUtilsKt.println(indentingPrintWriter, "isCurrentUserSetup", Boolean.valueOf(notificationStackScrollLayout.mIsCurrentUserSetup));
                        DumpUtilsKt.println(indentingPrintWriter, "hideAmount", Float.valueOf(notificationStackScrollLayout.mAmbientState.mHideAmount));
                        DumpUtilsKt.println(indentingPrintWriter, "ambientStateSwipingUp", Boolean.valueOf(notificationStackScrollLayout.mAmbientState.mIsSwipingUp));
                        DumpUtilsKt.println(indentingPrintWriter, "maxDisplayedNotifications", Integer.valueOf(notificationStackScrollLayout.mMaxDisplayedNotifications));
                        DumpUtilsKt.println(indentingPrintWriter, "intrinsicContentHeight", Float.valueOf(notificationStackScrollLayout.mIntrinsicContentHeight));
                        DumpUtilsKt.println(indentingPrintWriter, "contentHeight", Integer.valueOf(notificationStackScrollLayout.mContentHeight));
                        DumpUtilsKt.println(indentingPrintWriter, "intrinsicPadding", Integer.valueOf(notificationStackScrollLayout.mIntrinsicPadding));
                        DumpUtilsKt.println(indentingPrintWriter, "topPadding", Integer.valueOf(notificationStackScrollLayout.mTopPadding));
                        DumpUtilsKt.println(indentingPrintWriter, "bottomPadding", Integer.valueOf(notificationStackScrollLayout.mBottomPadding));
                        indentingPrintWriter.println("NotificationStackSizeCalculator saveSpaceOnLockscreen=" + notificationStackScrollLayout.mNotificationStackSizeCalculator.saveSpaceOnLockscreen);
                        return;
                    default:
                        NotificationStackScrollLayout notificationStackScrollLayout2 = this.f$0;
                        PrintWriter printWriter2 = asIndenting;
                        String[] strArr2 = strArr;
                        int i22 = NotificationStackScrollLayout.$r8$clinit;
                        int childCount = notificationStackScrollLayout2.getChildCount();
                        printWriter2.println("Number of children: " + childCount);
                        printWriter2.println();
                        int i3 = 0;
                        for (int i4 = 0; i4 < childCount; i4++) {
                            ExpandableView childAtIndex = notificationStackScrollLayout2.getChildAtIndex(i4);
                            childAtIndex.dump(printWriter2, strArr2);
                            if (childAtIndex instanceof FooterView) {
                                DumpUtilsKt.withIncreasedIndent(printWriter2, new NotificationStackScrollLayout$$ExternalSyntheticLambda7(notificationStackScrollLayout2, printWriter2, i3));
                            }
                            printWriter2.println();
                        }
                        int transientViewCount = notificationStackScrollLayout2.getTransientViewCount();
                        printWriter2.println("Transient Views: " + transientViewCount);
                        while (i3 < transientViewCount) {
                            ((ExpandableView) notificationStackScrollLayout2.getTransientView(i3)).dump(printWriter2, strArr2);
                            i3++;
                        }
                        NotificationSwipeHelper notificationSwipeHelper = notificationStackScrollLayout2.mSwipeHelper;
                        if (notificationSwipeHelper.mIsSwiping) {
                            expandableView = notificationSwipeHelper.mTouchedView;
                        } else {
                            expandableView = null;
                        }
                        printWriter2.println("Swiped view: " + expandableView);
                        if (expandableView instanceof ExpandableView) {
                            expandableView.dump(printWriter2, strArr2);
                            return;
                        }
                        return;
                }
            }
        });
    }

    public final void endDrag() {
        setIsBeingDragged(false);
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        if (getCurrentOverScrollAmount(true) > 0.0f) {
            setOverScrollAmount(0.0f, true, true, true);
        }
        if (getCurrentOverScrollAmount(false) > 0.0f) {
            setOverScrollAmount(0.0f, false, true, true);
        }
    }

    public final void finalizeClearAllAnimation() {
        if (this.mAmbientState.mClearAllInProgress) {
            int i = 0;
            setClearAllInProgress(false);
            if (this.mShadeNeedsToClose) {
                this.mShadeNeedsToClose = false;
                if (this.mIsExpanded) {
                    postDelayed(new NotificationStackScrollLayout$$ExternalSyntheticLambda2(this, i), 0L);
                }
            }
        }
    }

    public final void fling(int i) {
        int i2;
        if (getChildCount() > 0) {
            float currentOverScrollAmount = getCurrentOverScrollAmount(true);
            int i3 = 0;
            float currentOverScrollAmount2 = getCurrentOverScrollAmount(false);
            if (i < 0 && currentOverScrollAmount > 0.0f) {
                setOwnScrollY(this.mOwnScrollY - ((int) currentOverScrollAmount));
                if (!this.mShouldUseSplitNotificationShade) {
                    if (!QpRune.QUICK_TABLET) {
                        this.mDontReportNextOverScroll = true;
                    }
                    setOverScrollAmount(0.0f, true, false, true);
                }
                this.mMaxOverScroll = (getRubberBandFactor(true) * (Math.abs(i) / 1000.0f) * this.mOverflingDistance) + currentOverScrollAmount;
            } else if (i > 0 && currentOverScrollAmount2 > 0.0f) {
                setOwnScrollY((int) (this.mOwnScrollY + currentOverScrollAmount2));
                setOverScrollAmount(0.0f, false, false, true);
                this.mMaxOverScroll = (getRubberBandFactor(false) * (Math.abs(i) / 1000.0f) * this.mOverflingDistance) + currentOverScrollAmount2;
            } else {
                this.mMaxOverScroll = 0.0f;
            }
            int max = Math.max(0, getScrollRange());
            if (this.mExpandedInThisMotion) {
                max = Math.min(max, this.mMaxScrollAfterExpand);
            }
            int i4 = max;
            OverScroller overScroller = this.mScroller;
            int i5 = ((ViewGroup) this).mScrollX;
            int i6 = this.mOwnScrollY;
            if (i > 0) {
                i2 = getScrollAmountToScrollBoundary();
            } else {
                i2 = 0;
            }
            if (!this.mExpandedInThisMotion || this.mOwnScrollY < 0) {
                i3 = 1073741823;
            }
            overScroller.fling(i5, i6, 1, i, 0, 0, i2, i4, 0, i3);
            if (i < 0 && this.mScroller.getFinalY() > 0 && this.mScroller.getFinalY() < getScrollAmountToScrollBoundary()) {
                this.mScroller.forceFinished(true);
                OverScroller overScroller2 = this.mScroller;
                int i7 = ((ViewGroup) this).mScrollX;
                int i8 = this.mOwnScrollY;
                overScroller2.startScroll(i7, i8, 0, -i8, 1050);
            }
            animateScroll();
        }
    }

    @Override // com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        PanelScreenShotLogger.INSTANCE.getClass();
        PanelScreenShotLogger.addHeaderLine("NotificationStackScrollLayout", arrayList);
        PanelScreenShotLogger.addLogItem(arrayList, "alpha", Float.valueOf(getAlpha()));
        PanelScreenShotLogger.addLogItem(arrayList, "mOwnScrollY", Integer.valueOf(this.mOwnScrollY));
        PanelScreenShotLogger.addLogItem(arrayList, "getHeight", Integer.valueOf(getHeight()));
        PanelScreenShotLogger.addLogItem(arrayList, "mTopPaddingOverflow", Float.valueOf(this.mTopPaddingOverflow));
        PanelScreenShotLogger.addLogItem(arrayList, "mCurrentStackHeight", Integer.valueOf(this.mCurrentStackHeight));
        PanelScreenShotLogger.addLogItem(arrayList, "mExpandedHeight", Float.valueOf(this.mExpandedHeight));
        PanelScreenShotLogger.addLogItem(arrayList, "getAppearStartPosition", Float.valueOf(getAppearStartPosition()));
        PanelScreenShotLogger.addLogItem(arrayList, "getAppearEndPosition", Float.valueOf(getAppearEndPosition()));
        PanelScreenShotLogger.addLogItem(arrayList, "mExtraTopInsetForFullShadeTransition", Float.valueOf(this.mExtraTopInsetForFullShadeTransition));
        PanelScreenShotLogger.addLogItem(arrayList, "mIntrinsicPadding", Integer.valueOf(this.mIntrinsicPadding));
        PanelScreenShotLogger.addLogItem(arrayList, "mShouldShowShelfOnly", Boolean.valueOf(this.mShouldShowShelfOnly));
        PanelScreenShotLogger.addLogItem(arrayList, "getVisibility", Integer.valueOf(getVisibility()));
        PanelScreenShotLogger.addLogItem(arrayList, "mLastGoneCallTrace", this.mLastGoneCallTrace);
        PanelScreenShotLogger.addLogItem(arrayList, "appIconColor", Integer.toHexString(getContext().getColor(com.android.systemui.R.color.notification_app_icon_color)));
        arrayList.add("\n\n");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ExpandableNotificationRow) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) childAt;
                ExpandableViewState expandableViewState = expandableNotificationRow.mViewState;
                PanelScreenShotLogger panelScreenShotLogger = PanelScreenShotLogger.INSTANCE;
                String str = expandableNotificationRow.mLoggingKey;
                panelScreenShotLogger.getClass();
                PanelScreenShotLogger.addLogItem(arrayList, "key", str);
                PanelScreenShotLogger.addLogItem(arrayList, "x", Float.valueOf(expandableNotificationRow.getX()));
                PanelScreenShotLogger.addLogItem(arrayList, "y", Float.valueOf(expandableNotificationRow.getY()));
                PanelScreenShotLogger.addLogItem(arrayList, "alpha", Float.valueOf(expandableNotificationRow.getAlpha()));
                PanelScreenShotLogger.addLogItem(arrayList, "visibility", Integer.valueOf(expandableNotificationRow.getVisibility()));
                PanelScreenShotLogger.addLogItem(arrayList, "intrinsicHeight", Integer.valueOf(expandableNotificationRow.getIntrinsicHeight()));
                PanelScreenShotLogger.addLogItem(arrayList, "clipTop", Integer.valueOf(expandableNotificationRow.mClipTopAmount));
                PanelScreenShotLogger.addLogItem(arrayList, "clipBottom", Integer.valueOf(expandableNotificationRow.mClipBottomAmount));
                PanelScreenShotLogger.addLogItem(arrayList, "removed", Boolean.FALSE);
                PanelScreenShotLogger.addLogItem(arrayList, "keepInParentForDismissAnimation", Boolean.valueOf(expandableNotificationRow.mKeepInParentForDismissAnimation));
                PanelScreenShotLogger.addLogItem(arrayList, "dismissed", Boolean.valueOf(expandableNotificationRow.mDismissed));
                if (expandableViewState != null) {
                    PanelScreenShotLogger.addLogItem(arrayList, GlsIntent.Extras.EXTRA_LOCATION, Integer.valueOf(expandableViewState.location));
                    PanelScreenShotLogger.addLogItem(arrayList, "inShelf", Boolean.valueOf(expandableViewState.inShelf));
                    PanelScreenShotLogger.addLogItem(arrayList, "hideSensitive", Boolean.valueOf(expandableViewState.hideSensitive));
                    PanelScreenShotLogger.addLogItem(arrayList, "gone", Boolean.valueOf(expandableViewState.gone));
                    PanelScreenShotLogger.addLogItem(arrayList, "dimmed", Boolean.valueOf(expandableViewState.dimmed));
                }
                arrayList.addAll(expandableNotificationRow.gatherState());
                arrayList.add("\n");
            }
            if (childAt instanceof NotificationShelf) {
                NotificationShelf notificationShelf = (NotificationShelf) childAt;
                PanelScreenShotLogger.INSTANCE.getClass();
                PanelScreenShotLogger.addLogItem(arrayList, "SHELF", "NOTIFICATION_SHELF");
                PanelScreenShotLogger.addLogItem(arrayList, "x", Float.valueOf(notificationShelf.getX()));
                PanelScreenShotLogger.addLogItem(arrayList, "y", Float.valueOf(notificationShelf.getY()));
                PanelScreenShotLogger.addLogItem(arrayList, "alpha", Float.valueOf(notificationShelf.getAlpha()));
                PanelScreenShotLogger.addLogItem(arrayList, "visibility", Integer.valueOf(notificationShelf.getVisibility()));
                PanelScreenShotLogger.addLogItem(arrayList, "intrinsicHeight", Integer.valueOf(notificationShelf.getHeight()));
            }
        }
        return arrayList;
    }

    public final void generateHeadsUpAnimation(ExpandableNotificationRow expandableNotificationRow, boolean z) {
        boolean z2;
        if (this.mAnimationsEnabled && (z || this.mHeadsUpGoingAwayAnimationsAllowed)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            if (!z && this.mHeadsUpChangeAnimations.remove(new Pair(expandableNotificationRow, Boolean.TRUE))) {
                logHunAnimationSkipped(expandableNotificationRow, "previous hun appear animation cancelled");
                return;
            }
            this.mHeadsUpChangeAnimations.add(new Pair(expandableNotificationRow, Boolean.valueOf(z)));
            this.mNeedsAnimation = true;
            if (!this.mIsExpanded && !this.mWillExpand && !z) {
                expandableNotificationRow.setHeadsUpAnimatingAway(true);
            }
            requestChildrenUpdate();
        }
    }

    public final float getAppearEndPosition() {
        int i;
        int i2 = this.mAmbientState.mStackTopMargin;
        int i3 = this.mController.mNotifStats.numActiveNotifs;
        boolean z = NotiRune.NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW;
        if (!z ? !(this.mEmptyShadeView.getVisibility() != 8 || i3 <= 0) : i3 != 0) {
            if (!isHeadsUpTransition() && (!this.mInHeadsUpPinnedMode || this.mAmbientState.mDozing)) {
                if (this.mShelf.getVisibility() != 8) {
                    i2 += this.mShelf.getHeight();
                }
            } else {
                if (this.mShelf.getVisibility() != 8 && i3 > 1) {
                    i2 += this.mShelf.getHeight() + this.mPaddingBetweenElements;
                }
                i2 += getPositionInLinearLayout(this.mAmbientState.getTrackedHeadsUpRow()) + getTopHeadsUpPinnedHeight();
            }
        } else if (!z && this.mEmptyShadeView.getVisibility() != 8) {
            i2 = this.mEmptyShadeView.getHeight();
        } else {
            i2 = 0;
        }
        if (onKeyguard()) {
            i = this.mTopPadding;
        } else {
            i = this.mIntrinsicPadding;
        }
        return i2 + i;
    }

    public final float getAppearStartPosition() {
        int i;
        if (isHeadsUpTransition()) {
            NotificationSection firstVisibleSection = getFirstVisibleSection();
            if (firstVisibleSection != null) {
                i = firstVisibleSection.mFirstVisibleChild.getPinnedHeadsUpHeight();
            } else {
                i = 0;
            }
            return (this.mHeadsUpInset - this.mAmbientState.mStackTopMargin) + i;
        }
        return getMinExpansionHeight();
    }

    public final ExpandableView getChildAtIndex(int i) {
        return (ExpandableView) getChildAt(i);
    }

    public final ExpandableView getChildAtPosition(float f, boolean z, boolean z2, float f2) {
        ExpandableNotificationRow expandableNotificationRow;
        float translationY;
        ExpandableNotificationRow expandableNotificationRow2;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            expandableNotificationRow = null;
            if (i >= childCount) {
                return null;
            }
            ExpandableView childAtIndex = getChildAtIndex(i);
            if (childAtIndex.getVisibility() == 0 && (!z2 || !(childAtIndex instanceof StackScrollerDecorView))) {
                translationY = childAtIndex.getTranslationY();
                float max = Math.max(0, childAtIndex.mClipTopAmount) + translationY;
                float f3 = (childAtIndex.mActualHeight + translationY) - childAtIndex.mClipBottomAmount;
                int width = getWidth();
                if ((f3 - max >= this.mMinInteractionHeight || !z) && f2 >= max && f2 <= f3 && f >= 0 && f <= width) {
                    if (childAtIndex instanceof ExpandableNotificationRow) {
                        expandableNotificationRow2 = (ExpandableNotificationRow) childAtIndex;
                        NotificationEntry notificationEntry = expandableNotificationRow2.mEntry;
                        if (this.mIsExpanded || !expandableNotificationRow2.mIsHeadsUp || !expandableNotificationRow2.mIsPinned) {
                            break;
                        }
                        NotificationEntry notificationEntry2 = this.mTopHeadsUpEntry;
                        if (notificationEntry2.row == expandableNotificationRow2 || ((GroupMembershipManagerImpl) this.mGroupMembershipManager).getGroupSummary(notificationEntry2) == notificationEntry) {
                            break;
                        }
                    } else {
                        return childAtIndex;
                    }
                }
            }
            i++;
        }
        float f4 = f2 - translationY;
        if (expandableNotificationRow2.mIsSummaryWithChildren && expandableNotificationRow2.mChildrenExpanded) {
            NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow2.mChildrenContainer;
            int size = ((ArrayList) notificationChildrenContainer.mAttachedChildren).size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                ExpandableNotificationRow expandableNotificationRow3 = (ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i2);
                float translationY2 = expandableNotificationRow3.getTranslationY();
                float max2 = Math.max(0, expandableNotificationRow3.mClipTopAmount) + translationY2;
                float f5 = translationY2 + expandableNotificationRow3.mActualHeight;
                if (f4 >= max2 && f4 <= f5) {
                    expandableNotificationRow = expandableNotificationRow3;
                    break;
                }
                i2++;
            }
            if (expandableNotificationRow != null) {
                return expandableNotificationRow;
            }
            return expandableNotificationRow2;
        }
        return expandableNotificationRow2;
    }

    public final ExpandableView getChildAtRawPosition(float f, float f2) {
        getLocationOnScreen(this.mTempInt2);
        int[] iArr = this.mTempInt2;
        return getChildAtPosition(f - iArr[0], true, true, f2 - iArr[1]);
    }

    public final List getChildrenWithBackground() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ExpandableView childAtIndex = getChildAtIndex(i);
            if (childAtIndex.getVisibility() != 8 && !(childAtIndex instanceof StackScrollerDecorView) && childAtIndex != this.mShelf) {
                arrayList.add(childAtIndex);
            }
        }
        return arrayList;
    }

    public final float getCurrentOverScrollAmount(boolean z) {
        AmbientState ambientState = this.mAmbientState;
        if (z) {
            return ambientState.mOverScrollTopAmount;
        }
        return ambientState.mOverScrollBottomAmount;
    }

    public final int getEmptyBottomMargin() {
        int i;
        if (this.mShouldUseSplitNotificationShade) {
            i = Math.max(this.mSplitShadeMinContentHeight, this.mContentHeight);
        } else {
            i = this.mContentHeight;
        }
        return Math.max(this.mMaxLayoutHeight - i, 0);
    }

    public final View getFirstChildBelowTranlsationY(float f) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8 && childAt.getTranslationY() >= f) {
                return childAt;
            }
        }
        return null;
    }

    public final ExpandableView getFirstChildNotGone() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8 && childAt != this.mShelf) {
                return (ExpandableView) childAt;
            }
        }
        return null;
    }

    public final ExpandableView getFirstChildWithBackground() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ExpandableView childAtIndex = getChildAtIndex(i);
            if (childAtIndex.getVisibility() != 8 && !(childAtIndex instanceof StackScrollerDecorView) && childAtIndex != this.mShelf) {
                return childAtIndex;
            }
        }
        return null;
    }

    public final NotificationSection getFirstVisibleSection() {
        for (NotificationSection notificationSection : this.mSections) {
            if (notificationSection.mFirstVisibleChild != null) {
                return notificationSection;
            }
        }
        return null;
    }

    public final int getImeInset() {
        return Math.max(0, this.mBottomInset - ((getRootView().getHeight() - getHeight()) - getLocationOnScreen()[1]));
    }

    public final NotificationSection getLastVisibleSection() {
        for (int length = this.mSections.length - 1; length >= 0; length--) {
            NotificationSection notificationSection = this.mSections[length];
            if (notificationSection.mLastVisibleChild != null) {
                return notificationSection;
            }
        }
        return null;
    }

    public final int getLayoutMinHeight() {
        if (isHeadsUpTransition()) {
            ExpandableNotificationRow trackedHeadsUpRow = this.mAmbientState.getTrackedHeadsUpRow();
            if (trackedHeadsUpRow.isAboveShelf()) {
                return getTopHeadsUpPinnedHeight() + ((int) MathUtils.lerp(0, getPositionInLinearLayout(trackedHeadsUpRow), this.mAmbientState.mAppearFraction));
            }
            return getTopHeadsUpPinnedHeight();
        }
        if (this.mShelf.getVisibility() == 8) {
            return 0;
        }
        return this.mShelf.getHeight();
    }

    public final int getMinExpansionHeight() {
        return this.mShelf.getHeight() + 0 + this.mWaterfallTopInset;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getPositionInLinearLayout(android.view.View r15) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.getPositionInLinearLayout(android.view.View):int");
    }

    public final float getRubberBandFactor(boolean z) {
        if (!z) {
            return RUBBER_BAND_FACTOR_NORMAL;
        }
        if (this.mExpandedInThisMotion) {
            return 0.15f;
        }
        if (!this.mIsExpansionChanging && !this.mPanelTracking) {
            if (!this.mScrolledToTopOnFirstDown || this.mShouldUseSplitNotificationShade) {
                return RUBBER_BAND_FACTOR_NORMAL;
            }
            return 1.0f;
        }
        return 0.21f;
    }

    public final int getScrollAmountToScrollBoundary() {
        if (this.mShouldUseSplitNotificationShade) {
            return this.mSidePaddings;
        }
        return this.mTopPadding - ((ShadeHeaderController) Dependency.get(ShadeHeaderController.class)).header.getHeight();
    }

    public final int getScrollRange() {
        int i = this.mContentHeight;
        if (!this.mIsExpanded && this.mInHeadsUpPinnedMode) {
            i = this.mHeadsUpInset + getTopHeadsUpPinnedHeight();
        }
        int max = Math.max(0, i - this.mMaxLayoutHeight);
        int imeInset = getImeInset();
        int min = Math.min(imeInset, Math.max(0, i - (getHeight() - imeInset))) + max;
        if (min > 0) {
            return Math.max(getScrollAmountToScrollBoundary(), min);
        }
        return min;
    }

    public final int getSpeedBumpIndex() {
        if (this.mSpeedBumpIndexDirty) {
            this.mSpeedBumpIndexDirty = false;
            int childCount = getChildCount();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() != 8 && (childAt instanceof ExpandableNotificationRow)) {
                    ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) childAt;
                    i2++;
                    boolean z = true;
                    if (this.mHighPriorityBeforeSpeedBump) {
                        if (expandableNotificationRow.mEntry.mBucket >= 9) {
                            z = false;
                        }
                    } else {
                        z = true ^ expandableNotificationRow.mEntry.isAmbient();
                    }
                    if (z) {
                        i = i2;
                    }
                }
            }
            this.mSpeedBumpIndex = i;
        }
        return this.mSpeedBumpIndex;
    }

    public final int getTopHeadsUpPinnedHeight() {
        NotificationEntry notificationEntry = this.mTopHeadsUpEntry;
        if (notificationEntry == null) {
            return 0;
        }
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        if (expandableNotificationRow.isChildInGroup()) {
            NotificationEntry groupSummary = ((GroupMembershipManagerImpl) this.mGroupMembershipManager).getGroupSummary(expandableNotificationRow.mEntry);
            if (groupSummary != null) {
                expandableNotificationRow = groupSummary.row;
            }
        }
        return expandableNotificationRow.getPinnedHeadsUpHeight(true);
    }

    public final float getTotalTranslationLength(View view) {
        if (!this.mDismissUsingRowTranslationX) {
            return view.getMeasuredWidth();
        }
        float measuredWidth = view.getMeasuredWidth();
        float measuredWidth2 = getMeasuredWidth();
        return (measuredWidth2 - ((measuredWidth2 - measuredWidth) / 2.0f)) + 0.0f;
    }

    public final float getTouchSlop(MotionEvent motionEvent) {
        if (motionEvent.getClassification() == 1) {
            return this.mTouchSlop * this.mSlopMultiplier;
        }
        return this.mTouchSlop;
    }

    public final void handleEmptySpaceClick(MotionEvent motionEvent) {
        boolean isBelowLastNotification = isBelowLastNotification(this.mInitialTouchY);
        int i = this.mStatusBarState;
        boolean z = this.mTouchIsClick;
        NotificationStackScrollLogger notificationStackScrollLogger = this.mLogger;
        if (notificationStackScrollLogger != null) {
            String actionToString = MotionEvent.actionToString(motionEvent.getActionMasked());
            LogLevel logLevel = LogLevel.DEBUG;
            NotificationStackScrollLogger$logEmptySpaceClick$2 notificationStackScrollLogger$logEmptySpaceClick$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLogger$logEmptySpaceClick$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LogMessage logMessage = (LogMessage) obj;
                    int int1 = logMessage.getInt1();
                    boolean bool1 = logMessage.getBool1();
                    boolean bool2 = logMessage.getBool2();
                    String str1 = logMessage.getStr1();
                    StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("handleEmptySpaceClick: statusBarState: ", int1, " isTouchAClick: ", bool1, " isTouchBelowNotification: ");
                    m.append(bool2);
                    m.append(" motionEvent: ");
                    m.append(str1);
                    return m.toString();
                }
            };
            LogBuffer logBuffer = notificationStackScrollLogger.buffer;
            LogMessage obtain = logBuffer.obtain("NotificationStackScroll", logLevel, notificationStackScrollLogger$logEmptySpaceClick$2, null);
            obtain.setInt1(i);
            obtain.setBool1(z);
            obtain.setBool2(isBelowLastNotification);
            obtain.setStr1(actionToString);
            logBuffer.commit(obtain);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                NotificationStackScrollLogger notificationStackScrollLogger2 = this.mLogger;
                if (notificationStackScrollLogger2 != null) {
                    LogBuffer.log$default(notificationStackScrollLogger2.buffer, "NotificationStackScroll", LogLevel.DEBUG, "handleEmptySpaceClick: MotionEvent ignored", null, 8, null);
                    return;
                }
                return;
            }
            float touchSlop = getTouchSlop(motionEvent);
            if (this.mTouchIsClick) {
                if (Math.abs(motionEvent.getY() - this.mInitialTouchY) > touchSlop || Math.abs(motionEvent.getX() - this.mInitialTouchX) > touchSlop) {
                    this.mTouchIsClick = false;
                    return;
                }
                return;
            }
            return;
        }
        if (!this.mStateAnimator.mAnimatorSet.isEmpty()) {
            Log.d("StackScroller", "onEmptySpaceClicked is ignored by notification Animating..");
            return;
        }
        if (this.mStatusBarState != 1 && this.mTouchIsClick && isBelowLastNotification(this.mInitialTouchY)) {
            NotificationStackScrollLogger notificationStackScrollLogger3 = this.mLogger;
            if (notificationStackScrollLogger3 != null) {
                LogBuffer.log$default(notificationStackScrollLogger3.buffer, "NotificationStackScroll", LogLevel.DEBUG, "handleEmptySpaceClick: touch event propagated further", null, 8, null);
            }
            this.mOnEmptySpaceClickListener.f$0.onEmptySpaceClick();
        }
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        if (!this.mForceNoOverlappingRendering && super.hasOverlappingRendering()) {
            return true;
        }
        return false;
    }

    public final void inflateEmptyShadeView() {
        int i;
        int i2;
        int i3;
        if (NotiRune.NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW) {
            return;
        }
        EmptyShadeView emptyShadeView = this.mEmptyShadeView;
        int i4 = 0;
        EmptyShadeView emptyShadeView2 = (EmptyShadeView) LayoutInflater.from(((ViewGroup) this).mContext).inflate(com.android.systemui.R.layout.status_bar_no_notifications, (ViewGroup) this, false);
        if (!NotiRune.NOTI_STYLE_EMPTY_SHADE) {
            emptyShadeView2.setOnClickListener(new NotificationStackScrollLayout$$ExternalSyntheticLambda0(this, i4));
        }
        View view = this.mEmptyShadeView;
        if (view != null) {
            i = indexOfChild(view);
            removeView(this.mEmptyShadeView);
        } else {
            i = -1;
        }
        this.mEmptyShadeView = emptyShadeView2;
        addView(emptyShadeView2, i);
        if (emptyShadeView == null) {
            i2 = com.android.systemui.R.string.empty_shade_text;
        } else {
            i2 = emptyShadeView.mText;
        }
        if (emptyShadeView == null) {
            i3 = 0;
        } else {
            i3 = emptyShadeView.mFooterText;
        }
        if (emptyShadeView != null) {
            i4 = emptyShadeView.mFooterIcon;
        }
        updateEmptyShadeView(i2, i3, i4);
    }

    public final void initView(Context context, NotificationSwipeHelper notificationSwipeHelper, NotificationStackSizeCalculator notificationStackSizeCalculator) {
        this.mScroller = new OverScroller(getContext());
        this.mSwipeHelper = notificationSwipeHelper;
        this.mNotificationStackSizeCalculator = notificationStackSizeCalculator;
        setDescendantFocusability(262144);
        setClipChildren(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mSlopMultiplier = viewConfiguration.getScaledAmbiguousGestureMultiplier();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mOverflingDistance = viewConfiguration.getScaledOverflingDistance();
        Resources resources = context.getResources();
        resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_section_divider_height);
        this.mStackScrollAlgorithm.initView(context);
        AmbientState ambientState = this.mAmbientState;
        ambientState.getClass();
        ambientState.mZDistanceBetweenElements = Math.max(1, context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.z_distance_between_notifications));
        this.mPaddingBetweenElements = Math.max(1, resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_divider_height));
        this.mMinTopOverScrollToEscape = resources.getDimensionPixelSize(com.android.systemui.R.dimen.min_top_overscroll_to_qs);
        this.mStatusBarHeight = SystemBarUtils.getStatusBarHeight(((ViewGroup) this).mContext);
        this.mBottomPadding = resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_panel_padding_bottom);
        this.mMinimumPaddings = resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_side_paddings);
        resources.getDimensionPixelOffset(com.android.systemui.R.dimen.qs_tile_margin_horizontal);
        resources.getBoolean(com.android.systemui.R.bool.config_skinnyNotifsInLandscape);
        this.mSidePaddings = this.mMinimumPaddings;
        this.mMinInteractionHeight = resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_min_interaction_height);
        this.mCornerRadius = resources.getDimensionPixelSize(com.android.systemui.R.dimen.notification_corner_radius);
        this.mHeadsUpInset = resources.getDimensionPixelSize(com.android.systemui.R.dimen.heads_up_status_bar_padding) + this.mStatusBarHeight;
        SystemBarUtils.getQuickQsOffsetHeight(((ViewGroup) this).mContext);
    }

    public final boolean isBelowLastNotification(float f) {
        boolean z;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            ExpandableView childAtIndex = getChildAtIndex(childCount);
            if (childAtIndex.getVisibility() != 8) {
                float y = childAtIndex.getY();
                if (y > f) {
                    return false;
                }
                if (f > (y + childAtIndex.mActualHeight) - childAtIndex.mClipBottomAmount) {
                    z = true;
                } else {
                    z = false;
                }
                if (childAtIndex == this.mEmptyShadeView) {
                    return true;
                }
                if (!z) {
                    return false;
                }
            }
        }
        if (f > this.mTopPadding + this.mStackTranslation) {
            return true;
        }
        return false;
    }

    public boolean isDimmed() {
        AmbientState ambientState = this.mAmbientState;
        if (ambientState.mDimmed && (!ambientState.isPulseExpanding() || ambientState.mDozeAmount != 1.0f)) {
            return true;
        }
        return false;
    }

    public final boolean isFullySwipedOut(ExpandableView expandableView) {
        if (Math.abs(expandableView.getTranslation()) >= Math.abs(getTotalTranslationLength(expandableView))) {
            return true;
        }
        return false;
    }

    public final boolean isHeadsUpTransition() {
        if (this.mAmbientState.getTrackedHeadsUpRow() != null) {
            return true;
        }
        return false;
    }

    public final boolean isRubberbanded(boolean z) {
        if (z && !this.mExpandedInThisMotion && !this.mIsExpansionChanging && !this.mPanelTracking && this.mScrolledToTopOnFirstDown) {
            return false;
        }
        return true;
    }

    public boolean isVisible(View view) {
        boolean clipBounds = view.getClipBounds(this.mTmpRect);
        if (view.getVisibility() == 0 && (!clipBounds || this.mTmpRect.height() > 0)) {
            return true;
        }
        return false;
    }

    public final void logHunAnimationSkipped(ExpandableNotificationRow expandableNotificationRow, String str) {
        NotificationStackScrollLogger notificationStackScrollLogger = this.mLogger;
        if (notificationStackScrollLogger == null) {
            return;
        }
        NotificationEntry notificationEntry = expandableNotificationRow.mEntry;
        LogLevel logLevel = LogLevel.INFO;
        NotificationStackScrollLogger$hunAnimationSkipped$2 notificationStackScrollLogger$hunAnimationSkipped$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLogger$hunAnimationSkipped$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("heads up animation skipped: key: ", logMessage.getStr1(), " reason: ", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = notificationStackScrollLogger.buffer;
        LogMessage obtain = logBuffer.obtain("NotificationStackScroll", logLevel, notificationStackScrollLogger$hunAnimationSkipped$2, null);
        obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
        obtain.setStr2(str);
        logBuffer.commit(obtain);
    }

    public final void notifyAppearChangedListeners() {
        float saturate;
        float f;
        if (this.mKeyguardBypassEnabled && onKeyguard()) {
            float f2 = this.mAmbientState.mPulseHeight;
            f = 0.0f;
            if (f2 == 100000.0f) {
                f2 = 0.0f;
            }
            saturate = MathUtils.smoothStep(0.0f, this.mIntrinsicPadding, f2);
            float f3 = this.mAmbientState.mPulseHeight;
            if (f3 != 100000.0f) {
                f = f3;
            }
        } else {
            saturate = MathUtils.saturate(calculateAppearFraction(this.mExpandedHeight));
            f = this.mExpandedHeight;
        }
        if (saturate != this.mLastSentAppear || f != this.mLastSentExpandedHeight) {
            this.mLastSentAppear = saturate;
            this.mLastSentExpandedHeight = f;
            for (int i = 0; i < this.mExpandedHeightListeners.size(); i++) {
                ((BiConsumer) this.mExpandedHeightListeners.get(i)).accept(Float.valueOf(f), Float.valueOf(saturate));
            }
        }
    }

    public final void notifyHeightChangeListener(ExpandableView expandableView, boolean z) {
        ExpandableView.OnHeightChangedListener onHeightChangedListener = this.mOnHeightChangedListener;
        if (onHeightChangedListener != null) {
            onHeightChangedListener.onHeightChanged(expandableView, z);
        }
    }

    public final void notifyOverscrollTopListener(float f, boolean z) {
        boolean z2;
        float f2;
        boolean z3;
        boolean z4;
        ExpandHelper expandHelper = this.mExpandHelper;
        boolean z5 = true;
        if (f > 1.0f) {
            z2 = true;
        } else {
            z2 = false;
        }
        expandHelper.mOnlyMovements = z2;
        if (this.mDontReportNextOverScroll) {
            this.mDontReportNextOverScroll = false;
            return;
        }
        QuickSettingsController.NsslOverscrollTopChangedListener nsslOverscrollTopChangedListener = this.mOverscrollTopChangedListener;
        if (nsslOverscrollTopChangedListener != null) {
            QuickSettingsController quickSettingsController = QuickSettingsController.this;
            if (!quickSettingsController.mSplitShadeEnabled && (quickSettingsController.mAmount != f || quickSettingsController.mIsRubberBanded != z)) {
                quickSettingsController.mAmount = f;
                quickSettingsController.mIsRubberBanded = z;
                ValueAnimator valueAnimator = quickSettingsController.mExpansionAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                if (!quickSettingsController.isExpansionEnabled()) {
                    f2 = 0.0f;
                } else {
                    f2 = f;
                }
                if (f2 < 1.0f) {
                    f2 = 0.0f;
                }
                if (f2 != 0.0f && z) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                quickSettingsController.mStackScrollerOverscrolling = z3;
                QS qs = quickSettingsController.mQs;
                if (qs != null) {
                    qs.setOverscrolling(z3);
                }
                if (f2 != 0.0f) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                quickSettingsController.mExpansionFromOverscroll = z4;
                quickSettingsController.mLastOverscroll = f2;
                quickSettingsController.updateQsState();
                quickSettingsController.setExpansionHeight(quickSettingsController.mMinExpansionHeight + f2);
            }
        }
        if (f < 1.0f) {
            f = 0.0f;
        }
        FullExpansionPanelNotiAlphaController fullExpansionPanelNotiAlphaController = (FullExpansionPanelNotiAlphaController) Dependency.get(FullExpansionPanelNotiAlphaController.class);
        if (f == 0.0f || !z) {
            z5 = false;
        }
        fullExpansionPanelNotiAlphaController.mStackScrollerOverscrolling = z5;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (!this.mAnimatedInsets) {
            this.mBottomInset = windowInsets.getInsets(WindowInsets.Type.ime()).bottom;
        }
        this.mWaterfallTopInset = 0;
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        if (displayCutout != null) {
            this.mWaterfallTopInset = displayCutout.getWaterfallInsets().top;
        }
        if (this.mAnimatedInsets && !this.mIsInsetAnimationRunning) {
            updateBottomInset(windowInsets);
        }
        if (!this.mAnimatedInsets) {
            if (this.mOwnScrollY > getScrollRange()) {
                removeCallbacks(this.mReclamp);
                postDelayed(this.mReclamp, 50L);
            } else {
                View view = this.mForcedScroll;
                if (view != null) {
                    scrollTo(view);
                }
            }
        }
        return windowInsets;
    }

    public final void onChildHeightChanged(ExpandableView expandableView, boolean z) {
        ExpandableNotificationRow expandableNotificationRow;
        ExpandableView expandableView2;
        boolean z2 = this.mAnimateStackYForContentHeightChange;
        if (z) {
            this.mAnimateStackYForContentHeightChange = true;
        }
        updateContentHeight();
        ExpandableView expandableView3 = null;
        if (this.mOwnScrollY > 0 && (expandableView instanceof ExpandableNotificationRow) && !onKeyguard()) {
            ExpandableNotificationRow expandableNotificationRow2 = (ExpandableNotificationRow) expandableView;
            if (expandableNotificationRow2.mUserLocked && expandableNotificationRow2 != getFirstChildNotGone() && !expandableNotificationRow2.mIsSummaryWithChildren) {
                float translationY = expandableNotificationRow2.getTranslationY() + expandableNotificationRow2.mActualHeight;
                if (expandableNotificationRow2.isChildInGroup()) {
                    translationY += expandableNotificationRow2.mNotificationParent.getTranslationY();
                }
                int i = this.mMaxLayoutHeight + ((int) this.mStackTranslation);
                NotificationSection lastVisibleSection = getLastVisibleSection();
                if (lastVisibleSection == null) {
                    expandableView2 = null;
                } else {
                    expandableView2 = lastVisibleSection.mLastVisibleChild;
                }
                if (expandableNotificationRow2 != expandableView2 && this.mShelf.getVisibility() != 8) {
                    i -= this.mShelf.getHeight() + this.mPaddingBetweenElements;
                }
                float f = i;
                if (translationY > f) {
                    setOwnScrollY((int) ((this.mOwnScrollY + translationY) - f));
                    this.mDisallowScrollingInThisMotion = true;
                }
            }
        }
        clampScrollPosition();
        notifyHeightChangeListener(expandableView, z);
        if (expandableView instanceof ExpandableNotificationRow) {
            expandableNotificationRow = (ExpandableNotificationRow) expandableView;
        } else {
            expandableNotificationRow = null;
        }
        NotificationSection firstVisibleSection = getFirstVisibleSection();
        if (firstVisibleSection != null) {
            expandableView3 = firstVisibleSection.mFirstVisibleChild;
        }
        if (expandableNotificationRow != null && (expandableNotificationRow == expandableView3 || expandableNotificationRow.mNotificationParent == expandableView3)) {
            updateAlgorithmLayoutMinHeight();
        }
        if (z && this.mAnimationsEnabled && (this.mIsExpanded || (expandableNotificationRow != null && expandableNotificationRow.mIsPinned))) {
            this.mNeedViewResizeAnimation = true;
            this.mNeedsAnimation = true;
        }
        requestChildrenUpdate();
        this.mAnimateStackYForContentHeightChange = z2;
    }

    public final void onClearAllAnimationsEnd(int i, List list) {
        InteractionJankMonitor.getInstance().end(62);
        NotificationStackScrollLayoutController$$ExternalSyntheticLambda3 notificationStackScrollLayoutController$$ExternalSyntheticLambda3 = this.mClearAllAnimationListener;
        if (notificationStackScrollLayoutController$$ExternalSyntheticLambda3 != null) {
            NotificationStackScrollLayoutController notificationStackScrollLayoutController = (NotificationStackScrollLayoutController) notificationStackScrollLayoutController$$ExternalSyntheticLambda3.f$0;
            NotifCollection notifCollection = notificationStackScrollLayoutController.mNotifCollection;
            if (i == 0) {
                notifCollection.dismissAllNotifications(((NotificationLockscreenUserManagerImpl) notificationStackScrollLayoutController.mLockscreenUserManager).mCurrentUserId, false);
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                NotificationEntry notificationEntry = ((ExpandableNotificationRow) it.next()).mEntry;
                arrayList.add(new Pair(notificationEntry, new DismissedByUserStats(3, 1, ((NotificationVisibilityProviderImpl) notificationStackScrollLayoutController.mVisibilityProvider).obtain(notificationEntry))));
            }
            notifCollection.dismissNotifications(arrayList);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Resources resources = getResources();
        updateSplitNotificationShade();
        this.mStatusBarHeight = SystemBarUtils.getStatusBarHeight(((ViewGroup) this).mContext);
        this.mSwipeHelper.mDensityScale = resources.getDisplayMetrics().density;
        this.mSwipeHelper.mPagingTouchSlop = ViewConfiguration.get(getContext()).getScaledPagingTouchSlop();
        initView(getContext(), this.mSwipeHelper, this.mNotificationStackSizeCalculator);
        int i = this.mOrientation;
        int i2 = configuration.orientation;
        if (i != i2) {
            this.mIsChangedOrientation = true;
            this.mOrientation = i2;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        boolean z2;
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        if (this.mShouldDrawNotificationBackground && NotiRune.NOTI_STYLE_TABLET_BG && this.mOpaqueBgHelper.needOpaqueBg()) {
            NotificationSection[] notificationSectionArr = this.mSections;
            int i6 = 1;
            if (notificationSectionArr[0].mCurrentBounds.top < notificationSectionArr[notificationSectionArr.length - 1].mCurrentBounds.bottom || this.mAmbientState.mDozing) {
                int i7 = this.mSidePaddings;
                int width = getWidth() - this.mSidePaddings;
                NotificationSection[] notificationSectionArr2 = this.mSections;
                int i8 = notificationSectionArr2[0].mCurrentBounds.top;
                int i9 = notificationSectionArr2[notificationSectionArr2.length - 1].mCurrentBounds.bottom;
                int width2 = getWidth() / 2;
                int i10 = this.mTopPadding;
                float f2 = 1.0f - this.mInterpolatedHideAmount;
                float interpolation = this.mHideXInterpolator.getInterpolation((1.0f - this.mLinearHideAmount) * this.mBackgroundXFactor);
                int lerp = (int) MathUtils.lerp(width2, i7, interpolation);
                int lerp2 = (int) MathUtils.lerp(width2, width, interpolation);
                int lerp3 = (int) MathUtils.lerp(i10, i8, f2);
                this.mBackgroundAnimationRect.set(lerp, lerp3, lerp2, (int) MathUtils.lerp(i10, i9, f2));
                int i11 = lerp3 - i8;
                NotificationSection[] notificationSectionArr3 = this.mSections;
                int length = notificationSectionArr3.length;
                int i12 = 0;
                while (true) {
                    if (i12 < length) {
                        NotificationSection notificationSection = notificationSectionArr3[i12];
                        if (notificationSection.mFirstVisibleChild != null && notificationSection.mBucket != 1) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            z = true;
                            break;
                        }
                        i12++;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (this.mKeyguardBypassEnabled && onKeyguard()) {
                    z2 = this.mAmbientState.isPulseExpanding();
                } else if (this.mAmbientState.mDozing && !z) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2) {
                    int i13 = this.mSections[0].mCurrentBounds.bottom + i11;
                    if (onKeyguard()) {
                        i13 = ((int) this.mShelf.getTranslationY()) + this.mShelf.getHeight();
                    }
                    NotificationSection[] notificationSectionArr4 = this.mSections;
                    int length2 = notificationSectionArr4.length;
                    int i14 = lerp;
                    int i15 = 0;
                    int i16 = lerp2;
                    boolean z4 = true;
                    while (i15 < length2) {
                        NotificationSection notificationSection2 = notificationSectionArr4[i15];
                        if (notificationSection2.mFirstVisibleChild != null && notificationSection2.mBucket != i6) {
                            i2 = i6;
                        } else {
                            i2 = 0;
                        }
                        if (i2 != 0 && !onKeyguard() && (!NotiRune.NOTI_STYLE_TABLET_BG || !this.mOpaqueBgHelper.needOpaqueBg())) {
                            Rect rect = notificationSection2.mCurrentBounds;
                            int i17 = rect.top + i11;
                            int min = Math.min(Math.max(lerp, rect.left), lerp2);
                            int max = Math.max(Math.min(lerp2, rect.right), min);
                            i3 = lerp;
                            i4 = lerp2;
                            i5 = 1;
                            if (i17 - i13 > 1 || ((i14 != min || i16 != max) && !z4)) {
                                float f3 = this.mCornerRadius;
                                canvas.drawRoundRect(i14, lerp3, i16, i13, f3, f3, this.mBackgroundPaint);
                                lerp3 = i17;
                            }
                            i13 = rect.bottom + i11;
                            i14 = min;
                            i16 = max;
                            z4 = false;
                        } else {
                            i3 = lerp;
                            i4 = lerp2;
                            i5 = i6;
                        }
                        i15++;
                        i6 = i5;
                        lerp = i3;
                        lerp2 = i4;
                    }
                    boolean z5 = NotiRune.NOTI_STYLE_TABLET_BG;
                    if (z5 && this.mOpaqueBgHelper.needOpaqueBg()) {
                        SecNsslOpaqueBgHelper secNsslOpaqueBgHelper = this.mOpaqueBgHelper;
                        if (z5) {
                            f = this.mRoundedRectClippingTop;
                        } else {
                            f = this.mAmbientState.mNotificationScrimTop;
                        }
                        float translationY = this.mShelf.getTranslationY();
                        int height = this.mShelf.getHeight();
                        float f4 = this.mExpandedHeight;
                        int width3 = getWidth();
                        float f5 = this.mQsExpansionFraction;
                        int i18 = this.mCornerRadius;
                        Paint paint = this.mBackgroundPaint;
                        secNsslOpaqueBgHelper.getClass();
                        if (translationY <= 0.0f) {
                            i = (int) f4;
                        } else {
                            i = ((int) translationY) + height;
                        }
                        float f6 = width3;
                        float f7 = i;
                        Path path = new Path();
                        float min2 = Math.min(1.0f, Math.max(0.0f, (f5 - 0.5f) / Math.max(0.0f, 0.15f)));
                        float f8 = i18;
                        float f9 = min2 * f8;
                        float f10 = f + f9;
                        path.moveTo(0.0f, f10);
                        path.quadTo(0.0f, f, f9 + 0.0f, f);
                        path.lineTo(f6 - f9, f);
                        path.quadTo(f6, f, f6, f10);
                        float f11 = f7 - f8;
                        path.lineTo(f6, f11);
                        path.quadTo(f6, f7, f6 - f8, f7);
                        path.lineTo(f8 + 0.0f, f7);
                        path.quadTo(0.0f, f7, 0.0f, f11);
                        path.lineTo(0.0f, f10);
                        canvas.drawPath(path, paint);
                    } else {
                        float f12 = this.mCornerRadius;
                        canvas.drawRoundRect(i14, lerp3, i16, i13, f12, f12, this.mBackgroundPaint);
                    }
                }
                updateClipping();
                return;
            }
        }
        if (this.mInHeadsUpPinnedMode || this.mHeadsUpAnimatingAway) {
            int i19 = this.mSidePaddings;
            int width4 = getWidth() - this.mSidePaddings;
            float height2 = getHeight();
            int childCount = getChildCount();
            float f13 = height2;
            float f14 = 0.0f;
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt = getChildAt(i20);
                if (childAt.getVisibility() != 8 && (childAt instanceof ExpandableNotificationRow)) {
                    ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) childAt;
                    if (expandableNotificationRow.mIsPinned || expandableNotificationRow.mHeadsupDisappearRunning) {
                        if (expandableNotificationRow.getTranslation() < 0.0f && expandableNotificationRow.mMenuRow.shouldShowGutsOnSnapOpen()) {
                            f13 = Math.min(f13, expandableNotificationRow.getTranslationY());
                            f14 = Math.max(f14, expandableNotificationRow.getTranslationY() + expandableNotificationRow.mActualHeight);
                        }
                    }
                }
            }
            if (f13 < f14) {
                float f15 = this.mCornerRadius;
                canvas.drawRoundRect(i19, f13, width4, f14, f15, f15, this.mBackgroundPaint);
            }
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        inflateEmptyShadeView();
        inflateFooterView();
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i = 0;
        if (!this.mScrollingEnabled || !this.mIsExpanded || this.mSwipeHelper.mIsSwiping || this.mExpandingNotification || this.mDisallowScrollingInThisMotion) {
            return false;
        }
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.mIsBeingDragged) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int verticalScrollFactor = (int) (axisValue * getVerticalScrollFactor());
                int scrollRange = getScrollRange();
                int i2 = this.mOwnScrollY;
                int i3 = i2 - verticalScrollFactor;
                if (i3 >= 0) {
                    if (i3 > scrollRange) {
                        i = scrollRange;
                    } else {
                        i = i3;
                    }
                }
                if (i != i2) {
                    setOwnScrollY(i);
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    public final void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setScrollable(this.mScrollable);
        accessibilityEvent.setMaxScrollX(((ViewGroup) this).mScrollX);
        accessibilityEvent.setScrollY(this.mOwnScrollY);
        accessibilityEvent.setMaxScrollY(getScrollRange());
    }

    public final void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (this.mScrollable) {
            accessibilityNodeInfo.setScrollable(true);
            if (this.mBackwardScrollable) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP);
            }
            if (this.mForwardScrollable) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN);
            }
        }
        accessibilityNodeInfo.setClassName(ScrollView.class.getName());
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        NotificationStackScrollLayoutController.TouchHandler touchHandler = this.mTouchHandler;
        if (touchHandler != null && touchHandler.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public final boolean onInterceptTouchEventScroll(MotionEvent motionEvent) {
        boolean z;
        if (!this.mScrollingEnabled) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 6) {
                            onSecondaryPointerUp(motionEvent);
                        }
                    }
                } else {
                    int i2 = this.mActivePointerId;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            Log.e("StackScroller", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            int x = (int) motionEvent.getX(findPointerIndex);
                            int abs = Math.abs(y - this.mLastMotionY);
                            int abs2 = Math.abs(x - this.mDownX);
                            if (abs > getTouchSlop(motionEvent) && abs > abs2) {
                                setIsBeingDragged(true);
                                this.mLastMotionY = y;
                                this.mDownX = x;
                                if (this.mVelocityTracker == null) {
                                    this.mVelocityTracker = VelocityTracker.obtain();
                                }
                                this.mVelocityTracker.addMovement(motionEvent);
                            }
                        }
                    }
                }
            }
            setIsBeingDragged(false);
            this.mActivePointerId = -1;
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
            if (this.mScroller.springBack(((ViewGroup) this).mScrollX, this.mOwnScrollY, 0, 0, 0, getScrollRange())) {
                animateScroll();
            }
        } else {
            int y2 = (int) motionEvent.getY();
            if (NotificationStackScrollLayout.this.mOwnScrollY == 0) {
                z = true;
            } else {
                z = false;
            }
            this.mScrolledToTopOnFirstDown = z;
            if (getChildAtPosition(motionEvent.getX(), false, false, y2) == null) {
                setIsBeingDragged(false);
                VelocityTracker velocityTracker2 = this.mVelocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.mVelocityTracker = null;
                }
            } else {
                this.mLastMotionY = y2;
                this.mDownX = (int) motionEvent.getX();
                this.mActivePointerId = motionEvent.getPointerId(0);
                VelocityTracker velocityTracker3 = this.mVelocityTracker;
                if (velocityTracker3 == null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                } else {
                    velocityTracker3.clear();
                }
                this.mVelocityTracker.addMovement(motionEvent);
                setIsBeingDragged(!this.mScroller.isFinished());
            }
        }
        return this.mIsBeingDragged;
    }

    public final boolean onKeyguard() {
        if (this.mStatusBarState == 1) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float width = getWidth() / 2.0f;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            float measuredWidth = r8.getMeasuredWidth() / 2.0f;
            getChildAt(i5).layout((int) (width - measuredWidth), 0, (int) (measuredWidth + width), r8.getMeasuredHeight());
        }
        this.mMaxLayoutHeight = getHeight();
        updateAlgorithmHeightAndPadding();
        updateContentHeight();
        clampScrollPosition();
        requestChildrenUpdate();
        updateFirstAndLastBackgroundViews();
        updateAlgorithmLayoutMinHeight();
        updateOwnTranslationZ();
        StackScrollAlgorithm stackScrollAlgorithm = this.mStackScrollAlgorithm;
        ViewGroup viewGroup = this.mQsHeader;
        if (viewGroup != null) {
            viewGroup.getHeight();
        }
        stackScrollAlgorithm.getClass();
        this.mAnimateStackYForContentHeightChange = false;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        Trace.beginSection("NotificationStackScrollLayout#onMeasure");
        super.onMeasure(i, i2);
        if (!((KeyguardFoldControllerImpl) this.mKeyguardFoldController).isUnlockOnFoldOpened() && ((!((KeyguardFoldControllerImpl) this.mKeyguardFoldController).isBouncerOnFoldOpened() || this.mJustBackFromOcclude) && !this.mController.mHasDelayedForceLayout)) {
            this.mJustBackFromOcclude = false;
            if (this.mForceLayoutFirstMeasure) {
                Log.d("StackScroller", "stackScroller forcelayout measure!");
                this.mForceLayoutFirstMeasure = false;
            }
            if (this.mIsVisibleFromGone) {
                this.mIsVisibleFromGone = false;
                Log.d("StackScroller", "visible from gone, fisrt measure!");
            }
            int size = View.MeasureSpec.getSize(i);
            SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            Context context = ((ViewGroup) this).mContext;
            secQSPanelResourcePicker.getClass();
            int notificationSidePadding = SecQSPanelResourcePicker.getNotificationSidePadding(context);
            this.mSidePaddings = notificationSidePadding;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - (notificationSidePadding * 2), View.MeasureSpec.getMode(i));
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 0);
            int i3 = this.mOnMeasureCount;
            if (i3 == 1) {
                this.mOnMeasureStartTime = System.currentTimeMillis();
            } else if (i3 >= 200) {
                this.mOnMeasureCount = 0;
                if (System.currentTimeMillis() - this.mOnMeasureStartTime < 5000) {
                    Log.d("StackScroller", "too many onMeasure for nssl");
                }
            }
            this.mOnMeasureCount++;
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                measureChild(getChildAt(i4), makeMeasureSpec, makeMeasureSpec2);
            }
            Trace.endSection();
            return;
        }
        if (!this.mForceLayoutFirstMeasure) {
            StringBuilder sb = new StringBuilder("stackScroller Skip measure flag on! by : ");
            sb.append(((KeyguardFoldControllerImpl) this.mKeyguardFoldController).isUnlockOnFoldOpened());
            sb.append(" : ");
            sb.append(((KeyguardFoldControllerImpl) this.mKeyguardFoldController).isBouncerOnFoldOpened());
            sb.append(" : ");
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, this.mController.mHasDelayedForceLayout, "StackScroller");
        }
        this.mForceLayoutFirstMeasure = true;
    }

    public final void onMediaPlayerScroll(MotionEvent motionEvent) {
        float overScrollUp;
        float f;
        boolean z;
        if (!this.mScrollingEnabled) {
            return;
        }
        this.mForcedScroll = null;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (this.mShouldMediaPlayerDraggingStarted) {
            if (getChildCount() != 0) {
                if (motionEvent.getY() < getHeight() - getEmptyBottomMargin()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    setIsBeingDragged(!this.mScroller.isFinished());
                    if (!this.mScroller.isFinished()) {
                        this.mScroller.forceFinished(true);
                    }
                    this.mLastMotionY = (int) motionEvent.getY();
                    this.mDownX = (int) motionEvent.getX();
                    this.mActivePointerId = motionEvent.getPointerId(0);
                    this.mShouldMediaPlayerDraggingStarted = false;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        int i = 3;
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked == 3) {
                    if (this.mIsBeingDragged && getChildCount() > 0) {
                        if (this.mScroller.springBack(((ViewGroup) this).mScrollX, this.mOwnScrollY, 0, 0, 0, getScrollRange())) {
                            animateScroll();
                        }
                        this.mActivePointerId = -1;
                        endDrag();
                    }
                    this.mShouldMediaPlayerDraggingStarted = false;
                    return;
                }
                return;
            }
            int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
            int pointerCount = motionEvent.getPointerCount();
            if (findPointerIndex >= 0 && pointerCount > findPointerIndex) {
                int y = (int) motionEvent.getY(findPointerIndex);
                int x = (int) motionEvent.getX(findPointerIndex);
                int i2 = this.mLastMotionY - y;
                int abs = Math.abs(x - this.mDownX);
                int abs2 = Math.abs(i2);
                float touchSlop = getTouchSlop(motionEvent);
                if (!this.mIsBeingDragged && abs2 > touchSlop && abs2 > abs) {
                    setIsBeingDragged(true);
                    float f2 = i2;
                    if (i2 > 0) {
                        f = f2 - touchSlop;
                    } else {
                        f = f2 + touchSlop;
                    }
                    i2 = (int) f;
                }
                if (this.mIsBeingDragged) {
                    this.mLastMotionY = y;
                    int scrollRange = getScrollRange();
                    if (this.mExpandedInThisMotion) {
                        scrollRange = Math.min(scrollRange, this.mMaxScrollAfterExpand);
                    }
                    if (i2 < 0) {
                        overScrollUp = overScrollDown(i2);
                    } else {
                        overScrollUp = overScrollUp(i2, scrollRange);
                    }
                    if (overScrollUp != 0.0f) {
                        customOverScrollBy((int) overScrollUp, this.mOwnScrollY, scrollRange, getHeight() / 2);
                        this.mController.checkSnoozeLeavebehind();
                        return;
                    }
                    return;
                }
                return;
            }
            Log.e("StackScroller", "Invalid pointerId=" + this.mActivePointerId + " in onMediaPlayerScroll");
            return;
        }
        if (this.mIsBeingDragged) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int yVelocity = (int) velocityTracker.getYVelocity(this.mActivePointerId);
            if (shouldOverScrollFling(yVelocity)) {
                onOverScrollFling(yVelocity, true);
            } else if (getChildCount() > 0) {
                if (Math.abs(yVelocity) > this.mMinimumVelocity) {
                    if (getCurrentOverScrollAmount(true) != 0.0f && yVelocity <= 0) {
                        onOverScrollFling(yVelocity, false);
                    } else {
                        this.mFlingAfterUpEvent = true;
                        this.mFinishScrollingCallback = new NotificationStackScrollLayout$$ExternalSyntheticLambda2(this, i);
                        fling(-yVelocity);
                    }
                } else if (this.mScroller.springBack(((ViewGroup) this).mScrollX, this.mOwnScrollY, 0, 0, 0, getScrollRange())) {
                    animateScroll();
                } else if (this.mOwnScrollY > 0) {
                    int scrollAmountToScrollBoundary = getScrollAmountToScrollBoundary();
                    int i3 = this.mOwnScrollY;
                    if (scrollAmountToScrollBoundary > i3) {
                        this.mScroller.startScroll(((ViewGroup) this).mScrollX, i3, 0, -i3, 1050);
                        animateScroll();
                    }
                }
            }
            this.mActivePointerId = -1;
            endDrag();
            this.mShouldMediaPlayerDraggingStarted = false;
        }
    }

    public final void onOverScrollFling(int i, boolean z) {
        boolean z2;
        int i2;
        QuickSettingsController.NsslOverscrollTopChangedListener nsslOverscrollTopChangedListener = this.mOverscrollTopChangedListener;
        if (nsslOverscrollTopChangedListener != null) {
            float f = i;
            QuickSettingsController quickSettingsController = QuickSettingsController.this;
            float f2 = quickSettingsController.mInitialTouchX;
            boolean z3 = quickSettingsController.mSplitShadeEnabled;
            FrameLayout frameLayout = quickSettingsController.mQsFrame;
            if ((z3 && f2 < frameLayout.getX()) || f2 > frameLayout.getX() + frameLayout.getWidth()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                quickSettingsController.mLastOverscroll = 0.0f;
                quickSettingsController.mExpansionFromOverscroll = false;
                if (z) {
                    quickSettingsController.mStackScrollerOverscrolling = false;
                    QS qs = quickSettingsController.mQs;
                    if (qs != null) {
                        qs.setOverscrolling(false);
                    }
                }
                quickSettingsController.setExpansionHeight(quickSettingsController.mExpansionHeight);
                boolean isExpansionEnabled = quickSettingsController.isExpansionEnabled();
                if (!isExpansionEnabled && z) {
                    f = 0.0f;
                }
                if (z && isExpansionEnabled) {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                quickSettingsController.flingQs(f, i2, new QuickSettingsController$$ExternalSyntheticLambda5(nsslOverscrollTopChangedListener, 6), false);
            }
        }
        this.mDontReportNextOverScroll = true;
        setOverScrollAmount(0.0f, true, false, true);
    }

    public final boolean onScrollTouch(MotionEvent motionEvent) {
        boolean z;
        float overScrollUp;
        float f;
        if (!this.mScrollingEnabled) {
            return false;
        }
        this.mQsHeader.getBoundsOnScreen(this.mQsHeaderBound);
        this.mQsHeaderBound.offsetTo(Math.round((motionEvent.getRawX() - motionEvent.getX()) + this.mQsHeader.getLeft()), Math.round(motionEvent.getRawY() - motionEvent.getY()));
        if (this.mQsHeaderBound.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY()) && !this.mIsBeingDragged) {
            return false;
        }
        this.mForcedScroll = null;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (motionEvent.findPointerIndex(this.mActivePointerId) == -1 && actionMasked != 0) {
            Log.e("StackScroller", "Invalid pointerId=" + this.mActivePointerId + " in onTouchEvent " + MotionEvent.actionToString(motionEvent.getActionMasked()));
            return true;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                onSecondaryPointerUp(motionEvent);
                                this.mLastMotionY = (int) motionEvent.getY(motionEvent.findPointerIndex(this.mActivePointerId));
                                this.mDownX = (int) motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                            }
                        } else {
                            int actionIndex = motionEvent.getActionIndex();
                            this.mLastMotionY = (int) motionEvent.getY(actionIndex);
                            this.mDownX = (int) motionEvent.getX(actionIndex);
                            this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                        }
                    } else if (this.mIsBeingDragged && getChildCount() > 0) {
                        if (this.mScroller.springBack(((ViewGroup) this).mScrollX, this.mOwnScrollY, 0, 0, 0, getScrollRange())) {
                            animateScroll();
                        }
                        this.mActivePointerId = -1;
                        endDrag();
                    }
                } else {
                    int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (findPointerIndex == -1) {
                        Log.e("StackScroller", "Invalid pointerId=" + this.mActivePointerId + " in onTouchEvent");
                    } else {
                        int y = (int) motionEvent.getY(findPointerIndex);
                        int x = (int) motionEvent.getX(findPointerIndex);
                        int i = this.mLastMotionY - y;
                        int abs = Math.abs(x - this.mDownX);
                        int abs2 = Math.abs(i);
                        float touchSlop = getTouchSlop(motionEvent);
                        if (!this.mIsBeingDragged && abs2 > touchSlop && abs2 > abs) {
                            setIsBeingDragged(true);
                            float f2 = i;
                            if (i > 0) {
                                f = f2 - touchSlop;
                            } else {
                                f = f2 + touchSlop;
                            }
                            i = (int) f;
                        }
                        if (this.mIsBeingDragged) {
                            this.mLastMotionY = y;
                            int scrollRange = getScrollRange();
                            if (this.mExpandedInThisMotion) {
                                scrollRange = Math.min(scrollRange, this.mMaxScrollAfterExpand);
                            }
                            if (i < 0) {
                                overScrollUp = overScrollDown(i);
                            } else {
                                overScrollUp = overScrollUp(i, scrollRange);
                            }
                            if (overScrollUp != 0.0f) {
                                customOverScrollBy((int) overScrollUp, this.mOwnScrollY, scrollRange, getHeight() / 2);
                                this.mController.checkSnoozeLeavebehind();
                            }
                        }
                    }
                }
            } else if (this.mIsBeingDragged) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                int yVelocity = (int) velocityTracker.getYVelocity(this.mActivePointerId);
                if (shouldOverScrollFling(yVelocity)) {
                    onOverScrollFling(yVelocity, true);
                } else if (getChildCount() > 0) {
                    if (Math.abs(yVelocity) > this.mMinimumVelocity) {
                        if (getCurrentOverScrollAmount(true) != 0.0f && yVelocity <= 0) {
                            onOverScrollFling(yVelocity, false);
                        } else {
                            this.mFlingAfterUpEvent = true;
                            this.mFinishScrollingCallback = new NotificationStackScrollLayout$$ExternalSyntheticLambda2(this, 4);
                            fling(-yVelocity);
                        }
                    } else if (this.mScroller.springBack(((ViewGroup) this).mScrollX, this.mOwnScrollY, 0, 0, 0, getScrollRange())) {
                        animateScroll();
                    } else if (this.mOwnScrollY > 0) {
                        int scrollAmountToScrollBoundary = getScrollAmountToScrollBoundary();
                        int i2 = this.mOwnScrollY;
                        if (scrollAmountToScrollBoundary > i2) {
                            this.mScroller.startScroll(((ViewGroup) this).mScrollX, i2, 0, -i2, 1050);
                            animateScroll();
                        }
                    }
                }
                this.mActivePointerId = -1;
                endDrag();
            }
        } else {
            if (getChildCount() != 0) {
                if (motionEvent.getY() < getHeight() - getEmptyBottomMargin()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    setIsBeingDragged(!this.mScroller.isFinished());
                    if (!this.mScroller.isFinished()) {
                        this.mScroller.forceFinished(true);
                    }
                    this.mLastMotionY = (int) motionEvent.getY();
                    this.mDownX = (int) motionEvent.getX();
                    this.mActivePointerId = motionEvent.getPointerId(0);
                }
            }
            return false;
        }
        return true;
    }

    public final void onSecondaryPointerUp(MotionEvent motionEvent) {
        int i;
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            if (action == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.mLastMotionY = (int) motionEvent.getY(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        NotificationStackScrollLayoutController.TouchHandler touchHandler = this.mTouchHandler;
        if (touchHandler != null && touchHandler.onTouchEvent(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof ExpandableView) {
            onViewAddedInternal((ExpandableView) view);
        }
    }

    public final void onViewAddedInternal(ExpandableView expandableView) {
        boolean z;
        expandableView.setHideSensitiveForIntrinsicHeight(this.mAmbientState.mHideSensitive);
        expandableView.mOnHeightChangedListener = this.mOnChildHeightChangedListener;
        boolean z2 = expandableView instanceof ExpandableNotificationRow;
        boolean z3 = true;
        if (this.mIsExpanded && this.mAnimationsEnabled && !this.mChangePositionInProgress && !this.mAmbientState.isFullyHidden()) {
            this.mChildrenToAddAnimated.add(expandableView);
            this.mNeedsAnimation = true;
        }
        if (z2) {
            z = ((ExpandableNotificationRow) expandableView).mIsHeadsUp;
        } else {
            z = false;
        }
        if (z && this.mAnimationsEnabled && !this.mChangePositionInProgress && !this.mAmbientState.isFullyHidden()) {
            this.mAddedHeadsUpChildren.add(expandableView);
            this.mChildrenToAddAnimated.remove(expandableView);
        }
        if ((!this.mAnimationsEnabled && !this.mPulsing) || (!this.mIsExpanded && !isPinnedHeadsUp(expandableView))) {
            z3 = false;
        }
        if (z2) {
            ((ExpandableNotificationRow) expandableView).setAnimationRunning(z3);
        }
        if (z2) {
            ((ExpandableNotificationRow) expandableView).setChronometerRunning(this.mIsExpanded);
        }
        if (z2) {
            ((ExpandableNotificationRow) expandableView).setDismissUsingRowTranslationX(this.mDismissUsingRowTranslationX);
        }
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ExpandableView expandableView = (ExpandableView) view;
        if (!this.mChildTransferInProgress) {
            onViewRemovedInternal(expandableView, this);
        }
        FeatureFlags featureFlags = this.mAmbientState.mFeatureFlags;
        Flags flags = Flags.INSTANCE;
        featureFlags.getClass();
        if (this.mOnNotificationRemovedListener != null) {
            expandableView.requestRoundnessReset(NotificationShelf.SHELF_SCROLL);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onViewRemovedInternal(com.android.systemui.statusbar.notification.row.ExpandableView r9, android.view.ViewGroup r10) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.onViewRemovedInternal(com.android.systemui.statusbar.notification.row.ExpandableView, android.view.ViewGroup):void");
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            cancelLongPress();
        }
    }

    public final float overScrollDown(int i) {
        int min = Math.min(i, 0);
        float currentOverScrollAmount = getCurrentOverScrollAmount(false);
        float f = min + currentOverScrollAmount;
        if (currentOverScrollAmount > 0.0f) {
            setOverScrollAmount(f, false, false, true);
        }
        if (f >= 0.0f) {
            f = 0.0f;
        }
        float f2 = this.mOwnScrollY + f;
        if (f2 < 0.0f) {
            setOverScrollAmount(getRubberBandFactor(true) * (this.mOverScrolledTopPixels - f2), true, false, true);
            setOwnScrollY(0);
            return 0.0f;
        }
        return f;
    }

    public final float overScrollUp(int i, int i2) {
        float f;
        int max = Math.max(i, 0);
        float currentOverScrollAmount = getCurrentOverScrollAmount(true);
        float f2 = currentOverScrollAmount - max;
        if (currentOverScrollAmount > 0.0f) {
            setOverScrollAmount(f2, true, false, true);
        }
        if (f2 < 0.0f) {
            f = -f2;
        } else {
            f = 0.0f;
        }
        float f3 = this.mOwnScrollY + f;
        float f4 = i2;
        if (f3 > f4) {
            if (!this.mExpandedInThisMotion) {
                setOverScrollAmount(getRubberBandFactor(false) * ((this.mOverScrolledBottomPixels + f3) - f4), false, false, true);
            }
            setOwnScrollY(i2);
            return 0.0f;
        }
        return f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        if (r5 != 16908346) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean performAccessibilityActionInternal(int r5, android.os.Bundle r6) {
        /*
            r4 = this;
            boolean r6 = super.performAccessibilityActionInternal(r5, r6)
            r0 = 1
            if (r6 == 0) goto L8
            return r0
        L8:
            boolean r6 = r4.isEnabled()
            r1 = 0
            if (r6 != 0) goto L10
            return r1
        L10:
            r6 = 4096(0x1000, float:5.74E-42)
            if (r5 == r6) goto L25
            r6 = 8192(0x2000, float:1.14794E-41)
            if (r5 == r6) goto L23
            r6 = 16908344(0x1020038, float:2.3877386E-38)
            if (r5 == r6) goto L23
            r6 = 16908346(0x102003a, float:2.3877392E-38)
            if (r5 == r6) goto L25
            goto L5a
        L23:
            r5 = -1
            goto L26
        L25:
            r5 = r0
        L26:
            int r6 = r4.getHeight()
            int r2 = r4.mPaddingBottom
            int r6 = r6 - r2
            int r2 = r4.mTopPadding
            int r6 = r6 - r2
            int r2 = r4.mPaddingTop
            int r6 = r6 - r2
            com.android.systemui.statusbar.NotificationShelf r2 = r4.mShelf
            int r2 = r2.getHeight()
            int r6 = r6 - r2
            int r2 = r4.mOwnScrollY
            int r5 = r5 * r6
            int r5 = r5 + r2
            int r6 = r4.getScrollRange()
            int r5 = java.lang.Math.min(r5, r6)
            int r5 = java.lang.Math.max(r1, r5)
            int r6 = r4.mOwnScrollY
            if (r5 == r6) goto L5a
            android.widget.OverScroller r2 = r4.mScroller
            int r3 = r4.mScrollX
            int r5 = r5 - r6
            r2.startScroll(r3, r6, r1, r5)
            r4.animateScroll()
            return r0
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.performAccessibilityActionInternal(int, android.os.Bundle):boolean");
    }

    public final void requestChildrenUpdate() {
        boolean z;
        int i;
        if (this.mAnimateNextTopPaddingChange) {
            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("requestChildrenUpdate : after mAnimateNextTopPaddingChange :  "), this.mChildrenUpdateRequested, "StackScroller");
        }
        if (!this.mChildrenUpdateRequested) {
            if (this.mPanelExpansionStateNotifier.mModel.panelOpenState == 2) {
                z = true;
            } else {
                z = false;
            }
            if (!z || (i = this.mDisplayState) == 4 || i == 3 || getVisibility() == 8) {
                int i2 = this.mChildrenUpdateCount;
                if (i2 == 1) {
                    this.mChildrenUpdateStartTime = System.currentTimeMillis();
                } else if (i2 >= 300) {
                    this.mChildrenUpdateCount = 0;
                    if (System.currentTimeMillis() - this.mChildrenUpdateStartTime < 5000) {
                        Log.d("StackScroller", "too many onPreDraw for nssl by trace : " + Log.getStackTraceString(new Throwable()));
                    }
                }
                this.mChildrenUpdateCount++;
            }
            getViewTreeObserver().addOnPreDrawListener(this.mChildrenUpdater);
            this.mChildrenUpdateRequested = true;
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            cancelLongPress();
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        Trace.instant(4096L, "NotificationStackScrollLayout#requestLayout");
        super.requestLayout();
    }

    public final void resetAllSwipeState() {
        Trace.beginSection("NSSL.resetAllSwipeState()");
        this.mSwipeHelper.resetSwipeStates(true);
        for (int i = 0; i < getChildCount(); i++) {
            NotificationSwipeHelper notificationSwipeHelper = this.mSwipeHelper;
            View childAt = getChildAt(i);
            notificationSwipeHelper.getClass();
            if (childAt.getTranslationX() != 0.0f) {
                notificationSwipeHelper.setTranslation(childAt, 0.0f);
                notificationSwipeHelper.updateSwipeProgressFromOffset(childAt, 0.0f, true);
            }
        }
        updateContinuousShadowDrawing();
        Trace.endSection();
    }

    public final void resetScrollPosition() {
        this.mScroller.abortAnimation();
        setOwnScrollY(0);
        if (getCurrentOverScrollAmount(true) > 0.0f) {
            setOverScrollAmount(0.0f, true, false, true);
        }
        if (getCurrentOverScrollAmount(false) > 0.0f) {
            setOverScrollAmount(0.0f, false, false, true);
        }
    }

    public final int scrollAmountForKeyboardFocus(int i, boolean z) {
        if (z) {
            View childAt = getChildAt(i + 1);
            if ((childAt instanceof ExpandableNotificationRow) && childAt.getY() + childAt.getHeight() > this.mShelf.getY()) {
                return ((ExpandableNotificationRow) childAt).mActualHeight + this.mPaddingBetweenElements;
            }
        }
        return 0;
    }

    public final boolean scrollTo(View view) {
        ExpandableView expandableView = (ExpandableView) view;
        int positionInLinearLayout = getPositionInLinearLayout(view);
        int targetScrollForView = targetScrollForView(expandableView, positionInLinearLayout);
        int intrinsicHeight = expandableView.getIntrinsicHeight() + positionInLinearLayout;
        int i = this.mOwnScrollY;
        if (i >= targetScrollForView && intrinsicHeight >= i) {
            return false;
        }
        this.mScroller.startScroll(((ViewGroup) this).mScrollX, i, 0, targetScrollForView - i);
        this.mDontReportNextOverScroll = true;
        animateScroll();
        return true;
    }

    @Override // android.view.View
    public final void setAlpha(float f) {
        super.setAlpha(f);
    }

    public void setAnimatedInsetsEnabled(boolean z) {
        this.mAnimatedInsets = z;
    }

    public final void setAnimationRunning(boolean z) {
        if (z != this.mAnimationRunning) {
            if (z) {
                getViewTreeObserver().addOnPreDrawListener(this.mRunningAnimationUpdater);
            } else {
                getViewTreeObserver().removeOnPreDrawListener(this.mRunningAnimationUpdater);
            }
            this.mAnimationRunning = z;
            updateContinuousShadowDrawing();
        }
    }

    public void setClearAllInProgress(boolean z) {
        this.mClearAllInProgress = z;
        this.mAmbientState.mClearAllInProgress = z;
        this.mController.mNotificationRoundnessManager.mIsClearAllInProgress = z;
    }

    public final void setDimmed(boolean z, boolean z2) {
        boolean onKeyguard = z & onKeyguard();
        this.mAmbientState.mDimmed = onKeyguard;
        float f = 1.0f;
        if (z2 && this.mAnimationsEnabled) {
            this.mDimmedNeedsAnimation = true;
            this.mNeedsAnimation = true;
            ValueAnimator valueAnimator = this.mDimAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (!onKeyguard) {
                f = 0.0f;
            }
            float f2 = this.mDimAmount;
            if (f != f2) {
                ValueAnimator ofFloat = TimeAnimator.ofFloat(f2, f);
                this.mDimAnimator = ofFloat;
                ofFloat.setDuration(220L);
                this.mDimAnimator.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
                this.mDimAnimator.addListener(this.mDimEndListener);
                this.mDimAnimator.addUpdateListener(this.mDimUpdateListener);
                this.mDimAnimator.start();
            }
        } else {
            if (!onKeyguard) {
                f = 0.0f;
            }
            this.mDimAmount = f;
            updateBackgroundDimming();
        }
        requestChildrenUpdate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0190, code lost:
    
        if (r1 != false) goto L79;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setExpandedHeight(float r13) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.setExpandedHeight(float):void");
    }

    public void setIsBeingDragged(boolean z) {
        this.mIsBeingDragged = z;
        if (z) {
            requestDisallowInterceptTouchEvent(true);
            cancelLongPress();
            this.mSwipeHelper.resetExposedMenuView(true, true);
        }
    }

    public void setIsExpanded(boolean z) {
        boolean z2;
        if (z != this.mIsExpanded) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mIsExpanded = z;
        this.mStackScrollAlgorithm.mIsExpanded = z;
        this.mAmbientState.mShadeExpanded = z;
        this.mStateAnimator.mShadeExpanded = z;
        NotificationSwipeHelper notificationSwipeHelper = this.mSwipeHelper;
        notificationSwipeHelper.mIsExpanded = z;
        if (!this.mInHeadsUpPinnedMode && !z) {
            ExpandableView expandableView = notificationSwipeHelper.mTouchedView;
            if (expandableView != null) {
                notificationSwipeHelper.snapChild(expandableView, 0.0f, 0.0f);
            }
            if (z2 && !this.mChildrenToAddAnimated.isEmpty()) {
                this.mChildrenToAddAnimated.clear();
                Log.d("StackScroller", " mChildrenToAddAnimated will be cleared.. ");
            }
        }
        if (z2) {
            this.mWillExpand = false;
            if (!this.mIsExpanded) {
                ((GroupExpansionManagerImpl) this.mGroupExpansionManager).collapseGroups();
                ExpandHelper expandHelper = this.mExpandHelper;
                expandHelper.finishExpanding(0.0f, true, false);
                expandHelper.mResizedView = null;
                expandHelper.mSGD = new ScaleGestureDetector(expandHelper.mContext, expandHelper.mScaleGestureListener);
                if (!this.mIsExpansionChanging) {
                    resetAllSwipeState();
                }
                finalizeClearAllAnimation();
            }
            updateNotificationAnimationStates();
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof ExpandableNotificationRow) {
                    ((ExpandableNotificationRow) childAt).setChronometerRunning(this.mIsExpanded);
                }
            }
            requestChildrenUpdate();
            updateUseRoundedRectClipping();
            updateDismissBehavior();
        }
    }

    public final void setOverScrollAmount(float f, boolean z, boolean z2, boolean z3) {
        setOverScrollAmount(f, z, z2, z3, isRubberbanded(z));
    }

    public void setOwnScrollY(int i) {
        setOwnScrollY(i, false);
    }

    @Override // android.view.View
    public final void setPivotX(float f) {
        if (((NotificationIconTransitionController) Dependency.get(NotificationIconTransitionController.class)).misTransformAnimating) {
            return;
        }
        super.setPivotX(f);
    }

    @Override // android.view.View
    public final void setPivotY(float f) {
        if (((NotificationIconTransitionController) Dependency.get(NotificationIconTransitionController.class)).misTransformAnimating) {
            return;
        }
        super.setPivotY(f);
    }

    public final float setPulseHeight(float f) {
        float max;
        AmbientState ambientState = this.mAmbientState;
        if (f != ambientState.mPulseHeight) {
            ambientState.mPulseHeight = f;
            Runnable runnable = ambientState.mOnPulseHeightChangedListener;
            if (runnable != null) {
                runnable.run();
            }
        }
        if (this.mKeyguardBypassEnabled) {
            notifyAppearChangedListeners();
            max = Math.max(0.0f, f - this.mIntrinsicPadding);
        } else {
            max = Math.max(0.0f, f - this.mAmbientState.getInnerHeight$1());
        }
        requestChildrenUpdate();
        return max;
    }

    public void setStatusBarState(int i) {
        this.mStatusBarState = i;
        AmbientState ambientState = this.mAmbientState;
        if (ambientState.mStatusBarState != 1) {
            ambientState.mIsFlingRequiredAfterLockScreenSwipeUp = false;
        }
        ambientState.mStatusBarState = i;
        this.mSpeedBumpIndexDirty = true;
        updateDismissBehavior();
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        if (getVisibility() != 8 && i == 8) {
            this.mLastGoneCallTrace = Log.getStackTraceString(new Throwable());
        }
        if (getVisibility() == 8 && i == 0) {
            this.mIsVisibleFromGone = true;
        }
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    public final boolean shouldOverScrollFling(int i) {
        float currentOverScrollAmount = getCurrentOverScrollAmount(true);
        if (this.mOwnScrollY == 0 && this.mScrolledToTopOnFirstDown && !this.mExpandedInThisMotion && !this.mShouldUseSplitNotificationShade) {
            if (i > this.mMinimumVelocity) {
                return true;
            }
            if (currentOverScrollAmount > this.mMinTopOverScrollToEscape && i > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean shouldSkipHeightUpdate() {
        boolean z;
        if (!this.mAmbientState.isOnKeyguard()) {
            return false;
        }
        AmbientState ambientState = this.mAmbientState;
        if (!ambientState.mUnlockHintRunning && !ambientState.mIsSwipingUp) {
            if (ambientState.mIsFlinging && ambientState.mIsFlingRequiredAfterLockScreenSwipeUp) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0623  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startAnimationToState$1() {
        /*
            Method dump skipped, instructions count: 2158
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.startAnimationToState$1():void");
    }

    public final int targetScrollForView(ExpandableView expandableView, int i) {
        int i2;
        int imeInset = (getImeInset() + (expandableView.getIntrinsicHeight() + i)) - getHeight();
        if (!this.mIsExpanded && isPinnedHeadsUp(expandableView)) {
            i2 = this.mHeadsUpInset;
        } else {
            i2 = this.mTopPadding;
        }
        int i3 = imeInset + i2 + this.mMinimumPaddings;
        if ((this.mIsExpanded || !isPinnedHeadsUp(expandableView)) && i3 > 0 && i3 < getScrollAmountToScrollBoundary()) {
            return getScrollAmountToScrollBoundary();
        }
        return i3;
    }

    public final void updateAlgorithmHeightAndPadding() {
        this.mAmbientState.mLayoutHeight = Math.min(this.mMaxLayoutHeight, this.mCurrentStackHeight);
        this.mAmbientState.mLayoutMaxHeight = this.mMaxLayoutHeight;
        updateAlgorithmLayoutMinHeight();
        this.mAmbientState.mTopPadding = this.mTopPadding;
    }

    public final void updateAlgorithmLayoutMinHeight() {
        int layoutMinHeight;
        AmbientState ambientState = this.mAmbientState;
        if (!this.mQsFullScreen && !isHeadsUpTransition()) {
            layoutMinHeight = 0;
        } else {
            layoutMinHeight = getLayoutMinHeight();
        }
        ambientState.mLayoutMinHeight = layoutMinHeight;
    }

    public final void updateBackground() {
        boolean z;
        int i;
        boolean z2;
        int i2;
        boolean z3;
        boolean z4;
        if (!this.mShouldDrawNotificationBackground) {
            return;
        }
        int i3 = this.mSidePaddings;
        int width = getWidth() - this.mSidePaddings;
        for (NotificationSection notificationSection : this.mSections) {
            Rect rect = notificationSection.mBounds;
            rect.left = i3;
            rect.right = width;
        }
        if (!this.mIsExpanded) {
            for (NotificationSection notificationSection2 : this.mSections) {
                Rect rect2 = notificationSection2.mBounds;
                rect2.top = 0;
                rect2.bottom = 0;
            }
        } else {
            NotificationSection lastVisibleSection = getLastVisibleSection();
            if (this.mStatusBarState == 1) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                if (NotiRune.NOTI_STYLE_TABLET_BG) {
                    i = 0;
                } else {
                    i = (int) (this.mTopPadding + this.mStackTranslation);
                }
            } else if (lastVisibleSection == null) {
                i = this.mTopPadding;
            } else {
                NotificationSection firstVisibleSection = getFirstVisibleSection();
                firstVisibleSection.updateBounds(0, 0, false);
                i = firstVisibleSection.mBounds.top;
            }
            if (this.mNumHeadsUp <= 1 && (this.mAmbientState.mDozing || (this.mKeyguardBypassEnabled && z))) {
                z2 = true;
            } else {
                z2 = false;
            }
            NotificationSection[] notificationSectionArr = this.mSections;
            int length = notificationSectionArr.length;
            int i4 = 0;
            while (i4 < length) {
                NotificationSection notificationSection3 = notificationSectionArr[i4];
                if (notificationSection3 == lastVisibleSection) {
                    i2 = (int) ((ViewState.getFinalTranslationY(notificationSection3.mLastVisibleChild) + notificationSection3.mLastVisibleChild.getIntrinsicHeight()) - notificationSection3.mLastVisibleChild.mClipBottomAmount);
                } else {
                    i2 = i;
                }
                i = notificationSection3.updateBounds(i, i2, z2);
                i4++;
                z2 = false;
            }
        }
        NotificationSection[] notificationSectionArr2 = this.mSections;
        int length2 = notificationSectionArr2.length;
        int i5 = 0;
        while (true) {
            if (i5 < length2) {
                NotificationSection notificationSection4 = notificationSectionArr2[i5];
                if (!notificationSection4.mCurrentBounds.equals(notificationSection4.mBounds)) {
                    z3 = true;
                    break;
                }
                i5++;
            } else {
                z3 = false;
                break;
            }
        }
        if (z3) {
            if (!this.mAnimateNextSectionBoundsChange && !this.mAnimateNextBackgroundTop && !this.mAnimateNextBackgroundBottom) {
                for (NotificationSection notificationSection5 : this.mSections) {
                    if (notificationSection5.mBottomAnimator == null && notificationSection5.mTopAnimator == null) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                    if (z4) {
                        break;
                    }
                }
            }
            if (!this.mIsExpanded) {
                for (NotificationSection notificationSection6 : this.mSections) {
                    ObjectAnimator objectAnimator = notificationSection6.mBottomAnimator;
                    if (objectAnimator != null) {
                        objectAnimator.cancel();
                    }
                    ObjectAnimator objectAnimator2 = notificationSection6.mTopAnimator;
                    if (objectAnimator2 != null) {
                        objectAnimator2.cancel();
                    }
                }
            }
            for (NotificationSection notificationSection7 : this.mSections) {
                notificationSection7.mCurrentBounds.set(notificationSection7.mBounds);
            }
            invalidate();
        } else {
            for (NotificationSection notificationSection8 : this.mSections) {
                ObjectAnimator objectAnimator3 = notificationSection8.mBottomAnimator;
                if (objectAnimator3 != null) {
                    objectAnimator3.cancel();
                }
                ObjectAnimator objectAnimator4 = notificationSection8.mTopAnimator;
                if (objectAnimator4 != null) {
                    objectAnimator4.cancel();
                }
            }
        }
        this.mAnimateNextBackgroundTop = false;
        this.mAnimateNextBackgroundBottom = false;
        this.mAnimateNextSectionBoundsChange = false;
    }

    public final void updateBackgroundDimming() {
        if (this.mShouldDrawNotificationBackground) {
            boolean z = NotiRune.NOTI_STYLE_TABLET_BG;
            if (!z || !onKeyguard()) {
                int blendARGB = ColorUtils.blendARGB(this.mBgColor, -1, MathUtils.smoothStep(0.4f, 1.0f, this.mLinearHideAmount));
                if (z && this.mOpaqueBgHelper.needOpaqueBg()) {
                    blendARGB = this.mOpaqueBgHelper.mContext.getColor(com.android.systemui.R.color.sec_panel_background_color_tablet);
                }
                if (this.mCachedBackgroundColor != blendARGB) {
                    this.mCachedBackgroundColor = blendARGB;
                    this.mBackgroundPaint.setColor(blendARGB);
                    invalidate();
                }
            }
        }
    }

    public final void updateBgColor() {
        this.mBgColor = Utils.getColorAttr(R.attr.colorBackgroundFloating, ((ViewGroup) this).mContext).getDefaultColor();
        if (NotiRune.NOTI_STYLE_TABLET_BG && this.mOpaqueBgHelper.needOpaqueBg()) {
            this.mBgColor = this.mOpaqueBgHelper.mContext.getColor(com.android.systemui.R.color.sec_panel_background_color_tablet);
        }
        updateBackgroundDimming();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActivatableNotificationView) {
                ((ActivatableNotificationView) childAt).updateBackgroundColors();
            }
        }
    }

    public final void updateBottomInset(WindowInsets windowInsets) {
        this.mBottomInset = windowInsets.getInsets(WindowInsets.Type.ime()).bottom;
        if (this.mForcedScroll != null) {
            updateForcedScroll();
        }
        int scrollRange = getScrollRange();
        if (this.mOwnScrollY > scrollRange) {
            setOwnScrollY(scrollRange);
        }
    }

    public final void updateClipping() {
        boolean z;
        Rect rect;
        boolean z2 = true;
        if (this.mRequestedClipBounds != null && !this.mInHeadsUpPinnedMode && !this.mHeadsUpAnimatingAway) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = NotiRune.NOTI_STYLE_TABLET_BG;
        if (z3) {
            SecNsslOpaqueBgHelper secNsslOpaqueBgHelper = this.mOpaqueBgHelper;
            boolean z4 = this.mInHeadsUpPinnedMode;
            boolean z5 = this.mHeadsUpAnimatingAway;
            if (!secNsslOpaqueBgHelper.needOpaqueBg() || z4 || z5) {
                z2 = false;
            }
            z = z2;
        }
        if (this.mIsClipped != z) {
            this.mIsClipped = z;
        }
        if (this.mAmbientState.isHiddenAtAll()) {
            invalidateOutline();
            if (this.mAmbientState.isFullyHidden()) {
                setClipBounds(null);
            }
        } else if (z) {
            if (z3) {
                SecNsslOpaqueBgHelper secNsslOpaqueBgHelper2 = this.mOpaqueBgHelper;
                int height = getHeight();
                int width = getWidth();
                secNsslOpaqueBgHelper2.getClass();
                rect = new Rect();
                rect.bottom = height;
                rect.top = 0;
                rect.left = 0;
                rect.right = width;
            } else {
                rect = this.mRequestedClipBounds;
            }
            setClipBounds(rect);
        } else {
            setClipBounds(null);
        }
        setClipToOutline(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateClippingToTopRoundedCorner() {
        /*
            r10 = this;
            com.android.systemui.statusbar.notification.stack.AmbientState r0 = r10.mAmbientState
            float r0 = r0.mNotificationScrimTop
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            float r1 = r0.floatValue()
            int r2 = r10.mCornerRadius
            float r2 = (float) r2
            float r1 = r1 + r2
            java.lang.Float r1 = java.lang.Float.valueOf(r1)
            r2 = 0
            r3 = 1
            r4 = r2
            r5 = r3
        L18:
            int r6 = r10.getChildCount()
            if (r4 >= r6) goto L82
            android.view.View r6 = r10.getChildAt(r4)
            com.android.systemui.statusbar.notification.row.ExpandableView r6 = (com.android.systemui.statusbar.notification.row.ExpandableView) r6
            int r7 = r6.getVisibility()
            r8 = 8
            if (r7 != r8) goto L2d
            goto L7f
        L2d:
            float r7 = r6.getTranslationY()
            int r8 = r6.mActualHeight
            float r8 = (float) r8
            float r8 = r8 + r7
            float r9 = r0.floatValue()
            int r9 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r9 <= 0) goto L45
            float r9 = r0.floatValue()
            int r9 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r9 < 0) goto L55
        L45:
            float r9 = r1.floatValue()
            int r9 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r9 < 0) goto L57
            float r9 = r1.floatValue()
            int r8 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r8 > 0) goto L57
        L55:
            r8 = r3
            goto L58
        L57:
            r8 = r2
        L58:
            if (r5 == 0) goto L6a
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$10 r5 = r10.mScrollAdapter
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r5 = com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.this
            int r5 = r5.mOwnScrollY
            if (r5 != 0) goto L64
            r5 = r3
            goto L65
        L64:
            r5 = r2
        L65:
            if (r5 != 0) goto L68
            goto L6a
        L68:
            r5 = r2
            goto L6b
        L6a:
            r5 = r3
        L6b:
            r5 = r5 & r8
            if (r5 == 0) goto L79
            float r5 = r0.floatValue()
            float r7 = r7 - r5
            r5 = 0
            float r5 = java.lang.Math.max(r7, r5)
            goto L7b
        L79:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
        L7b:
            r6.setDistanceToTopRoundness(r5)
            r5 = r2
        L7f:
            int r4 = r4 + 1
            goto L18
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.updateClippingToTopRoundedCorner():void");
    }

    public final void updateContentHeight() {
        float f;
        int i;
        Object invoke;
        float f2;
        boolean z;
        if (this.mAmbientState.isOnKeyguard()) {
            f = 0.0f;
        } else {
            f = this.mMinimumPaddings;
        }
        NotificationShelf notificationShelf = this.mShelf;
        if (notificationShelf != null) {
            i = notificationShelf.getHeight();
        } else {
            i = 0;
        }
        int i2 = (int) f;
        NotificationStackSizeCalculator notificationStackSizeCalculator = this.mNotificationStackSizeCalculator;
        int i3 = this.mMaxDisplayedNotifications;
        notificationStackSizeCalculator.getClass();
        final SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1 sequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1 = new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1(notificationStackSizeCalculator, this, i, null));
        Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.notification.stack.NotificationStackSizeCalculator$computeHeight$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Number) obj).intValue();
                Iterator it = Sequence.this.iterator();
                if (it.hasNext()) {
                    Object next = it.next();
                    while (it.hasNext()) {
                        next = it.next();
                    }
                    return (NotificationStackSizeCalculator.StackHeight) next;
                }
                throw new NoSuchElementException("Sequence is empty.");
            }
        };
        if (i3 < 0) {
            invoke = function1.invoke(Integer.valueOf(i3));
        } else {
            Iterator it = sequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1.iterator();
            int i4 = 0;
            while (true) {
                SequenceBuilderIterator sequenceBuilderIterator = (SequenceBuilderIterator) it;
                if (sequenceBuilderIterator.hasNext()) {
                    Object next = sequenceBuilderIterator.next();
                    int i5 = i4 + 1;
                    if (i3 == i4) {
                        invoke = next;
                        break;
                    }
                    i4 = i5;
                } else {
                    invoke = function1.invoke(Integer.valueOf(i3));
                    break;
                }
            }
        }
        NotificationStackSizeCalculator.StackHeight stackHeight = (NotificationStackSizeCalculator.StackHeight) invoke;
        float f3 = stackHeight.notifsHeight;
        boolean z2 = notificationStackSizeCalculator.saveSpaceOnLockscreen;
        float f4 = stackHeight.shelfHeightWithSpaceBefore;
        if (z2) {
            f2 = stackHeight.notifsHeightSavingSpace + f4;
        } else {
            f2 = f3 + f4;
        }
        float f5 = i2 + ((int) f2);
        this.mIntrinsicContentHeight = f5;
        this.mContentHeight = (int) (f5 + Math.max(this.mIntrinsicPadding, this.mTopPadding) + this.mBottomPadding);
        if (!this.mQsFullScreen && getScrollRange() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z != this.mScrollable) {
            this.mScrollable = z;
            setFocusable(z);
            updateForwardAndBackwardScrollability();
        }
        clampScrollPosition();
        updateStackPosition(false);
        this.mAmbientState.mContentHeight = this.mContentHeight;
    }

    public final void updateContinuousBackgroundDrawing() {
        boolean z;
        boolean z2 = true;
        if (this.mAmbientState.mDozeAmount == 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z || !this.mSwipeHelper.mIsSwiping) {
            z2 = false;
        }
        if (z2 != this.mContinuousBackgroundUpdate) {
            this.mContinuousBackgroundUpdate = z2;
            if (z2) {
                getViewTreeObserver().addOnPreDrawListener(this.mBackgroundUpdater);
            } else {
                getViewTreeObserver().removeOnPreDrawListener(this.mBackgroundUpdater);
            }
        }
    }

    public final void updateContinuousShadowDrawing() {
        boolean z;
        if (!this.mAnimationRunning && !this.mSwipeHelper.mIsSwiping) {
            z = false;
        } else {
            z = true;
        }
        if (z != this.mContinuousShadowUpdate) {
            if (z) {
                getViewTreeObserver().addOnPreDrawListener(this.mShadowUpdater);
            } else {
                getViewTreeObserver().removeOnPreDrawListener(this.mShadowUpdater);
            }
            this.mContinuousShadowUpdate = z;
        }
    }

    public final void updateDecorViews() {
        EmptyShadeView emptyShadeView;
        int colorAttrDefaultColor = Utils.getColorAttrDefaultColor(R.attr.textColorPrimary, ((ViewGroup) this).mContext, 0);
        NotificationSectionsManager notificationSectionsManager = this.mSectionsManager;
        SectionHeaderView sectionHeaderView = ((SectionHeaderNodeControllerImpl) notificationSectionsManager.peopleHeaderController)._view;
        if (sectionHeaderView != null) {
            sectionHeaderView.mLabelView.setTextColor(colorAttrDefaultColor);
            sectionHeaderView.mClearAllButton.setImageTintList(ColorStateList.valueOf(colorAttrDefaultColor));
        }
        SectionHeaderView sectionHeaderView2 = ((SectionHeaderNodeControllerImpl) notificationSectionsManager.silentHeaderController)._view;
        if (sectionHeaderView2 != null) {
            sectionHeaderView2.mLabelView.setTextColor(colorAttrDefaultColor);
            sectionHeaderView2.mClearAllButton.setImageTintList(ColorStateList.valueOf(colorAttrDefaultColor));
        }
        SectionHeaderView sectionHeaderView3 = ((SectionHeaderNodeControllerImpl) notificationSectionsManager.alertingHeaderController)._view;
        if (sectionHeaderView3 != null) {
            sectionHeaderView3.mLabelView.setTextColor(colorAttrDefaultColor);
            sectionHeaderView3.mClearAllButton.setImageTintList(ColorStateList.valueOf(colorAttrDefaultColor));
        }
        if (!NotiRune.NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW && (emptyShadeView = this.mEmptyShadeView) != null) {
            if (NotiRune.NOTI_STYLE_EMPTY_SHADE) {
                emptyShadeView.mEmptyText.setTextColor(emptyShadeView.getResources().getColor(com.android.systemui.R.color.sec_no_notification_text_color));
            } else {
                emptyShadeView.mEmptyText.setTextColor(colorAttrDefaultColor);
            }
            emptyShadeView.mEmptyFooterText.setTextColor(colorAttrDefaultColor);
            emptyShadeView.mEmptyFooterText.setCompoundDrawableTintList(ColorStateList.valueOf(colorAttrDefaultColor));
        }
    }

    public final void updateDismissBehavior() {
        boolean z = true;
        if (this.mShouldUseSplitNotificationShade && (this.mStatusBarState == 1 || !this.mIsExpanded)) {
            z = false;
        }
        if (this.mDismissUsingRowTranslationX != z) {
            this.mDismissUsingRowTranslationX = z;
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof ExpandableNotificationRow) {
                    ((ExpandableNotificationRow) childAt).setDismissUsingRowTranslationX(z);
                }
            }
        }
    }

    public final void updateEmptyShadeView(int i, int i2, int i3) {
        Drawable drawable;
        EmptyShadeView emptyShadeView = this.mEmptyShadeView;
        if (emptyShadeView.mText != i) {
            emptyShadeView.mText = i;
            emptyShadeView.mEmptyText.setText(i);
        }
        EmptyShadeView emptyShadeView2 = this.mEmptyShadeView;
        if (emptyShadeView2.mFooterText != i2) {
            emptyShadeView2.mFooterText = i2;
            if (i2 != 0) {
                emptyShadeView2.mEmptyFooterText.setText(i2);
            } else {
                emptyShadeView2.mEmptyFooterText.setText((CharSequence) null);
            }
        }
        EmptyShadeView emptyShadeView3 = this.mEmptyShadeView;
        if (emptyShadeView3.mFooterIcon != i3) {
            emptyShadeView3.mFooterIcon = i3;
            if (i3 == 0) {
                drawable = null;
            } else {
                drawable = emptyShadeView3.getResources().getDrawable(i3);
                int i4 = emptyShadeView3.mSize;
                drawable.setBounds(0, 0, i4, i4);
            }
            emptyShadeView3.mEmptyFooterText.setCompoundDrawablesRelative(drawable, null, null, null);
        }
        if (i3 == 0 && i2 == 0) {
            EmptyShadeView emptyShadeView4 = this.mEmptyShadeView;
            emptyShadeView4.mFooterVisibility = 8;
            emptyShadeView4.setSecondaryVisible(false);
        } else {
            EmptyShadeView emptyShadeView5 = this.mEmptyShadeView;
            emptyShadeView5.mFooterVisibility = 0;
            emptyShadeView5.setSecondaryVisible(true);
        }
    }

    public final void updateEmptyShadeViewHeight() {
        int displayHeight = (int) (DeviceState.getDisplayHeight(((ViewGroup) this).mContext) * 0.3d);
        EmptyShadeView emptyShadeView = this.mEmptyShadeView;
        int i = this.mTopPadding;
        ViewGroup.LayoutParams layoutParams = emptyShadeView.getLayoutParams();
        layoutParams.height = displayHeight;
        emptyShadeView.setLayoutParams(layoutParams);
        emptyShadeView.mTopPadding = i;
    }

    public final void updateFirstAndLastBackgroundViews() {
        ExpandableView expandableView;
        ExpandableView expandableView2;
        boolean z;
        NotificationSection firstVisibleSection = getFirstVisibleSection();
        NotificationSection lastVisibleSection = getLastVisibleSection();
        ExpandableView expandableView3 = null;
        if (firstVisibleSection == null) {
            expandableView = null;
        } else {
            expandableView = firstVisibleSection.mFirstVisibleChild;
        }
        if (lastVisibleSection == null) {
            expandableView2 = null;
        } else {
            expandableView2 = lastVisibleSection.mLastVisibleChild;
        }
        ExpandableView firstChildWithBackground = getFirstChildWithBackground();
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            ExpandableView childAtIndex = getChildAtIndex(childCount);
            if (childAtIndex.getVisibility() != 8 && !(childAtIndex instanceof StackScrollerDecorView) && childAtIndex != this.mShelf) {
                expandableView3 = childAtIndex;
                break;
            }
        }
        boolean updateFirstAndLastViewsForAllSections = this.mSectionsManager.updateFirstAndLastViewsForAllSections(this.mSections, getChildrenWithBackground());
        if (this.mAnimationsEnabled && this.mIsExpanded) {
            boolean z2 = true;
            if (firstChildWithBackground != expandableView) {
                z = true;
            } else {
                z = false;
            }
            this.mAnimateNextBackgroundTop = z;
            if (expandableView3 == expandableView2 && !this.mAnimateBottomOnLayout) {
                z2 = false;
            }
            this.mAnimateNextBackgroundBottom = z2;
            this.mAnimateNextSectionBoundsChange = updateFirstAndLastViewsForAllSections;
        } else {
            this.mAnimateNextBackgroundTop = false;
            this.mAnimateNextBackgroundBottom = false;
            this.mAnimateNextSectionBoundsChange = false;
        }
        this.mAmbientState.mLastVisibleBackgroundChild = expandableView3;
        this.mAnimateBottomOnLayout = false;
        invalidate();
    }

    public final void updateForcedScroll() {
        View view = this.mForcedScroll;
        if (view != null && (!view.hasFocus() || !this.mForcedScroll.isAttachedToWindow())) {
            this.mForcedScroll = null;
        }
        View view2 = this.mForcedScroll;
        if (view2 != null) {
            ExpandableView expandableView = (ExpandableView) view2;
            int positionInLinearLayout = getPositionInLinearLayout(expandableView);
            int targetScrollForView = targetScrollForView(expandableView, positionInLinearLayout);
            int intrinsicHeight = expandableView.getIntrinsicHeight() + positionInLinearLayout;
            int max = Math.max(0, Math.min(targetScrollForView, getScrollRange()));
            int i = this.mOwnScrollY;
            if (i < max || intrinsicHeight < i) {
                setOwnScrollY(max);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateForwardAndBackwardScrollability() {
        /*
            r5 = this;
            boolean r0 = r5.mScrollable
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L19
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$10 r0 = r5.mScrollAdapter
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r0 = com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.this
            int r3 = r0.mOwnScrollY
            int r0 = r0.getScrollRange()
            if (r3 < r0) goto L14
            r0 = r1
            goto L15
        L14:
            r0 = r2
        L15:
            if (r0 != 0) goto L19
            r0 = r1
            goto L1a
        L19:
            r0 = r2
        L1a:
            boolean r3 = r5.mScrollable
            if (r3 == 0) goto L2d
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout$10 r3 = r5.mScrollAdapter
            com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout r3 = com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.this
            int r3 = r3.mOwnScrollY
            if (r3 != 0) goto L28
            r3 = r1
            goto L29
        L28:
            r3 = r2
        L29:
            if (r3 != 0) goto L2d
            r3 = r1
            goto L2e
        L2d:
            r3 = r2
        L2e:
            boolean r4 = r5.mForwardScrollable
            if (r0 != r4) goto L38
            boolean r4 = r5.mBackwardScrollable
            if (r3 == r4) goto L37
            goto L38
        L37:
            r1 = r2
        L38:
            r5.mForwardScrollable = r0
            r5.mBackwardScrollable = r3
            if (r1 == 0) goto L43
            r0 = 2048(0x800, float:2.87E-42)
            r5.sendAccessibilityEvent(r0)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout.updateForwardAndBackwardScrollability():void");
    }

    public final void updateLaunchedNotificationClipPath() {
        if (this.mLaunchingNotificationNeedsToBeClipped && this.mLaunchingNotification && this.mExpandingNotificationRow != null) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            int min = Math.min(this.mLaunchAnimationParams.left - iArr[0], this.mRoundedRectClippingLeft);
            int max = Math.max(this.mLaunchAnimationParams.right - iArr[0], this.mRoundedRectClippingRight);
            int max2 = Math.max(this.mLaunchAnimationParams.bottom - iArr[1], this.mRoundedRectClippingBottom);
            Interpolator interpolator = Interpolators.FAST_OUT_SLOW_IN;
            LaunchAnimationParameters launchAnimationParameters = this.mLaunchAnimationParams;
            launchAnimationParameters.getClass();
            LaunchAnimator.Companion companion = LaunchAnimator.Companion;
            LaunchAnimator.Timings timings = ActivityLaunchAnimator.TIMINGS;
            float f = launchAnimationParameters.linearProgress;
            companion.getClass();
            int min2 = (int) Math.min(MathUtils.lerp(this.mRoundedRectClippingTop, this.mLaunchAnimationParams.top - iArr[1], ((PathInterpolator) interpolator).getInterpolation(LaunchAnimator.Companion.getProgress(timings, f, 0L, 100L))), this.mRoundedRectClippingTop);
            LaunchAnimationParameters launchAnimationParameters2 = this.mLaunchAnimationParams;
            float f2 = launchAnimationParameters2.topCornerRadius;
            float f3 = launchAnimationParameters2.bottomCornerRadius;
            float[] fArr = this.mLaunchedNotificationRadii;
            fArr[0] = f2;
            fArr[1] = f2;
            fArr[2] = f2;
            fArr[3] = f2;
            fArr[4] = f3;
            fArr[5] = f3;
            fArr[6] = f3;
            fArr[7] = f3;
            this.mLaunchedNotificationClipPath.reset();
            this.mLaunchedNotificationClipPath.addRoundRect(min, min2, max, max2, this.mLaunchedNotificationRadii, Path.Direction.CW);
            ExpandableNotificationRow expandableNotificationRow = this.mExpandingNotificationRow;
            ExpandableNotificationRow expandableNotificationRow2 = expandableNotificationRow.mNotificationParent;
            if (expandableNotificationRow2 != null) {
                expandableNotificationRow = expandableNotificationRow2;
            }
            this.mLaunchedNotificationClipPath.offset((-expandableNotificationRow.getLeft()) - expandableNotificationRow.getTranslationX(), (-expandableNotificationRow.getTop()) - expandableNotificationRow.getTranslationY());
            expandableNotificationRow.mExpandingClipPath = this.mLaunchedNotificationClipPath;
            expandableNotificationRow.invalidate();
            if (this.mShouldUseRoundedRectClipping) {
                invalidate();
            }
        }
    }

    public final void updateNotificationAnimationStates() {
        boolean z;
        boolean z2;
        if (!this.mAnimationsEnabled && !this.mPulsing) {
            z = false;
        } else {
            z = true;
        }
        NotificationShelf notificationShelf = this.mShelf;
        notificationShelf.mAnimationsEnabled = z;
        if (!z) {
            notificationShelf.mShelfIcons.setAnimationsEnabled(false);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (!this.mIsExpanded && !isPinnedHeadsUp(childAt)) {
                z2 = false;
            } else {
                z2 = true;
            }
            z &= z2;
            if (childAt instanceof ExpandableNotificationRow) {
                ((ExpandableNotificationRow) childAt).setAnimationRunning(z);
            }
        }
    }

    public final void updateOwnTranslationZ() {
        float f;
        ExpandableView firstChildNotGone;
        if (this.mKeyguardBypassEnabled && this.mAmbientState.isHiddenAtAll() && (firstChildNotGone = getFirstChildNotGone()) != null && firstChildNotGone.showingPulsing()) {
            f = firstChildNotGone.getTranslationZ();
        } else {
            f = 0.0f;
        }
        setTranslationZ(f);
    }

    public final void updateSectionColor() {
        int color = ((ViewGroup) this).mContext.getColor(com.android.systemui.R.color.notification_section_header_text_color);
        NotificationSectionsManager notificationSectionsManager = this.mSectionsManager;
        SectionHeaderView sectionHeaderView = ((SectionHeaderNodeControllerImpl) notificationSectionsManager.peopleHeaderController)._view;
        if (sectionHeaderView != null) {
            sectionHeaderView.mLabelView.setTextColor(color);
            sectionHeaderView.mClearAllButton.setImageTintList(ColorStateList.valueOf(color));
        }
        SectionHeaderView sectionHeaderView2 = ((SectionHeaderNodeControllerImpl) notificationSectionsManager.silentHeaderController)._view;
        if (sectionHeaderView2 != null) {
            sectionHeaderView2.mLabelView.setTextColor(color);
            sectionHeaderView2.mClearAllButton.setImageTintList(ColorStateList.valueOf(color));
        }
        SectionHeaderView sectionHeaderView3 = ((SectionHeaderNodeControllerImpl) notificationSectionsManager.alertingHeaderController)._view;
        if (sectionHeaderView3 != null) {
            sectionHeaderView3.mLabelView.setTextColor(color);
            sectionHeaderView3.mClearAllButton.setImageTintList(ColorStateList.valueOf(color));
        }
    }

    public final void updateSensitiveness(boolean z, boolean z2) {
        if (z2 != this.mAmbientState.mHideSensitive) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAtIndex(i).setHideSensitiveForIntrinsicHeight(z2);
            }
            this.mAmbientState.mHideSensitive = z2;
            if (z && this.mAnimationsEnabled) {
                this.mHideSensitiveNeedsAnimation = true;
                this.mNeedsAnimation = true;
            }
            updateContentHeight();
            requestChildrenUpdate();
        }
    }

    public void updateSplitNotificationShade() {
        boolean shouldUseSplitNotificationShade = LargeScreenUtils.shouldUseSplitNotificationShade(getResources());
        if (shouldUseSplitNotificationShade != this.mShouldUseSplitNotificationShade) {
            this.mShouldUseSplitNotificationShade = shouldUseSplitNotificationShade;
            updateDismissBehavior();
            updateUseRoundedRectClipping();
        }
    }

    public void updateStackEndHeightAndStackHeight(float f) {
        float max;
        float f2 = this.mAmbientState.mStackHeight;
        if (this.mQsExpansionFraction <= 0.0f && !shouldSkipHeightUpdate()) {
            float height = getHeight();
            float emptyBottomMargin = getEmptyBottomMargin();
            float f3 = this.mTopPadding;
            if (this.mMaxDisplayedNotifications != -1) {
                max = this.mIntrinsicContentHeight;
            } else {
                max = Math.max(0.0f, (height - emptyBottomMargin) - f3);
            }
            this.mAmbientState.mStackEndHeight = max;
            updateStackHeight(max, f);
        } else {
            updateStackHeight(this.mAmbientState.mStackEndHeight, f);
        }
        if (f2 != this.mAmbientState.mStackHeight) {
            requestChildrenUpdate();
        }
    }

    public void updateStackHeight(float f, float f2) {
        this.mAmbientState.mStackHeight = MathUtils.lerp(0.5f * f, f, f2);
    }

    public final void updateStackPosition(boolean z) {
        float f;
        boolean z2 = true;
        if (this.mShouldUseSplitNotificationShade) {
            f = getCurrentOverScrollAmount(true);
        } else {
            f = 0.0f;
        }
        float currentOverScrollAmount = (((this.mTopPadding + this.mExtraTopInsetForFullShadeTransition) + this.mAmbientState.mOverExpansion) + f) - getCurrentOverScrollAmount(false);
        AmbientState ambientState = this.mAmbientState;
        float f2 = ambientState.mExpansionFraction;
        StatusBarKeyguardViewManager statusBarKeyguardViewManager = ambientState.mStatusBarKeyguardViewManager;
        if (statusBarKeyguardViewManager == null || !statusBarKeyguardViewManager.isPrimaryBouncerInTransit()) {
            z2 = false;
        }
        if (z2 && this.mQsExpansionFraction > 0.0f) {
            f2 = BouncerPanelExpansionCalculator.aboutToShowBouncerProgress(f2);
        }
        if (this.mInHeadsUpPinnedMode || this.mHeadsUpAnimatingAway) {
            currentOverScrollAmount = MathUtils.lerp(0.0f, currentOverScrollAmount, f2);
        }
        this.mAmbientState.mStackY = currentOverScrollAmount;
        Consumer consumer = this.mOnStackYChanged;
        if (consumer != null) {
            consumer.accept(Boolean.valueOf(z));
        }
        updateStackEndHeightAndStackHeight(f2);
    }

    public final void updateUseRoundedRectClipping() {
        boolean z;
        boolean z2 = false;
        if (this.mQsExpansionFraction >= 0.5f && !this.mShouldUseSplitNotificationShade) {
            z = false;
        } else {
            z = true;
        }
        if (this.mIsExpanded && z) {
            z2 = true;
        }
        if (z2 != this.mShouldUseRoundedRectClipping) {
            this.mShouldUseRoundedRectClipping = z2;
            invalidate();
        }
    }

    public final void updateViewShadows() {
        float translationZ;
        for (int i = 0; i < getChildCount(); i++) {
            ExpandableView childAtIndex = getChildAtIndex(i);
            if (childAtIndex.getVisibility() != 8) {
                this.mTmpSortedChildren.add(childAtIndex);
            }
        }
        Collections.sort(this.mTmpSortedChildren, this.mViewPositionComparator);
        ExpandableView expandableView = null;
        int i2 = 0;
        while (i2 < this.mTmpSortedChildren.size()) {
            ExpandableView expandableView2 = (ExpandableView) this.mTmpSortedChildren.get(i2);
            float translationZ2 = expandableView2.getTranslationZ();
            if (expandableView == null) {
                translationZ = translationZ2;
            } else {
                translationZ = expandableView.getTranslationZ();
            }
            float f = translationZ - translationZ2;
            if (f > 0.0f && f < RUBBER_BAND_FACTOR_NORMAL) {
                expandableView2.setFakeShadowIntensity((int) ((expandableView.getTranslationY() + expandableView.mActualHeight) - expandableView2.getTranslationY()), f / RUBBER_BAND_FACTOR_NORMAL, expandableView.getOutlineAlpha(), (int) (expandableView.getTranslation() + expandableView.getOutlineTranslation()));
            } else {
                expandableView2.setFakeShadowIntensity(0, 0.0f, 0.0f, 0);
            }
            i2++;
            expandableView = expandableView2;
        }
        this.mTmpSortedChildren.clear();
    }

    public final void updateVisibility() {
        boolean z;
        boolean z2;
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.mController;
        int i = 0;
        boolean z3 = true;
        if (this.mAmbientState.isFullyHidden() && onKeyguard()) {
            z = false;
        } else {
            z = true;
        }
        notificationStackScrollLayoutController.getClass();
        if (z) {
            if (notificationStackScrollLayoutController.mBarState == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (notificationStackScrollLayoutController.mLockscreenNotificationManager.mCurrentNotificationType != 0) {
                    z3 = false;
                }
                if (!z3) {
                    z = false;
                }
            }
        }
        if (!z) {
            i = 8;
        }
        NotificationStackScrollLayout notificationStackScrollLayout = notificationStackScrollLayoutController.mView;
        notificationStackScrollLayout.setVisibility(i);
        if (notificationStackScrollLayout.getVisibility() == 0) {
            notificationStackScrollLayoutController.updateShowEmptyShadeView();
            notificationStackScrollLayoutController.updateImportantForAccessibility();
        }
    }

    public final void setOverScrollAmount(float f, final boolean z, boolean z2, boolean z3, final boolean z4) {
        if (z3) {
            StackStateAnimator stackStateAnimator = this.mStateAnimator;
            ValueAnimator valueAnimator = z ? stackStateAnimator.mTopOverScrollAnimator : stackStateAnimator.mBottomOverScrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }
        float max = Math.max(0.0f, f);
        if (z2) {
            final StackStateAnimator stackStateAnimator2 = this.mStateAnimator;
            float currentOverScrollAmount = stackStateAnimator2.mHostLayout.getCurrentOverScrollAmount(z);
            if (max == currentOverScrollAmount) {
                return;
            }
            ValueAnimator valueAnimator2 = z ? stackStateAnimator2.mTopOverScrollAnimator : stackStateAnimator2.mBottomOverScrollAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(currentOverScrollAmount, max);
            ofFloat.setDuration(360L);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.notification.stack.StackStateAnimator.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    StackStateAnimator.this.mHostLayout.setOverScrollAmount(((Float) valueAnimator3.getAnimatedValue()).floatValue(), z, false, false, z4);
                }
            });
            ofFloat.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.notification.stack.StackStateAnimator.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    if (z) {
                        StackStateAnimator.this.mTopOverScrollAnimator = null;
                    } else {
                        StackStateAnimator.this.mBottomOverScrollAnimator = null;
                    }
                }
            });
            ofFloat.start();
            if (z) {
                stackStateAnimator2.mTopOverScrollAnimator = ofFloat;
                return;
            } else {
                stackStateAnimator2.mBottomOverScrollAnimator = ofFloat;
                return;
            }
        }
        float rubberBandFactor = max / getRubberBandFactor(z);
        if (z) {
            this.mOverScrolledTopPixels = rubberBandFactor;
        } else {
            this.mOverScrolledBottomPixels = rubberBandFactor;
        }
        AmbientState ambientState = this.mAmbientState;
        if (z) {
            ambientState.mOverScrollTopAmount = max;
        } else {
            ambientState.mOverScrollBottomAmount = max;
        }
        if (z) {
            notifyOverscrollTopListener(max, z4);
        }
        updateStackPosition(false);
        requestChildrenUpdate();
    }

    public final void setOwnScrollY(int i, boolean z) {
        if (this.mAmbientState.mIsClosing) {
            return;
        }
        if ((getContext().getResources().getConfiguration().orientation == 2) && i < 0) {
            i /= 4;
        }
        int i2 = this.mOwnScrollY;
        if (i != i2) {
            int i3 = ((ViewGroup) this).mScrollX;
            onScrollChanged(i3, i, i3, i2);
            this.mOwnScrollY = i;
            AmbientState ambientState = this.mAmbientState;
            ambientState.getClass();
            ambientState.mScrollY = Math.max(i, 0);
            Consumer consumer = this.mScrollListener;
            if (consumer != null) {
                consumer.accept(Integer.valueOf(this.mOwnScrollY));
            }
            updateForwardAndBackwardScrollability();
            requestChildrenUpdate();
            updateStackPosition(z);
        }
    }

    public void inflateFooterView() {
    }

    public void updateFooter() {
    }
}
