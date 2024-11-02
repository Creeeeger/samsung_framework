package androidx.slice.widget;

import android.R;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.slice.ArrayUtils;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import androidx.slice.SliceMetadata;
import androidx.slice.core.SliceAction;
import androidx.slice.core.SliceActionImpl;
import androidx.slice.core.SliceQuery;
import com.android.systemui.volume.VolumePanelDialog$$ExternalSyntheticLambda4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SliceView extends ViewGroup implements Observer, View.OnClickListener {
    public static final AnonymousClass3 SLICE_ACTION_PRIORITY_COMPARATOR = new Comparator() { // from class: androidx.slice.widget.SliceView.3
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int priority = ((SliceAction) obj).getPriority();
            int priority2 = ((SliceAction) obj2).getPriority();
            if (priority < 0 && priority2 < 0) {
                return 0;
            }
            if (priority >= 0) {
                if (priority2 >= 0) {
                    if (priority2 >= priority) {
                        if (priority2 <= priority) {
                            return 0;
                        }
                    }
                }
                return -1;
            }
            return 1;
        }
    };
    public ActionRow mActionRow;
    public int mActionRowHeight;
    public List mActions;
    public int[] mClickInfo;
    public Slice mCurrentSlice;
    public boolean mCurrentSliceLoggedVisible;
    public SliceMetricsWrapper mCurrentSliceMetrics;
    public SliceChildView mCurrentView;
    public int mDownX;
    public int mDownY;
    public Handler mHandler;
    public boolean mInLongpress;
    public int mLargeHeight;
    public ListContent mListContent;
    public View.OnLongClickListener mLongClickListener;
    public final AnonymousClass1 mLongpressCheck;
    public int mMinTemplateHeight;
    public View.OnClickListener mOnClickListener;
    public boolean mPressing;
    public final AnonymousClass2 mRefreshLastUpdated;
    public int mShortcutSize;
    public boolean mShowActionDividers;
    public boolean mShowHeaderDivider;
    public final boolean mShowLastUpdated;
    public boolean mShowTitleItems;
    public SliceMetadata mSliceMetadata;
    public VolumePanelDialog$$ExternalSyntheticLambda4 mSliceObserver;
    public SliceStyle mSliceStyle;
    public int mThemeTintColor;
    public int mTouchSlopSquared;
    public SliceViewPolicy mViewPolicy;

    public SliceView(Context context) {
        this(context, null);
    }

    public final void applyConfigurations() {
        this.mCurrentView.setSliceActionListener(this.mSliceObserver);
        SliceChildView sliceChildView = this.mCurrentView;
        SliceStyle sliceStyle = this.mSliceStyle;
        sliceChildView.setStyle(sliceStyle, sliceStyle.getRowStyle(null));
        this.mCurrentView.setTint(getTintColor());
        ListContent listContent = this.mListContent;
        if (listContent != null && listContent.getLayoutDir() != -1) {
            this.mCurrentView.setLayoutDirection(this.mListContent.getLayoutDir());
        } else {
            this.mCurrentView.setLayoutDirection(2);
        }
    }

    public final ViewGroup.LayoutParams getChildLp(View view) {
        if (view instanceof ShortcutView) {
            int i = this.mShortcutSize;
            return new ViewGroup.LayoutParams(i, i);
        }
        return new ViewGroup.LayoutParams(-1, -1);
    }

    public final int getTintColor() {
        int i = this.mThemeTintColor;
        if (i != -1) {
            return i;
        }
        SliceItem findSubtype = SliceQuery.findSubtype(this.mCurrentSlice, "int", "color");
        if (findSubtype != null) {
            return findSubtype.getInt();
        }
        return SliceViewUtil.getColorAttr(R.attr.colorAccent, getContext());
    }

    public final boolean handleTouchForLongpress(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return false;
                    }
                } else {
                    int rawX = ((int) motionEvent.getRawX()) - this.mDownX;
                    int rawY = ((int) motionEvent.getRawY()) - this.mDownY;
                    if ((rawY * rawY) + (rawX * rawX) > this.mTouchSlopSquared) {
                        this.mPressing = false;
                        this.mHandler.removeCallbacks(this.mLongpressCheck);
                    }
                    return this.mInLongpress;
                }
            }
            boolean z = this.mInLongpress;
            this.mPressing = false;
            this.mInLongpress = false;
            this.mHandler.removeCallbacks(this.mLongpressCheck);
            return z;
        }
        this.mHandler.removeCallbacks(this.mLongpressCheck);
        this.mDownX = (int) motionEvent.getRawX();
        this.mDownY = (int) motionEvent.getRawY();
        this.mPressing = true;
        this.mInLongpress = false;
        this.mHandler.postDelayed(this.mLongpressCheck, ViewConfiguration.getLongPressTimeout());
        return false;
    }

    public final void init(Context context, AttributeSet attributeSet, int i, int i2) {
        SliceStyle sliceStyle = new SliceStyle(context, attributeSet, i, i2);
        this.mSliceStyle = sliceStyle;
        this.mThemeTintColor = sliceStyle.mTintColor;
        this.mShortcutSize = getContext().getResources().getDimensionPixelSize(com.android.systemui.R.dimen.abc_slice_shortcut_size);
        this.mMinTemplateHeight = getContext().getResources().getDimensionPixelSize(com.android.systemui.R.dimen.abc_slice_row_min_height);
        this.mLargeHeight = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.abc_slice_large_height);
        this.mActionRowHeight = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.abc_slice_action_row_height);
        this.mViewPolicy = new SliceViewPolicy();
        TemplateView templateView = new TemplateView(getContext());
        this.mCurrentView = templateView;
        templateView.setPolicy(this.mViewPolicy);
        SliceChildView sliceChildView = this.mCurrentView;
        addView(sliceChildView, getChildLp(sliceChildView));
        applyConfigurations();
        ActionRow actionRow = new ActionRow(getContext(), true);
        this.mActionRow = actionRow;
        actionRow.setBackground(new ColorDrawable(-1118482));
        ActionRow actionRow2 = this.mActionRow;
        addView(actionRow2, getChildLp(actionRow2));
        updateActions();
        int scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mTouchSlopSquared = scaledTouchSlop * scaledTouchSlop;
        this.mHandler = new Handler();
        setClipToPadding(false);
        super.setOnClickListener(this);
    }

    public final void logSliceMetricsVisibilityChange(boolean z) {
        SliceMetricsWrapper sliceMetricsWrapper = this.mCurrentSliceMetrics;
        if (sliceMetricsWrapper != null) {
            if (z && !this.mCurrentSliceLoggedVisible) {
                sliceMetricsWrapper.logVisible();
                this.mCurrentSliceLoggedVisible = true;
            }
            if (!z && this.mCurrentSliceLoggedVisible) {
                this.mCurrentSliceMetrics.logHidden();
                this.mCurrentSliceLoggedVisible = false;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            logSliceMetricsVisibilityChange(true);
            refreshLastUpdatedLabel(true);
        }
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        boolean z;
        SliceMetadata sliceMetadata;
        ListContent listContent;
        RowContent rowContent;
        Slice slice = (Slice) obj;
        LocationBasedViewTracker.trackInputFocused(this);
        LocationBasedViewTracker.trackA11yFocus(this);
        boolean z2 = false;
        if (slice != null && slice.getUri() != null) {
            Slice slice2 = this.mCurrentSlice;
            if (slice2 == null || !slice2.getUri().equals(slice.getUri())) {
                logSliceMetricsVisibilityChange(false);
                this.mCurrentSliceMetrics = new SliceMetricsWrapper(getContext(), slice.getUri());
            }
        } else {
            logSliceMetricsVisibilityChange(false);
            this.mCurrentSliceMetrics = null;
        }
        if (slice != null && this.mCurrentSlice != null && slice.getUri().equals(this.mCurrentSlice.getUri())) {
            z = true;
        } else {
            z = false;
        }
        SliceMetadata sliceMetadata2 = this.mSliceMetadata;
        this.mCurrentSlice = slice;
        if (slice != null) {
            sliceMetadata = SliceMetadata.from(getContext(), this.mCurrentSlice);
        } else {
            sliceMetadata = null;
        }
        this.mSliceMetadata = sliceMetadata;
        if (z) {
            if (sliceMetadata2.getLoadingState() == 2 && sliceMetadata.getLoadingState() == 0) {
                return;
            }
        } else {
            this.mCurrentView.resetView();
        }
        SliceMetadata sliceMetadata3 = this.mSliceMetadata;
        if (sliceMetadata3 != null) {
            listContent = sliceMetadata3.mListContent;
        } else {
            listContent = null;
        }
        this.mListContent = listContent;
        if (this.mShowTitleItems) {
            this.mShowTitleItems = true;
            if (listContent != null && (rowContent = listContent.mHeaderContent) != null) {
                rowContent.mShowTitleItems = true;
            }
        }
        if (this.mShowHeaderDivider) {
            this.mShowHeaderDivider = true;
            if (listContent != null && listContent.mHeaderContent != null && listContent.mRowItems.size() > 1) {
                listContent.mHeaderContent.mShowBottomDivider = true;
            }
        }
        if (this.mShowActionDividers) {
            this.mShowActionDividers = true;
            ListContent listContent2 = this.mListContent;
            if (listContent2 != null) {
                Iterator it = listContent2.mRowItems.iterator();
                while (it.hasNext()) {
                    SliceContent sliceContent = (SliceContent) it.next();
                    if (sliceContent instanceof RowContent) {
                        ((RowContent) sliceContent).mShowActionDivider = true;
                    }
                }
            }
        }
        ListContent listContent3 = this.mListContent;
        if (listContent3 != null && listContent3.isValid()) {
            this.mCurrentView.setLoadingActions(null);
            SliceMetadata sliceMetadata4 = this.mSliceMetadata;
            this.mActions = sliceMetadata4.mSliceActions;
            this.mCurrentView.setLastUpdated(sliceMetadata4.mLastUpdated);
            SliceChildView sliceChildView = this.mCurrentView;
            if (this.mShowLastUpdated && this.mSliceMetadata.isExpired()) {
                z2 = true;
            }
            sliceChildView.setShowLastUpdated(z2);
            this.mCurrentView.setAllowTwoLines(ArrayUtils.contains(this.mSliceMetadata.mSlice.mHints, "permission_request"));
            this.mCurrentView.setTint(getTintColor());
            if (this.mListContent.getLayoutDir() != -1) {
                this.mCurrentView.setLayoutDirection(this.mListContent.getLayoutDir());
            } else {
                this.mCurrentView.setLayoutDirection(2);
            }
            this.mCurrentView.setSliceContent(this.mListContent);
            updateActions();
            logSliceMetricsVisibilityChange(true);
            refreshLastUpdatedLabel(true);
            return;
        }
        this.mActions = null;
        this.mCurrentView.resetView();
        updateActions();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int[] iArr;
        ListContent listContent = this.mListContent;
        if (listContent != null && listContent.getShortcut(getContext()) != null) {
            try {
                SliceActionImpl sliceActionImpl = (SliceActionImpl) this.mListContent.getShortcut(getContext());
                SliceItem sliceItem = sliceActionImpl.mActionItem;
                SliceItem sliceItem2 = sliceActionImpl.mSliceItem;
                if (sliceItem != null) {
                    sliceItem.fireActionInternal(getContext(), null);
                }
                if (sliceItem != null && this.mSliceObserver != null && (iArr = this.mClickInfo) != null && iArr.length > 1) {
                    EventInfo eventInfo = new EventInfo(this.mViewPolicy.mMode, 3, iArr[0], iArr[1]);
                    this.mSliceObserver.onSliceAction(eventInfo);
                    if (this.mCurrentSliceMetrics != null && sliceItem2.getSlice() != null && sliceItem2.getSlice().getUri() != null) {
                        this.mCurrentSliceMetrics.mSliceMetrics.logTouch(eventInfo.actionType, sliceItem2.getSlice().getUri());
                        return;
                    }
                    return;
                }
                return;
            } catch (PendingIntent.CanceledException e) {
                Log.e("SliceView", "PendingIntent for slice cannot be sent", e);
                return;
            }
        }
        View.OnClickListener onClickListener = this.mOnClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        logSliceMetricsVisibilityChange(false);
        refreshLastUpdatedLabel(false);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if ((this.mLongClickListener != null && handleTouchForLongpress(motionEvent)) || super.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        SliceChildView sliceChildView = this.mCurrentView;
        sliceChildView.layout(0, 0, sliceChildView.getMeasuredWidth(), sliceChildView.getMeasuredHeight());
        if (this.mActionRow.getVisibility() != 8) {
            int measuredHeight = sliceChildView.getMeasuredHeight();
            ActionRow actionRow = this.mActionRow;
            actionRow.layout(0, measuredHeight, actionRow.getMeasuredWidth(), this.mActionRow.getMeasuredHeight() + measuredHeight);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e1, code lost:
    
        if (r2 >= (r10 + r0)) goto L70;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.SliceView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if ((this.mLongClickListener != null && handleTouchForLongpress(motionEvent)) || super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        boolean z;
        super.onVisibilityChanged(view, i);
        if (isAttachedToWindow()) {
            boolean z2 = true;
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            logSliceMetricsVisibilityChange(z);
            if (i != 0) {
                z2 = false;
            }
            refreshLastUpdatedLabel(z2);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        boolean z2 = true;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        logSliceMetricsVisibilityChange(z);
        if (i != 0) {
            z2 = false;
        }
        refreshLastUpdatedLabel(z2);
    }

    public final void refreshLastUpdatedLabel(boolean z) {
        SliceMetadata sliceMetadata;
        boolean z2;
        if (this.mShowLastUpdated && (sliceMetadata = this.mSliceMetadata) != null) {
            if (sliceMetadata.mExpiry == -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                if (z) {
                    Handler handler = this.mHandler;
                    AnonymousClass2 anonymousClass2 = this.mRefreshLastUpdated;
                    long j = 60000;
                    if (!sliceMetadata.isExpired()) {
                        SliceMetadata sliceMetadata2 = this.mSliceMetadata;
                        sliceMetadata2.getClass();
                        long currentTimeMillis = System.currentTimeMillis();
                        long j2 = sliceMetadata2.mExpiry;
                        long j3 = 0;
                        if (j2 != 0 && j2 != -1 && currentTimeMillis <= j2) {
                            j3 = j2 - currentTimeMillis;
                        }
                        j = 60000 + j3;
                    }
                    handler.postDelayed(anonymousClass2, j);
                    return;
                }
                this.mHandler.removeCallbacks(this.mRefreshLastUpdated);
            }
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        super.setOnLongClickListener(onLongClickListener);
        this.mLongClickListener = onLongClickListener;
    }

    public final void updateActions() {
        if (this.mActions == null) {
            this.mActionRow.setVisibility(8);
            this.mCurrentView.setSliceActions(null);
            this.mCurrentView.setInsets(getPaddingStart(), getPaddingTop(), getPaddingEnd(), getPaddingBottom());
        } else {
            ArrayList arrayList = new ArrayList(this.mActions);
            Collections.sort(arrayList, SLICE_ACTION_PRIORITY_COMPARATOR);
            this.mCurrentView.setSliceActions(arrayList);
            this.mCurrentView.setInsets(getPaddingStart(), getPaddingTop(), getPaddingEnd(), getPaddingBottom());
            this.mActionRow.setVisibility(8);
        }
    }

    public SliceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.R.attr.sliceViewStyle);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.slice.widget.SliceView$1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.slice.widget.SliceView$2] */
    public SliceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mShowLastUpdated = true;
        this.mCurrentSliceLoggedVisible = false;
        this.mShowTitleItems = false;
        this.mShowHeaderDivider = false;
        this.mShowActionDividers = false;
        this.mThemeTintColor = -1;
        this.mLongpressCheck = new Runnable() { // from class: androidx.slice.widget.SliceView.1
            @Override // java.lang.Runnable
            public final void run() {
                View.OnLongClickListener onLongClickListener;
                SliceView sliceView = SliceView.this;
                if (sliceView.mPressing && (onLongClickListener = sliceView.mLongClickListener) != null) {
                    sliceView.mInLongpress = true;
                    onLongClickListener.onLongClick(sliceView);
                    SliceView.this.performHapticFeedback(0);
                }
            }
        };
        this.mRefreshLastUpdated = new Runnable() { // from class: androidx.slice.widget.SliceView.2
            @Override // java.lang.Runnable
            public final void run() {
                SliceMetadata sliceMetadata = SliceView.this.mSliceMetadata;
                if (sliceMetadata != null && sliceMetadata.isExpired()) {
                    SliceView.this.mCurrentView.setShowLastUpdated(true);
                    SliceView sliceView = SliceView.this;
                    sliceView.mCurrentView.setSliceContent(sliceView.mListContent);
                }
                SliceView.this.mHandler.postDelayed(this, 60000L);
            }
        };
        init(context, attributeSet, i, 2132019191);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.slice.widget.SliceView$1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.slice.widget.SliceView$2] */
    public SliceView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mShowLastUpdated = true;
        this.mCurrentSliceLoggedVisible = false;
        this.mShowTitleItems = false;
        this.mShowHeaderDivider = false;
        this.mShowActionDividers = false;
        this.mThemeTintColor = -1;
        this.mLongpressCheck = new Runnable() { // from class: androidx.slice.widget.SliceView.1
            @Override // java.lang.Runnable
            public final void run() {
                View.OnLongClickListener onLongClickListener;
                SliceView sliceView = SliceView.this;
                if (sliceView.mPressing && (onLongClickListener = sliceView.mLongClickListener) != null) {
                    sliceView.mInLongpress = true;
                    onLongClickListener.onLongClick(sliceView);
                    SliceView.this.performHapticFeedback(0);
                }
            }
        };
        this.mRefreshLastUpdated = new Runnable() { // from class: androidx.slice.widget.SliceView.2
            @Override // java.lang.Runnable
            public final void run() {
                SliceMetadata sliceMetadata = SliceView.this.mSliceMetadata;
                if (sliceMetadata != null && sliceMetadata.isExpired()) {
                    SliceView.this.mCurrentView.setShowLastUpdated(true);
                    SliceView sliceView = SliceView.this;
                    sliceView.mCurrentView.setSliceContent(sliceView.mListContent);
                }
                SliceView.this.mHandler.postDelayed(this, 60000L);
            }
        };
        init(context, attributeSet, i, i2);
    }
}
