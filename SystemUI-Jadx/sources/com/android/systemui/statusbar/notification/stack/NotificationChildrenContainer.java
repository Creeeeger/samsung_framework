package com.android.systemui.statusbar.notification.stack;

import android.app.Notification;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Trace;
import android.service.notification.StatusBarNotification;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.NotificationHeaderView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.android.internal.widget.CachingIconView;
import com.android.internal.widget.NotificationExpandButton;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.notification.icon.ShadowBackgroundShape;
import com.android.systemui.shade.SecPanelExpansionStateNotifier;
import com.android.systemui.statusbar.CrossFadeHelper;
import com.android.systemui.statusbar.NotificationGroupingUtil;
import com.android.systemui.statusbar.TransformableView;
import com.android.systemui.statusbar.notification.NotificationFadeAware;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.Roundable;
import com.android.systemui.statusbar.notification.RoundableState;
import com.android.systemui.statusbar.notification.SourceType;
import com.android.systemui.statusbar.notification.SourceType$Companion$from$1;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.HybridGroupManager;
import com.android.systemui.statusbar.notification.row.HybridNotificationView;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationHeaderViewWrapper;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper;
import com.android.systemui.util.PluralMessageFormaterKt;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import noticolorpicker.NotificationColorPicker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NotificationChildrenContainer extends ViewGroup implements NotificationFadeAware, Roundable {
    public static final SourceType$Companion$from$1 FROM_PARENT;
    static final int NUMBER_OF_CHILDREN_WHEN_COLLAPSED = 2;
    static final int NUMBER_OF_CHILDREN_WHEN_SYSTEM_EXPANDED = 5;
    public int mActualHeight;
    public final List mAttachedChildren;
    public Path mChildClipPath;
    public int mChildPadding;
    public boolean mChildrenExpanded;
    public int mClipBottomAmount;
    public float mCollapsedBottomPadding;
    public ExpandableNotificationRow mContainingNotification;
    public boolean mContainingNotificationIsFaded;
    public ViewGroup mCurrentHeader;
    public float mDividerAlpha;
    public int mDividerHeight;
    public final List mDividers;
    public boolean mEnableShadowOnChildNotifications;
    public ImageView mGroupIconShadow;
    public CachingIconView mGroupIconView;
    public ViewState mGroupOverFlowState;
    public NotificationGroupingUtil mGroupingUtil;
    public View.OnClickListener mHeaderClickListener;
    public int mHeaderExpandedHeight;
    public int mHeaderHeight;
    public int mHeaderLowPriorityHeight;
    public final Path mHeaderPath;
    public ViewState mHeaderViewState;
    public final float mHeaderVisibleAmount;
    public boolean mHideDividersDuringExpand;
    public final HybridGroupManager mHybridGroupManager;
    public boolean mIsConversation;
    public boolean mIsLowPriority;
    public int mMinGroupSummaryHeight;
    public boolean mNeverAppliedGroupState;
    public NotificationHeaderView mNotificationHeader;
    public NotificationHeaderView mNotificationHeaderExpanded;
    public NotificationHeaderView mNotificationHeaderLowPriority;
    public int mNotificationHeaderMargin;
    public NotificationHeaderViewWrapper mNotificationHeaderWrapper;
    public NotificationHeaderViewWrapper mNotificationHeaderWrapperExpanded;
    public NotificationHeaderViewWrapper mNotificationHeaderWrapperLowPriority;
    public int mNotificationTopPadding;
    public TextView mOverflowNumber;
    public int mRealHeight;
    public final RoundableState mRoundableState;
    public boolean mShowDividersWhenExpanded;
    public boolean mShowGroupCountInExpander;
    public float mTranslationYFactor;
    public int mUntruncatedChildCount;
    public boolean mUserLocked;
    public boolean mWasLowPriorityShowing;
    public long mWhenMillis;

    static {
        new AnimationProperties() { // from class: com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer.1
            public final AnimationFilter mAnimationFilter;

            {
                AnimationFilter animationFilter = new AnimationFilter();
                animationFilter.animateAlpha = true;
                this.mAnimationFilter = animationFilter;
            }

            @Override // com.android.systemui.statusbar.notification.stack.AnimationProperties
            public final AnimationFilter getAnimationFilter() {
                return this.mAnimationFilter;
            }
        }.duration = 200L;
        FROM_PARENT = SourceType.from("FromParent(NCC)");
    }

    public NotificationChildrenContainer(Context context) {
        this(context, null);
    }

    @Override // com.android.systemui.statusbar.notification.Roundable
    public final void applyRoundnessAndInvalidate() {
        NotificationHeaderViewWrapper notificationHeaderViewWrapper = this.mNotificationHeaderWrapper;
        if (notificationHeaderViewWrapper != null) {
            notificationHeaderViewWrapper.requestTopRoundness(getTopRoundness(), FROM_PARENT, false);
        }
        NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = this.mNotificationHeaderWrapperLowPriority;
        if (notificationHeaderViewWrapper2 != null) {
            notificationHeaderViewWrapper2.requestTopRoundness(getTopRoundness(), FROM_PARENT, false);
        }
        NotificationHeaderViewWrapper notificationHeaderViewWrapper3 = this.mNotificationHeaderWrapperExpanded;
        if (notificationHeaderViewWrapper3 != null) {
            notificationHeaderViewWrapper3.requestTopRoundness(getTopRoundness(), FROM_PARENT, false);
        }
        int size = ((ArrayList) this.mAttachedChildren).size();
        while (true) {
            size--;
            if (size >= 0) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(size);
                if (expandableNotificationRow.getVisibility() != 8) {
                    expandableNotificationRow.requestRoundness(1.0f, 1.0f, FROM_PARENT, false);
                }
            } else {
                super.applyRoundnessAndInvalidate();
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        if (r8 == false) goto L31;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean drawChild(android.graphics.Canvas r16, android.view.View r17, long r18) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    public ViewGroup getCurrentHeaderView() {
        return this.mCurrentHeader;
    }

    public final float getGroupExpandFraction() {
        int i;
        int i2;
        int minHeight;
        if (showingAsLowPriority()) {
            i2 = getMaxContentHeight();
        } else {
            if (this.mContainingNotification.isGroupExpanded()) {
                i = this.mHeaderExpandedHeight;
            } else {
                i = this.mNotificationHeaderMargin;
            }
            i2 = i + 0 + this.mNotificationTopPadding + this.mDividerHeight;
            int size = ((ArrayList) this.mAttachedChildren).size();
            int maxAllowedVisibleChildren = getMaxAllowedVisibleChildren(true);
            int i3 = 0;
            for (int i4 = 0; i4 < size && i3 < maxAllowedVisibleChildren; i4++) {
                ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i4);
                if (expandableNotificationRow.isExpanded(true)) {
                    minHeight = expandableNotificationRow.getMaxExpandHeight();
                } else {
                    minHeight = expandableNotificationRow.getShowingLayout().getMinHeight(true);
                }
                i2 = (int) (i2 + minHeight);
                i3++;
            }
        }
        int minHeight2 = getMinHeight(getMaxAllowedVisibleChildren(true), false);
        return Math.max(0.0f, Math.min(1.0f, (this.mActualHeight - minHeight2) / (i2 - minHeight2)));
    }

    public final int getIntrinsicHeight() {
        int i;
        float f;
        int i2;
        int i3;
        int i4;
        int i5;
        float maxAllowedVisibleChildren = getMaxAllowedVisibleChildren();
        if (showingAsLowPriority()) {
            return this.mNotificationHeaderLowPriority.getHeight();
        }
        if (this.mContainingNotification.isGroupExpanded()) {
            i = this.mHeaderExpandedHeight;
        } else {
            i = this.mNotificationHeaderMargin + 0;
        }
        int size = ((ArrayList) this.mAttachedChildren).size();
        if (this.mUserLocked) {
            f = getGroupExpandFraction();
        } else {
            f = 0.0f;
        }
        boolean z = this.mChildrenExpanded;
        boolean z2 = true;
        int i6 = 0;
        for (int i7 = 0; i7 < size && i6 < maxAllowedVisibleChildren; i7++) {
            if (!z2) {
                if (this.mUserLocked) {
                    i4 = (int) (NotificationUtils.interpolate(this.mChildPadding, this.mDividerHeight, f) + i);
                } else {
                    if (z) {
                        i5 = this.mDividerHeight;
                    } else {
                        i5 = this.mChildPadding;
                    }
                    i4 = i + i5;
                }
            } else {
                if (this.mUserLocked) {
                    i4 = (int) (NotificationUtils.interpolate(0.0f, this.mNotificationTopPadding + this.mDividerHeight, f) + i);
                } else {
                    if (z) {
                        i3 = this.mNotificationTopPadding + this.mDividerHeight;
                    } else {
                        i3 = 0;
                    }
                    i4 = i + i3;
                }
                z2 = false;
            }
            i = i4 + ((ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i7)).getIntrinsicHeight();
            i6++;
        }
        if (this.mUserLocked) {
            i2 = (int) (NotificationUtils.interpolate(this.mCollapsedBottomPadding, 0.0f, f) + i);
        } else if (!z) {
            i2 = (int) (i + this.mCollapsedBottomPadding);
        } else {
            i2 = i;
        }
        int i8 = this.mMinGroupSummaryHeight;
        if (i2 >= i8) {
            return i2;
        }
        return i8;
    }

    public int getMaxAllowedVisibleChildren() {
        return getMaxAllowedVisibleChildren(false);
    }

    public final int getMaxContentHeight() {
        int i;
        int minHeight;
        if (showingAsLowPriority()) {
            return getMinHeight(5, true);
        }
        if (this.mContainingNotification.isGroupExpanded()) {
            i = this.mHeaderExpandedHeight;
        } else {
            i = this.mNotificationHeaderMargin + 0 + this.mNotificationTopPadding;
        }
        int size = ((ArrayList) this.mAttachedChildren).size();
        int i2 = 0;
        for (int i3 = 0; i3 < size && i2 < 8; i3++) {
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i3);
            if (expandableNotificationRow.isExpanded(true)) {
                minHeight = expandableNotificationRow.getMaxExpandHeight();
            } else {
                minHeight = expandableNotificationRow.getShowingLayout().getMinHeight(true);
            }
            i = (int) (i + minHeight);
            i2++;
        }
        if (i2 > 0) {
            return i + (i2 * this.mDividerHeight);
        }
        return i;
    }

    public final int getMinHeight(int i, boolean z) {
        int i2;
        if (!z && showingAsLowPriority()) {
            NotificationHeaderView notificationHeaderView = this.mNotificationHeaderLowPriority;
            if (notificationHeaderView == null) {
                Log.e("NotificationChildrenContainer", "getMinHeight: low priority header is null", new Exception());
                return 0;
            }
            return notificationHeaderView.getHeight();
        }
        if (this.mContainingNotification.isGroupExpanded()) {
            i2 = this.mHeaderExpandedHeight;
        } else {
            i2 = this.mNotificationHeaderMargin;
        }
        int i3 = i2 + 0;
        int size = ((ArrayList) this.mAttachedChildren).size();
        boolean z2 = true;
        int i4 = 0;
        for (int i5 = 0; i5 < size && i4 < i; i5++) {
            if (!z2) {
                i3 += this.mChildPadding;
            } else {
                z2 = false;
            }
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i5);
            HybridNotificationView hybridNotificationView = expandableNotificationRow.mPrivateLayout.mSingleLineView;
            if (hybridNotificationView != null) {
                i3 = hybridNotificationView.getHeight() + i3;
            } else {
                Log.e("NotificationChildrenContainer", "getMinHeight: child " + expandableNotificationRow + " single line view is null", new Exception());
            }
            i4++;
        }
        int i6 = (int) (i3 + this.mCollapsedBottomPadding);
        int i7 = this.mMinGroupSummaryHeight;
        if (i6 < i7) {
            return i7;
        }
        return i6;
    }

    public final int getNotificationChildCount() {
        return ((ArrayList) this.mAttachedChildren).size();
    }

    @Override // com.android.systemui.statusbar.notification.Roundable
    public final RoundableState getRoundableState() {
        return this.mRoundableState;
    }

    public final NotificationViewWrapper getVisibleWrapper() {
        if (showingAsLowPriority()) {
            return this.mNotificationHeaderWrapperLowPriority;
        }
        if (this.mContainingNotification.isGroupExpanded()) {
            return this.mNotificationHeaderWrapperExpanded;
        }
        return this.mNotificationHeaderWrapper;
    }

    public final NotificationViewWrapper getWrapperForView(View view) {
        if (view == this.mNotificationHeader) {
            return this.mNotificationHeaderWrapper;
        }
        if (view == this.mNotificationHeaderExpanded) {
            return this.mNotificationHeaderWrapperExpanded;
        }
        return this.mNotificationHeaderWrapperLowPriority;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final View inflateDivider() {
        return LayoutInflater.from(((ViewGroup) this).mContext).inflate(R.layout.notification_children_divider, (ViewGroup) this, false);
    }

    public final void initDimens() {
        Resources resources = getResources();
        this.mChildPadding = resources.getDimensionPixelOffset(R.dimen.notification_children_padding);
        this.mDividerHeight = Math.max(resources.getDimensionPixelOffset(R.dimen.notification_children_container_divider_height), 1);
        this.mDividerAlpha = resources.getFloat(R.dimen.notification_divider_alpha);
        this.mNotificationHeaderMargin = NotificationUtils.getFontScaledMarginHeight(R.dimen.notification_children_container_margin_top, ((ViewGroup) this).mContext);
        this.mNotificationTopPadding = resources.getDimensionPixelOffset(R.dimen.notification_children_container_top_padding);
        this.mHeaderHeight = NotificationUtils.getFontScaledMarginHeight(R.dimen.notification_children_container_header_collapsed_height, ((ViewGroup) this).mContext);
        this.mHeaderExpandedHeight = NotificationUtils.getFontScaledMarginHeight(R.dimen.notification_children_container_header_expanded_height, ((ViewGroup) this).mContext);
        this.mHeaderLowPriorityHeight = NotificationUtils.getFontScaledMarginHeight(R.dimen.notification_children_container_header_low_priority_height, ((ViewGroup) this).mContext);
        this.mCollapsedBottomPadding = resources.getDimensionPixelOffset(R.dimen.notification_children_collapsed_bottom_padding);
        this.mEnableShadowOnChildNotifications = resources.getBoolean(R.bool.config_enableShadowOnChildNotifications);
        this.mShowGroupCountInExpander = resources.getBoolean(R.bool.config_showNotificationGroupCountInExpander);
        this.mShowDividersWhenExpanded = resources.getBoolean(R.bool.config_showDividersWhenGroupNotificationExpanded);
        this.mHideDividersDuringExpand = resources.getBoolean(R.bool.config_hideDividersDuringExpand);
        resources.getDimensionPixelOffset(android.R.dimen.timepicker_selector_radius);
        HybridGroupManager hybridGroupManager = this.mHybridGroupManager;
        Resources resources2 = hybridGroupManager.mContext.getResources();
        hybridGroupManager.mOverflowNumberSize = resources2.getDimensionPixelSize(R.dimen.group_overflow_number_size);
        hybridGroupManager.mOverflowNumberPadding = resources2.getDimensionPixelSize(R.dimen.group_overflow_number_padding);
        this.mMinGroupSummaryHeight = NotificationUtils.getFontScaledMarginHeight(R.dimen.notification_min_group_summary_height, ((ViewGroup) this).mContext);
        this.mTranslationYFactor = NotificationUtils.getFontScaledMarginHeight(R.dimen.notification_children_container_header_ytranslation_for_heads_up, ((ViewGroup) this).mContext);
    }

    public boolean isUserLocked() {
        return this.mUserLocked;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateGroupOverflow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int min = Math.min(((ArrayList) this.mAttachedChildren).size(), 8);
        for (int i5 = 0; i5 < min; i5++) {
            View view = (View) ((ArrayList) this.mAttachedChildren).get(i5);
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            ((View) ((ArrayList) this.mDividers).get(i5)).layout(0, 0, getWidth(), this.mDividerHeight);
        }
        if (this.mOverflowNumber != null) {
            boolean z2 = true;
            if (getLayoutDirection() != 1) {
                z2 = false;
            }
            if (z2) {
                width = 0;
            } else {
                width = getWidth() - this.mOverflowNumber.getMeasuredWidth();
            }
            int measuredWidth = this.mOverflowNumber.getMeasuredWidth() + width;
            TextView textView = this.mOverflowNumber;
            textView.layout(width, 0, measuredWidth, textView.getMeasuredHeight());
        }
        NotificationHeaderView notificationHeaderView = this.mNotificationHeader;
        if (notificationHeaderView != null) {
            notificationHeaderView.layout(0, 0, notificationHeaderView.getMeasuredWidth(), this.mNotificationHeader.getMeasuredHeight());
        }
        NotificationHeaderView notificationHeaderView2 = this.mNotificationHeaderExpanded;
        if (notificationHeaderView2 != null) {
            notificationHeaderView2.layout(0, 0, notificationHeaderView2.getMeasuredWidth(), this.mNotificationHeaderExpanded.getMeasuredHeight());
        }
        NotificationHeaderView notificationHeaderView3 = this.mNotificationHeaderLowPriority;
        if (notificationHeaderView3 != null) {
            notificationHeaderView3.layout(0, 0, notificationHeaderView3.getMeasuredWidth(), this.mNotificationHeaderLowPriority.getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        boolean z2;
        int makeMeasureSpec;
        int i3;
        boolean z3;
        int i4;
        TextView textView;
        Trace.beginSection("NotificationChildrenContainer#onMeasure");
        int mode = View.MeasureSpec.getMode(i2);
        boolean z4 = true;
        if (mode == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        if (mode == Integer.MIN_VALUE) {
            z2 = true;
        } else {
            z2 = false;
        }
        int size = View.MeasureSpec.getSize(i2);
        if (!z && !z2) {
            makeMeasureSpec = i2;
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, VideoPlayer.MEDIA_ERROR_SYSTEM);
        }
        int size2 = View.MeasureSpec.getSize(i);
        TextView textView2 = this.mOverflowNumber;
        if (textView2 != null) {
            textView2.measure(View.MeasureSpec.makeMeasureSpec(size2, VideoPlayer.MEDIA_ERROR_SYSTEM), makeMeasureSpec);
        }
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.mDividerHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
        int i5 = this.mHeaderExpandedHeight + this.mNotificationTopPadding;
        int min = Math.min(((ArrayList) this.mAttachedChildren).size(), 8);
        int maxAllowedVisibleChildren = getMaxAllowedVisibleChildren(true);
        if (min > maxAllowedVisibleChildren) {
            i3 = maxAllowedVisibleChildren - 1;
        } else {
            i3 = -1;
        }
        int i6 = 0;
        while (i6 < min) {
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i6);
            if (i6 == i3) {
                z3 = z4;
            } else {
                z3 = false;
            }
            if (z3 && (textView = this.mOverflowNumber) != null) {
                i4 = textView.getMeasuredWidth();
            } else {
                i4 = 0;
            }
            NotificationContentView notificationContentView = expandableNotificationRow.mPrivateLayout;
            if (i4 != notificationContentView.mSingleLineWidthIndention) {
                notificationContentView.mSingleLineWidthIndention = i4;
                notificationContentView.mContainingNotification.forceLayout();
                notificationContentView.forceLayout();
            }
            expandableNotificationRow.measure(i, makeMeasureSpec);
            ((View) ((ArrayList) this.mDividers).get(i6)).measure(i, makeMeasureSpec2);
            if (expandableNotificationRow.getVisibility() != 8) {
                i5 = expandableNotificationRow.getMeasuredHeight() + this.mDividerHeight + i5;
            }
            i6++;
            z4 = true;
        }
        this.mRealHeight = i5;
        if (mode != 0) {
            i5 = Math.min(i5, size);
        }
        int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(this.mHeaderHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
        NotificationHeaderView notificationHeaderView = this.mNotificationHeader;
        if (notificationHeaderView != null) {
            notificationHeaderView.measure(i, makeMeasureSpec3);
        }
        if (this.mNotificationHeaderExpanded != null) {
            this.mNotificationHeaderExpanded.measure(i, View.MeasureSpec.makeMeasureSpec(this.mHeaderExpandedHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
        }
        if (this.mNotificationHeaderLowPriority != null) {
            this.mNotificationHeaderLowPriority.measure(i, View.MeasureSpec.makeMeasureSpec(this.mHeaderLowPriorityHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
        }
        setMeasuredDimension(size2, i5);
        Trace.endSection();
    }

    public final void onNotificationUpdated() {
        if (this.mShowGroupCountInExpander) {
            return;
        }
        int i = this.mContainingNotification.mNotificationColor;
        TypedArray obtainStyledAttributes = new ContextThemeWrapper(((ViewGroup) this).mContext, android.R.style.Theme.DeviceDefault.DayNight).getTheme().obtainStyledAttributes(new int[]{android.R.attr.colorAccent});
        try {
            obtainStyledAttributes.getColor(0, i);
            obtainStyledAttributes.close();
            HybridGroupManager hybridGroupManager = this.mHybridGroupManager;
            TextView textView = this.mOverflowNumber;
            NotificationColorPicker notificationColorPicker = (NotificationColorPicker) Dependency.get(NotificationColorPicker.class);
            ExpandableNotificationRow expandableNotificationRow = this.mContainingNotification;
            boolean z = expandableNotificationRow.mDimmed;
            int appPrimaryColor = notificationColorPicker.getAppPrimaryColor(expandableNotificationRow);
            hybridGroupManager.mOverflowNumberColor = appPrimaryColor;
            if (textView != null) {
                textView.setTextColor(appPrimaryColor);
            }
        } catch (Throwable th) {
            if (obtainStyledAttributes != null) {
                try {
                    obtainStyledAttributes.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final boolean pointInView(float f, float f2, float f3) {
        float f4 = -f3;
        if (f >= f4 && f2 >= f4 && f < (((ViewGroup) this).mRight - ((ViewGroup) this).mLeft) + f3 && f2 < this.mRealHeight + f3) {
            return true;
        }
        return false;
    }

    public final void recreateLowPriorityHeader(Notification.Builder builder) {
        NotificationHeaderView notificationHeaderView;
        StatusBarNotification statusBarNotification = this.mContainingNotification.mEntry.mSbn;
        if (this.mIsLowPriority) {
            if (builder == null) {
                builder = Notification.Builder.recoverBuilder(getContext(), statusBarNotification.getNotification());
            }
            int i = 1;
            RemoteViews makeLowPriorityContentView = builder.makeLowPriorityContentView(true);
            if (this.mNotificationHeaderLowPriority == null) {
                NotificationHeaderView apply = makeLowPriorityContentView.apply(getContext(), this);
                this.mNotificationHeaderLowPriority = apply;
                apply.findViewById(android.R.id.gone).setVisibility(0);
                this.mNotificationHeaderLowPriority.setOnClickListener(this.mHeaderClickListener);
                this.mNotificationHeaderWrapperLowPriority = (NotificationHeaderViewWrapper) NotificationViewWrapper.wrap(getContext(), this.mNotificationHeaderLowPriority, this.mContainingNotification);
                this.mNotificationHeaderWrapper.mRoundnessChangedListener = new NotificationChildrenContainer$$ExternalSyntheticLambda1(this, i);
                addView((View) this.mNotificationHeaderLowPriority, 0);
                invalidate();
            } else {
                makeLowPriorityContentView.reapply(getContext(), this.mNotificationHeaderLowPriority);
            }
            this.mNotificationHeaderWrapperLowPriority.onContentUpdated(this.mContainingNotification);
            NotificationHeaderView notificationHeaderView2 = this.mNotificationHeaderLowPriority;
            if (showingAsLowPriority()) {
                notificationHeaderView = this.mNotificationHeaderLowPriority;
            } else if (this.mContainingNotification.isGroupExpanded()) {
                notificationHeaderView = this.mNotificationHeaderExpanded;
            } else {
                notificationHeaderView = this.mNotificationHeader;
            }
            resetHeaderVisibilityIfNeeded(notificationHeaderView2, notificationHeaderView);
            ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateIconTag(this.mNotificationHeaderLowPriority, this.mContainingNotification);
            ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateHeader(this.mNotificationHeaderLowPriority, this.mContainingNotification, true);
            ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).setPrimaryColor((TextView) this.mNotificationHeaderLowPriority.findViewById(android.R.id.line), this.mContainingNotification.mDimmed);
            ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).setPrimaryColor((TextView) this.mNotificationHeaderLowPriority.findViewById(android.R.id.bounds), this.mContainingNotification.mDimmed);
            return;
        }
        removeView(this.mNotificationHeaderLowPriority);
        this.mNotificationHeaderLowPriority = null;
        this.mNotificationHeaderWrapperLowPriority = null;
    }

    public final void recreateNotificationHeader(ExpandableNotificationRow.AnonymousClass1 anonymousClass1, boolean z) {
        Trace.beginSection("NotifChildCont#recreateHeader");
        this.mHeaderClickListener = anonymousClass1;
        this.mIsConversation = z;
        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(getContext(), this.mContainingNotification.mEntry.mSbn.getNotification());
        RemoteViews makeNotificationGroupHeader = recoverBuilder.makeNotificationGroupHeader();
        int i = 0;
        if (this.mNotificationHeader == null) {
            NotificationHeaderView apply = makeNotificationGroupHeader.apply(getContext(), this);
            this.mNotificationHeader = apply;
            apply.findViewById(android.R.id.gone).setVisibility(0);
            this.mNotificationHeader.setOnClickListener(this.mHeaderClickListener);
            NotificationHeaderViewWrapper notificationHeaderViewWrapper = (NotificationHeaderViewWrapper) NotificationViewWrapper.wrap(getContext(), this.mNotificationHeader, this.mContainingNotification);
            this.mNotificationHeaderWrapper = notificationHeaderViewWrapper;
            notificationHeaderViewWrapper.mRoundnessChangedListener = new NotificationChildrenContainer$$ExternalSyntheticLambda1(this, i);
            addView((View) this.mNotificationHeader, 0);
            invalidate();
        } else {
            makeNotificationGroupHeader.reapply(getContext(), this.mNotificationHeader);
        }
        this.mNotificationHeaderWrapper.mExpandButton.setExpanded(false);
        this.mNotificationHeaderWrapper.onContentUpdated(this.mContainingNotification);
        RemoteViews makeNotificationGroupHeaderExpanded = recoverBuilder.makeNotificationGroupHeaderExpanded();
        if (this.mNotificationHeaderExpanded == null) {
            NotificationHeaderView apply2 = makeNotificationGroupHeaderExpanded.apply(getContext(), this);
            this.mNotificationHeaderExpanded = apply2;
            apply2.findViewById(android.R.id.gone).setVisibility(0);
            this.mNotificationHeaderExpanded.findViewById(android.R.id.line).setVisibility(8);
            this.mNotificationHeaderExpanded.setOnClickListener(this.mHeaderClickListener);
            this.mNotificationHeaderWrapperExpanded = (NotificationHeaderViewWrapper) NotificationViewWrapper.wrap(getContext(), this.mNotificationHeaderExpanded, this.mContainingNotification);
            addView((View) this.mNotificationHeaderExpanded, 0);
            invalidate();
        } else {
            makeNotificationGroupHeaderExpanded.reapply(getContext(), this.mNotificationHeaderExpanded);
        }
        ViewGroup viewGroup = (ViewGroup) this.mNotificationHeaderExpanded.findViewById(android.R.id.serial_number);
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.dimen.notification_group_expanded_shadow_radius, typedValue, true);
        int color = getResources().getColor(R.color.notification_no_background_header_text_shadow_color);
        if (viewGroup != null) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof TextView) {
                    ((TextView) childAt).setShadowLayer(typedValue.getFloat(), 0.0f, 0.0f, color);
                }
            }
        }
        NotificationExpandButton findViewById = this.mNotificationHeaderExpanded.findViewById(android.R.id.gone);
        ImageView imageView = (ImageView) this.mNotificationHeaderExpanded.findViewById(android.R.id.grant_credentials_permission_message_header);
        findViewById.setDefaultTextColor(getResources().getColor(R.color.notification_no_background_header_text_color));
        imageView.setBackground(new ShapeDrawable(new ShadowBackgroundShape(getContext(), getResources().getDrawable(android.R.drawable.ic_go), typedValue.getFloat(), color)));
        this.mNotificationHeaderWrapperExpanded.mExpandButton.setExpanded(true);
        this.mNotificationHeaderWrapperExpanded.onContentUpdated(this.mContainingNotification);
        ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateIconTag(this.mNotificationHeaderExpanded, this.mContainingNotification);
        ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateHeader(this.mNotificationHeaderExpanded, this.mContainingNotification, false);
        recreateLowPriorityHeader(recoverBuilder);
        updateHeaderVisibility(false, false);
        updateChildrenAppearance();
        ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateIconTag(this.mNotificationHeader, this.mContainingNotification);
        ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateHeader(this.mNotificationHeader, this.mContainingNotification, true);
        this.mGroupIconView = this.mNotificationHeader.findViewById(android.R.id.icon);
        this.mGroupIconShadow = (ImageView) this.mNotificationHeader.findViewById(android.R.id.landscape);
        Trace.endSection();
    }

    public final void removeNotification(ExpandableNotificationRow expandableNotificationRow) {
        int indexOf = ((ArrayList) this.mAttachedChildren).indexOf(expandableNotificationRow);
        ((ArrayList) this.mAttachedChildren).remove(expandableNotificationRow);
        removeView(expandableNotificationRow);
        final View view = (View) ((ArrayList) this.mDividers).remove(indexOf);
        removeView(view);
        getOverlay().add(view);
        CrossFadeHelper.fadeOut(view, 210L, new Runnable() { // from class: com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer.2
            @Override // java.lang.Runnable
            public final void run() {
                NotificationChildrenContainer.this.getOverlay().remove(view);
            }
        });
        expandableNotificationRow.mIsSystemChildExpanded = false;
        expandableNotificationRow.setNotificationFaded(false);
        expandableNotificationRow.setUserLocked(false);
        NotificationGroupingUtil notificationGroupingUtil = this.mGroupingUtil;
        int i = 0;
        while (true) {
            ArrayList arrayList = notificationGroupingUtil.mProcessors;
            if (i < arrayList.size()) {
                ((NotificationGroupingUtil.Processor) arrayList.get(i)).apply(expandableNotificationRow, true);
                i++;
            } else {
                notificationGroupingUtil.sanitizeTopLineViews(expandableNotificationRow);
                expandableNotificationRow.requestRoundness(0.0f, 0.0f, FROM_PARENT, false);
                applyRoundnessAndInvalidate();
                return;
            }
        }
    }

    public final void resetHeaderVisibilityIfNeeded(View view, View view2) {
        if (view == null) {
            return;
        }
        if (view != this.mCurrentHeader && view != view2) {
            getWrapperForView(view).setVisible(false);
            view.setVisibility(4);
        }
        if (view == view2 && view.getVisibility() != 0) {
            if (view2 == this.mNotificationHeader && isUserLocked()) {
                return;
            }
            getWrapperForView(view).setVisible(true);
            view.setVisibility(0);
        }
    }

    public final void setChildrenExpanded$1(boolean z) {
        this.mChildrenExpanded = z;
        NotificationHeaderViewWrapper notificationHeaderViewWrapper = this.mNotificationHeaderWrapperExpanded;
        if (notificationHeaderViewWrapper != null) {
            notificationHeaderViewWrapper.mExpandButton.setExpanded(true);
        }
        NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = this.mNotificationHeaderWrapper;
        if (notificationHeaderViewWrapper2 != null) {
            notificationHeaderViewWrapper2.mExpandButton.setExpanded(false);
        }
        NotificationHeaderViewWrapper notificationHeaderViewWrapper3 = this.mNotificationHeaderWrapperLowPriority;
        if (notificationHeaderViewWrapper3 != null) {
            notificationHeaderViewWrapper3.mExpandButton.setExpanded(false);
        }
        int size = ((ArrayList) this.mAttachedChildren).size();
        for (int i = 0; i < size; i++) {
            ((ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i)).setChildrenExpanded(z);
        }
        updateHeaderTouchability();
    }

    public final void setNotificationFaded(boolean z) {
        this.mContainingNotificationIsFaded = z;
        NotificationHeaderViewWrapper notificationHeaderViewWrapper = this.mNotificationHeaderWrapper;
        if (notificationHeaderViewWrapper != null) {
            notificationHeaderViewWrapper.setNotificationFaded(z);
        }
        NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = this.mNotificationHeaderWrapperLowPriority;
        if (notificationHeaderViewWrapper2 != null) {
            notificationHeaderViewWrapper2.setNotificationFaded(z);
        }
        NotificationHeaderViewWrapper notificationHeaderViewWrapper3 = this.mNotificationHeaderWrapperExpanded;
        if (notificationHeaderViewWrapper3 != null) {
            notificationHeaderViewWrapper3.setNotificationFaded(z);
        }
        Iterator it = ((ArrayList) this.mAttachedChildren).iterator();
        while (it.hasNext()) {
            ((ExpandableNotificationRow) it.next()).setNotificationFaded(z);
        }
    }

    public final void setUserLocked(boolean z) {
        boolean z2;
        this.mUserLocked = z;
        if (!z) {
            updateHeaderVisibility(false, false);
        }
        int size = ((ArrayList) this.mAttachedChildren).size();
        for (int i = 0; i < size; i++) {
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i);
            if (z && !showingAsLowPriority()) {
                z2 = true;
            } else {
                z2 = false;
            }
            expandableNotificationRow.setUserLocked(z2);
        }
        updateHeaderTouchability();
    }

    public final boolean showingAsLowPriority() {
        if (!this.mIsLowPriority || this.mContainingNotification.isExpanded(false)) {
            return false;
        }
        return true;
    }

    public final void updateChildrenAppearance() {
        ArrayList arrayList;
        View view;
        View findViewById;
        Notification notification2;
        View findViewById2;
        NotificationGroupingUtil notificationGroupingUtil = this.mGroupingUtil;
        ExpandableNotificationRow expandableNotificationRow = notificationGroupingUtil.mRow;
        List attachedChildren = expandableNotificationRow.getAttachedChildren();
        if (attachedChildren != null && expandableNotificationRow.mIsSummaryWithChildren) {
            int i = 0;
            while (true) {
                arrayList = notificationGroupingUtil.mProcessors;
                Notification notification3 = null;
                if (i >= arrayList.size()) {
                    break;
                }
                NotificationGroupingUtil.Processor processor = (NotificationGroupingUtil.Processor) arrayList.get(i);
                ExpandableNotificationRow expandableNotificationRow2 = processor.mParentRow;
                NotificationHeaderView notificationHeader = expandableNotificationRow2.getNotificationViewWrapper().getNotificationHeader();
                if (notificationHeader == null) {
                    findViewById2 = null;
                } else {
                    findViewById2 = notificationHeader.findViewById(processor.mId);
                }
                processor.mParentView = findViewById2;
                if (processor.mExtractor != null) {
                    notification3 = expandableNotificationRow2.mEntry.mSbn.getNotification();
                }
                processor.mParentData = notification3;
                processor.mApply = !processor.mComparator.isEmpty(processor.mParentView);
                i++;
            }
            for (int i2 = 0; i2 < attachedChildren.size(); i2++) {
                ExpandableNotificationRow expandableNotificationRow3 = (ExpandableNotificationRow) attachedChildren.get(i2);
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    NotificationGroupingUtil.Processor processor2 = (NotificationGroupingUtil.Processor) arrayList.get(i3);
                    if (processor2.mApply && (view = expandableNotificationRow3.mPrivateLayout.mContractedChild) != null && (findViewById = view.findViewById(processor2.mId)) != null) {
                        if (processor2.mExtractor == null) {
                            notification2 = null;
                        } else {
                            notification2 = expandableNotificationRow3.mEntry.mSbn.getNotification();
                        }
                        processor2.mApply = processor2.mComparator.compare(processor2.mParentView, findViewById, processor2.mParentData, notification2);
                    }
                }
            }
            for (int i4 = 0; i4 < attachedChildren.size(); i4++) {
                ExpandableNotificationRow expandableNotificationRow4 = (ExpandableNotificationRow) attachedChildren.get(i4);
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ((NotificationGroupingUtil.Processor) arrayList.get(i5)).apply(expandableNotificationRow4, false);
                }
                notificationGroupingUtil.sanitizeTopLineViews(expandableNotificationRow4);
            }
        }
    }

    public final void updateChildrenClipping() {
        int i;
        boolean z;
        int i2;
        if (this.mContainingNotification.mChildIsExpanding) {
            return;
        }
        int size = ((ArrayList) this.mAttachedChildren).size();
        int i3 = this.mContainingNotification.mActualHeight - this.mClipBottomAmount;
        for (int i4 = 0; i4 < size; i4++) {
            ExpandableNotificationRow expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) this.mAttachedChildren).get(i4);
            if (expandableNotificationRow.getVisibility() != 8) {
                float translationY = expandableNotificationRow.getTranslationY();
                float f = expandableNotificationRow.mActualHeight + translationY;
                float f2 = i3;
                boolean z2 = true;
                if (translationY > f2) {
                    i = 0;
                    z = false;
                } else {
                    if (f > f2) {
                        i = (int) (f - f2);
                    } else {
                        i = 0;
                    }
                    z = true;
                }
                if (expandableNotificationRow.getVisibility() != 0) {
                    z2 = false;
                }
                if (z != z2) {
                    if (z) {
                        i2 = 0;
                    } else {
                        i2 = 4;
                    }
                    expandableNotificationRow.setVisibility(i2);
                }
                expandableNotificationRow.setClipBottomAmount(i);
            }
        }
    }

    public final void updateGroupOverflow() {
        NotificationExpandButton notificationExpandButton;
        NotificationExpandButton notificationExpandButton2 = null;
        if (this.mShowGroupCountInExpander) {
            NotificationHeaderViewWrapper notificationHeaderViewWrapper = this.mNotificationHeaderWrapper;
            if (notificationHeaderViewWrapper == null) {
                notificationExpandButton = null;
            } else {
                notificationExpandButton = notificationHeaderViewWrapper.mExpandButton;
            }
            if (notificationExpandButton instanceof NotificationExpandButton) {
                notificationExpandButton.setNumber(this.mUntruncatedChildCount);
            }
            NotificationHeaderViewWrapper notificationHeaderViewWrapper2 = this.mNotificationHeaderWrapperLowPriority;
            if (notificationHeaderViewWrapper2 != null) {
                notificationExpandButton2 = notificationHeaderViewWrapper2.mExpandButton;
            }
            if (notificationExpandButton2 instanceof NotificationExpandButton) {
                notificationExpandButton2.setNumber(this.mUntruncatedChildCount);
            }
            resetHeaderVisibilityIfNeeded(this.mNotificationHeader, this.mCurrentHeader);
            resetHeaderVisibilityIfNeeded(this.mNotificationHeaderLowPriority, this.mCurrentHeader);
            return;
        }
        int maxAllowedVisibleChildren = getMaxAllowedVisibleChildren(true);
        int i = this.mUntruncatedChildCount;
        if (i > maxAllowedVisibleChildren) {
            int i2 = i - maxAllowedVisibleChildren;
            HybridGroupManager hybridGroupManager = this.mHybridGroupManager;
            TextView textView = this.mOverflowNumber;
            Context context = hybridGroupManager.mContext;
            if (textView == null) {
                textView = (TextView) ((LayoutInflater) context.getSystemService(LayoutInflater.class)).inflate(R.layout.hybrid_overflow_number, (ViewGroup) this, false);
                addView(textView);
                textView.setTextColor(hybridGroupManager.mOverflowNumberColor);
            }
            String string = context.getResources().getString(R.string.notification_group_overflow_indicator, Integer.valueOf(i2));
            if (!string.equals(textView.getText())) {
                textView.setText(string);
            }
            textView.setContentDescription(PluralMessageFormaterKt.icuMessageFormat(context.getResources(), R.string.notification_group_overflow_description, i2));
            textView.setTextSize(0, hybridGroupManager.mOverflowNumberSize);
            textView.setPaddingRelative(textView.getPaddingStart(), textView.getPaddingTop(), hybridGroupManager.mOverflowNumberPadding, textView.getPaddingBottom());
            textView.setTextColor(hybridGroupManager.mOverflowNumberColor);
            this.mOverflowNumber = textView;
            if (this.mGroupOverFlowState == null) {
                this.mGroupOverFlowState = new ViewState();
                this.mNeverAppliedGroupState = true;
                return;
            }
            return;
        }
        View view = this.mOverflowNumber;
        if (view != null) {
            removeView(view);
            if (isShown() && isAttachedToWindow()) {
                final View view2 = this.mOverflowNumber;
                addTransientView(view2, getTransientViewCount());
                CrossFadeHelper.fadeOut(view2, 210L, new Runnable() { // from class: com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        NotificationChildrenContainer.this.removeTransientView(view2);
                    }
                });
            }
            this.mOverflowNumber = null;
            this.mGroupOverFlowState = null;
        }
    }

    public final void updateHeaderForExpansion(boolean z) {
        boolean z2;
        NotificationHeaderView notificationHeaderView = this.mNotificationHeaderExpanded;
        if (notificationHeaderView != null) {
            if (z) {
                ColorDrawable colorDrawable = new ColorDrawable();
                NotificationColorPicker notificationColorPicker = (NotificationColorPicker) Dependency.get(NotificationColorPicker.class);
                int notificationBgColor$1 = notificationColorPicker.getNotificationBgColor$1();
                colorDrawable.setColor(Color.argb(notificationColorPicker.mCustomedAlpha, Color.red(notificationBgColor$1), Color.green(notificationBgColor$1), Color.blue(notificationBgColor$1)));
                this.mNotificationHeaderExpanded.setHeaderBackgroundDrawable((Drawable) null);
                this.mNotificationHeaderExpanded.findViewById(android.R.id.line).setVisibility(8);
            } else {
                notificationHeaderView.setHeaderBackgroundDrawable((Drawable) null);
            }
        }
        boolean z3 = true;
        if (((SecPanelExpansionStateNotifier) Dependency.get(SecPanelExpansionStateNotifier.class)).mModel.panelOpenState == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (isUserLocked() || !z2) {
            z3 = false;
        }
        updateHeaderVisibility(z3, false);
    }

    public final void updateHeaderTouchability() {
        NotificationHeaderView notificationHeaderView = this.mNotificationHeaderExpanded;
        boolean z = false;
        if (notificationHeaderView != null) {
            if (this.mChildrenExpanded || this.mUserLocked) {
                z = true;
            }
            notificationHeaderView.setAcceptAllTouches(z);
            return;
        }
        NotificationHeaderView notificationHeaderView2 = this.mNotificationHeader;
        if (notificationHeaderView2 != null) {
            if (this.mChildrenExpanded || this.mUserLocked) {
                z = true;
            }
            notificationHeaderView2.setAcceptAllTouches(z);
        }
    }

    public final void updateHeaderVisibility(boolean z, boolean z2) {
        NotificationHeaderView notificationHeaderView;
        NotificationHeaderView notificationHeaderView2 = this.mCurrentHeader;
        if (showingAsLowPriority()) {
            notificationHeaderView = this.mNotificationHeaderLowPriority;
        } else if (this.mContainingNotification.isGroupExpanded()) {
            notificationHeaderView = this.mNotificationHeaderExpanded;
        } else {
            notificationHeaderView = this.mNotificationHeader;
        }
        if (notificationHeaderView2 == notificationHeaderView && !z2) {
            return;
        }
        if (z) {
            if (notificationHeaderView != null && notificationHeaderView2 != null) {
                notificationHeaderView2.setVisibility(0);
                notificationHeaderView.setVisibility(0);
                TransformableView wrapperForView = getWrapperForView(notificationHeaderView);
                TransformableView wrapperForView2 = getWrapperForView(notificationHeaderView2);
                wrapperForView.transformFrom(wrapperForView2);
                wrapperForView2.transformTo(wrapperForView, new Runnable() { // from class: com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        NotificationChildrenContainer notificationChildrenContainer = NotificationChildrenContainer.this;
                        SourceType$Companion$from$1 sourceType$Companion$from$1 = NotificationChildrenContainer.FROM_PARENT;
                        notificationChildrenContainer.updateHeaderVisibility(false, false);
                    }
                });
            } else {
                z = false;
            }
        }
        if (!z) {
            if (notificationHeaderView != null) {
                getWrapperForView(notificationHeaderView).setVisible(true);
                notificationHeaderView.setVisibility(0);
            }
            if (notificationHeaderView2 != null) {
                NotificationViewWrapper wrapperForView3 = getWrapperForView(notificationHeaderView2);
                if (wrapperForView3 != null) {
                    wrapperForView3.setVisible(false);
                }
                notificationHeaderView2.setVisibility(4);
            }
        }
        resetHeaderVisibilityIfNeeded(this.mNotificationHeader, notificationHeaderView);
        resetHeaderVisibilityIfNeeded(this.mNotificationHeaderExpanded, notificationHeaderView);
        resetHeaderVisibilityIfNeeded(this.mNotificationHeaderLowPriority, notificationHeaderView);
        this.mCurrentHeader = notificationHeaderView;
    }

    public NotificationChildrenContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int getMaxAllowedVisibleChildren(boolean z) {
        if (!z && ((this.mChildrenExpanded || this.mContainingNotification.mUserLocked) && !showingAsLowPriority())) {
            return 8;
        }
        if (this.mIsLowPriority) {
            return 5;
        }
        ExpandableNotificationRow expandableNotificationRow = this.mContainingNotification;
        if (!expandableNotificationRow.mOnKeyguard && expandableNotificationRow.isExpanded(false)) {
            return 5;
        }
        ExpandableNotificationRow expandableNotificationRow2 = this.mContainingNotification;
        return ((expandableNotificationRow2.mIsHeadsUp || expandableNotificationRow2.mHeadsupDisappearRunning) && expandableNotificationRow2.canShowHeadsUp()) ? 5 : 2;
    }

    public NotificationChildrenContainer(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public NotificationChildrenContainer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mDividers = new ArrayList();
        this.mAttachedChildren = new ArrayList();
        this.mChildClipPath = null;
        this.mHeaderPath = new Path();
        this.mHeaderVisibleAmount = 1.0f;
        this.mContainingNotificationIsFaded = false;
        this.mHybridGroupManager = new HybridGroupManager(getContext());
        this.mRoundableState = new RoundableState(this, this, 0.0f);
        initDimens();
        setClipChildren(false);
    }
}
