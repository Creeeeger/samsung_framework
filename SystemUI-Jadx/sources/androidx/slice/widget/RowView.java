package androidx.slice.widget;

import android.app.DatePickerDialog;
import android.app.PendingIntent;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.view.ViewCompat;
import androidx.slice.SliceItem;
import androidx.slice.core.SliceActionImpl;
import androidx.slice.core.SliceQuery;
import com.android.systemui.R;
import com.android.systemui.volume.VolumePanelDialog$$ExternalSyntheticLambda4;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RowView extends SliceChildView implements View.OnClickListener, AdapterView.OnItemSelectedListener {
    public final View mActionDivider;
    public final ProgressBar mActionSpinner;
    public final ArrayMap mActions;
    public boolean mAllowTwoLines;
    public final View mBottomDivider;
    public final LinearLayout mContent;
    public final LinearLayout mEndContainer;
    public Handler mHandler;
    public List mHeaderActions;
    public int mIconSize;
    public int mImageSize;
    public boolean mIsHeader;
    public boolean mIsRangeSliding;
    public boolean mIsStarRating;
    public long mLastSentRangeUpdate;
    public final TextView mLastUpdatedText;
    public Set mLoadingActions;
    public int mMeasuredRangeHeight;
    public final TextView mPrimaryText;
    public View mRangeBar;
    public SliceItem mRangeItem;
    public int mRangeMaxValue;
    public int mRangeMinValue;
    public final AnonymousClass2 mRangeUpdater;
    public boolean mRangeUpdaterRunning;
    public int mRangeValue;
    public final AnonymousClass4 mRatingBarChangeListener;
    public final LinearLayout mRootView;
    public SliceActionImpl mRowAction;
    public RowContent mRowContent;
    public int mRowIndex;
    public final TextView mSecondaryText;
    public View mSeeMoreView;
    public final AnonymousClass3 mSeekBarChangeListener;
    public SliceItem mSelectionItem;
    public ArrayList mSelectionOptionKeys;
    public ArrayList mSelectionOptionValues;
    public Spinner mSelectionSpinner;
    public boolean mShowActionSpinner;
    public final LinearLayout mStartContainer;
    public SliceItem mStartItem;
    public final LinearLayout mSubContent;
    public final ArrayMap mToggles;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DateSetListener implements DatePickerDialog.OnDateSetListener {
        public final SliceItem mActionItem;
        public final int mRowIndex;

        public DateSetListener(SliceItem sliceItem, int i) {
            this.mActionItem = sliceItem;
            this.mRowIndex = i;
        }

        @Override // android.app.DatePickerDialog.OnDateSetListener
        public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(i, i2, i3);
            Date time = calendar.getTime();
            SliceItem sliceItem = this.mActionItem;
            if (sliceItem != null) {
                try {
                    sliceItem.fireActionInternal(RowView.this.getContext(), new Intent().addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                    RowView rowView = RowView.this;
                    if (rowView.mObserver != null) {
                        RowView.this.mObserver.onSliceAction(new EventInfo(rowView.getMode(), 6, 7, this.mRowIndex));
                    }
                } catch (PendingIntent.CanceledException e) {
                    Log.e("RowView", "PendingIntent for slice cannot be sent", e);
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class TimeSetListener implements TimePickerDialog.OnTimeSetListener {
        public final SliceItem mActionItem;
        public final int mRowIndex;

        public TimeSetListener(SliceItem sliceItem, int i) {
            this.mActionItem = sliceItem;
            this.mRowIndex = i;
        }

        @Override // android.app.TimePickerDialog.OnTimeSetListener
        public final void onTimeSet(TimePicker timePicker, int i, int i2) {
            Date time = Calendar.getInstance().getTime();
            time.setHours(i);
            time.setMinutes(i2);
            SliceItem sliceItem = this.mActionItem;
            if (sliceItem != null) {
                try {
                    sliceItem.fireActionInternal(RowView.this.getContext(), new Intent().addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                    RowView rowView = RowView.this;
                    if (rowView.mObserver != null) {
                        RowView.this.mObserver.onSliceAction(new EventInfo(rowView.getMode(), 7, 8, this.mRowIndex));
                    }
                } catch (PendingIntent.CanceledException e) {
                    Log.e("RowView", "PendingIntent for slice cannot be sent", e);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.slice.widget.RowView$2] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.slice.widget.RowView$3] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.slice.widget.RowView$4] */
    public RowView(Context context) {
        super(context);
        this.mToggles = new ArrayMap();
        this.mActions = new ArrayMap();
        this.mLoadingActions = new HashSet();
        this.mRangeUpdater = new Runnable() { // from class: androidx.slice.widget.RowView.2
            @Override // java.lang.Runnable
            public final void run() {
                RowView.this.sendSliderValue();
                RowView.this.mRangeUpdaterRunning = false;
            }
        };
        this.mSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: androidx.slice.widget.RowView.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                RowView rowView = RowView.this;
                rowView.mRangeValue = i + rowView.mRangeMinValue;
                long currentTimeMillis = System.currentTimeMillis();
                RowView rowView2 = RowView.this;
                long j = rowView2.mLastSentRangeUpdate;
                if (j != 0 && currentTimeMillis - j > 200) {
                    rowView2.mRangeUpdaterRunning = false;
                    rowView2.mHandler.removeCallbacks(rowView2.mRangeUpdater);
                    RowView.this.sendSliderValue();
                } else if (!rowView2.mRangeUpdaterRunning) {
                    rowView2.mRangeUpdaterRunning = true;
                    rowView2.mHandler.postDelayed(rowView2.mRangeUpdater, 200L);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                RowView.this.mIsRangeSliding = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                RowView rowView = RowView.this;
                rowView.mIsRangeSliding = false;
                if (rowView.mRangeUpdaterRunning) {
                    rowView.mRangeUpdaterRunning = false;
                    rowView.mHandler.removeCallbacks(rowView.mRangeUpdater);
                    RowView rowView2 = RowView.this;
                    int progress = seekBar.getProgress();
                    RowView rowView3 = RowView.this;
                    rowView2.mRangeValue = progress + rowView3.mRangeMinValue;
                    rowView3.sendSliderValue();
                }
            }
        };
        this.mRatingBarChangeListener = new RatingBar.OnRatingBarChangeListener() { // from class: androidx.slice.widget.RowView.4
            @Override // android.widget.RatingBar.OnRatingBarChangeListener
            public final void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
                RowView.this.mRangeValue = Math.round(f + r6.mRangeMinValue);
                long currentTimeMillis = System.currentTimeMillis();
                RowView rowView = RowView.this;
                long j = rowView.mLastSentRangeUpdate;
                if (j != 0 && currentTimeMillis - j > 200) {
                    rowView.mRangeUpdaterRunning = false;
                    rowView.mHandler.removeCallbacks(rowView.mRangeUpdater);
                    RowView.this.sendSliderValue();
                } else if (!rowView.mRangeUpdaterRunning) {
                    rowView.mRangeUpdaterRunning = true;
                    rowView.mHandler.postDelayed(rowView.mRangeUpdater, 200L);
                }
            }
        };
        this.mIconSize = getContext().getResources().getDimensionPixelSize(R.dimen.abc_slice_icon_size);
        this.mImageSize = getContext().getResources().getDimensionPixelSize(R.dimen.abc_slice_small_image_size);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.abc_slice_small_template, (ViewGroup) this, false);
        this.mRootView = linearLayout;
        addView(linearLayout);
        this.mStartContainer = (LinearLayout) findViewById(R.id.icon_frame);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(android.R.id.content);
        this.mContent = linearLayout2;
        this.mSubContent = (LinearLayout) findViewById(R.id.subcontent);
        this.mPrimaryText = (TextView) findViewById(android.R.id.title);
        this.mSecondaryText = (TextView) findViewById(android.R.id.summary);
        this.mLastUpdatedText = (TextView) findViewById(R.id.last_updated);
        this.mBottomDivider = findViewById(R.id.bottom_divider);
        this.mActionDivider = findViewById(R.id.action_divider);
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.action_sent_indicator);
        this.mActionSpinner = progressBar;
        int colorAttr = SliceViewUtil.getColorAttr(R.attr.colorControlHighlight, getContext());
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        if (indeterminateDrawable != null && colorAttr != 0) {
            indeterminateDrawable.setColorFilter(colorAttr, PorterDuff.Mode.MULTIPLY);
            progressBar.setProgressDrawable(indeterminateDrawable);
        }
        this.mEndContainer = (LinearLayout) findViewById(android.R.id.widget_frame);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setImportantForAccessibility(this, 2);
        ViewCompat.Api16Impl.setImportantForAccessibility(linearLayout2, 2);
    }

    public static void setViewSidePaddings(View view, int i, int i2) {
        boolean z;
        if (i < 0 && i2 < 0) {
            z = true;
        } else {
            z = false;
        }
        if (view != null && !z) {
            if (i < 0) {
                i = view.getPaddingStart();
            }
            int paddingTop = view.getPaddingTop();
            if (i2 < 0) {
                i2 = view.getPaddingEnd();
            }
            view.setPaddingRelative(i, paddingTop, i2, view.getPaddingBottom());
        }
    }

    public final void addAction(SliceActionImpl sliceActionImpl, int i, ViewGroup viewGroup, boolean z) {
        int i2;
        SliceActionView sliceActionView = new SliceActionView(getContext(), this.mSliceStyle, this.mRowStyle);
        viewGroup.addView(sliceActionView);
        if (viewGroup.getVisibility() == 8) {
            viewGroup.setVisibility(0);
        }
        boolean isToggle = sliceActionImpl.isToggle();
        int i3 = !isToggle ? 1 : 0;
        if (isToggle) {
            i2 = 3;
        } else {
            i2 = 0;
        }
        EventInfo eventInfo = new EventInfo(getMode(), i3, i2, this.mRowIndex);
        if (z) {
            eventInfo.actionPosition = 0;
            eventInfo.actionIndex = 0;
            eventInfo.actionCount = 1;
        }
        sliceActionView.setAction(sliceActionImpl, eventInfo, this.mObserver, i, this.mLoadingListener);
        if (this.mLoadingActions.contains(sliceActionImpl.mSliceItem)) {
            if (sliceActionView.mProgressView == null) {
                ProgressBar progressBar = (ProgressBar) LayoutInflater.from(sliceActionView.getContext()).inflate(R.layout.abc_slice_progress_view, (ViewGroup) sliceActionView, false);
                sliceActionView.mProgressView = progressBar;
                sliceActionView.addView(progressBar);
            }
            Context context = sliceActionView.getContext();
            ProgressBar progressBar2 = sliceActionView.mProgressView;
            int colorAttr = SliceViewUtil.getColorAttr(R.attr.colorControlHighlight, context);
            Drawable indeterminateDrawable = progressBar2.getIndeterminateDrawable();
            if (indeterminateDrawable != null && colorAttr != 0) {
                indeterminateDrawable.setColorFilter(colorAttr, PorterDuff.Mode.MULTIPLY);
                progressBar2.setProgressDrawable(indeterminateDrawable);
            }
            sliceActionView.mActionView.setVisibility(8);
            sliceActionView.mProgressView.setVisibility(0);
        }
        if (isToggle) {
            this.mToggles.put(sliceActionImpl, sliceActionView);
        } else {
            this.mActions.put(sliceActionImpl, sliceActionView);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean addItem(androidx.slice.SliceItem r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.RowView.addItem(androidx.slice.SliceItem, int, boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addSubtitle(boolean r9) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.RowView.addSubtitle(boolean):void");
    }

    public final int getRowContentHeight() {
        int height = this.mRowContent.getHeight(this.mSliceStyle, this.mViewPolicy);
        if (this.mRangeBar != null && this.mStartItem == null) {
            height -= this.mSliceStyle.mRowRangeHeight;
        }
        if (this.mSelectionSpinner != null) {
            return height - this.mSliceStyle.mRowSelectionHeight;
        }
        return height;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SliceActionView sliceActionView;
        SliceAdapter sliceAdapter;
        SliceActionImpl sliceActionImpl;
        SliceActionImpl sliceActionImpl2 = this.mRowAction;
        if (sliceActionImpl2 != null && sliceActionImpl2.mActionItem != null) {
            if (sliceActionImpl2.getSubtype() != null) {
                String subtype = this.mRowAction.getSubtype();
                subtype.getClass();
                char c = 65535;
                switch (subtype.hashCode()) {
                    case -868304044:
                        if (subtype.equals("toggle")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 759128640:
                        if (subtype.equals("time_picker")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1250407999:
                        if (subtype.equals("date_picker")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        sliceActionView = (SliceActionView) this.mToggles.get(this.mRowAction);
                        break;
                    case 1:
                        onClickPicker(false);
                        return;
                    case 2:
                        onClickPicker(true);
                        return;
                    default:
                        sliceActionView = (SliceActionView) this.mActions.get(this.mRowAction);
                        break;
                }
            } else {
                sliceActionView = (SliceActionView) this.mActions.get(this.mRowAction);
            }
            if (sliceActionView != null && !(view instanceof SliceActionView)) {
                SliceActionImpl sliceActionImpl3 = sliceActionView.mSliceAction;
                if (sliceActionImpl3 != null) {
                    if (sliceActionImpl3.isToggle()) {
                        if (sliceActionView.mActionView != null && (sliceActionImpl = sliceActionView.mSliceAction) != null && sliceActionImpl.isToggle()) {
                            ((Checkable) sliceActionView.mActionView).toggle();
                            return;
                        }
                        return;
                    }
                    sliceActionView.sendActionInternal();
                    return;
                }
                return;
            }
            if (this.mRowContent.mIsHeader) {
                performClick();
                return;
            }
            try {
                this.mRowAction.mActionItem.fireActionInternal(getContext(), null);
                this.mShowActionSpinner = false;
                if (this.mObserver != null) {
                    EventInfo eventInfo = new EventInfo(getMode(), 3, 0, this.mRowIndex);
                    VolumePanelDialog$$ExternalSyntheticLambda4 volumePanelDialog$$ExternalSyntheticLambda4 = this.mObserver;
                    SliceItem sliceItem = this.mRowAction.mSliceItem;
                    volumePanelDialog$$ExternalSyntheticLambda4.onSliceAction(eventInfo);
                }
                if (this.mShowActionSpinner && (sliceAdapter = this.mLoadingListener) != null) {
                    sliceAdapter.onSliceActionLoading(this.mRowAction.mSliceItem, this.mRowIndex);
                    this.mLoadingActions.add(this.mRowAction.mSliceItem);
                }
                updateActionSpinner();
            } catch (PendingIntent.CanceledException e) {
                Log.e("RowView", "PendingIntent for slice cannot be sent", e);
            }
        }
    }

    public final void onClickPicker(boolean z) {
        if (this.mRowAction == null) {
            return;
        }
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("ASDF", z, ":");
        m.append(this.mRowAction.mSliceItem);
        Log.d("ASDF", m.toString());
        SliceItem findSubtype = SliceQuery.findSubtype(this.mRowAction.mSliceItem, "long", "millis");
        if (findSubtype == null) {
            return;
        }
        int i = this.mRowIndex;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(findSubtype.getLong()));
        if (z) {
            new DatePickerDialog(getContext(), R.style.DialogTheme, new DateSetListener(this.mRowAction.mSliceItem, i), calendar.get(1), calendar.get(2), calendar.get(5)).show();
        } else {
            new TimePickerDialog(getContext(), R.style.DialogTheme, new TimeSetListener(this.mRowAction.mSliceItem, i), calendar.get(11), calendar.get(12), false).show();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (this.mSelectionItem != null && adapterView == this.mSelectionSpinner && i >= 0 && i < this.mSelectionOptionKeys.size()) {
            if (this.mObserver != null) {
                this.mObserver.onSliceAction(new EventInfo(getMode(), 5, 6, this.mRowIndex));
            }
            try {
                this.mSelectionItem.fireActionInternal(getContext(), new Intent().addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).putExtra("android.app.slice.extra.SELECTION", (String) this.mSelectionOptionKeys.get(i)));
            } catch (PendingIntent.CanceledException e) {
                Log.e("RowView", "PendingIntent for slice cannot be sent", e);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        LinearLayout linearLayout = this.mRootView;
        linearLayout.layout(paddingLeft, this.mInsetTop, linearLayout.getMeasuredWidth() + paddingLeft, getRowContentHeight() + this.mInsetTop);
        if (this.mRangeBar != null && this.mStartItem == null) {
            int rowContentHeight = getRowContentHeight() + ((this.mSliceStyle.mRowRangeHeight - this.mMeasuredRangeHeight) / 2) + this.mInsetTop;
            int i5 = this.mMeasuredRangeHeight + rowContentHeight;
            View view = this.mRangeBar;
            view.layout(paddingLeft, rowContentHeight, view.getMeasuredWidth() + paddingLeft, i5);
            return;
        }
        if (this.mSelectionSpinner != null) {
            int rowContentHeight2 = getRowContentHeight() + this.mInsetTop;
            int measuredHeight = this.mSelectionSpinner.getMeasuredHeight() + rowContentHeight2;
            Spinner spinner = this.mSelectionSpinner;
            spinner.layout(paddingLeft, rowContentHeight2, spinner.getMeasuredWidth() + paddingLeft, measuredHeight);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int rowContentHeight = getRowContentHeight();
        if (rowContentHeight != 0) {
            this.mRootView.setVisibility(0);
            measureChild(this.mRootView, i, View.MeasureSpec.makeMeasureSpec(rowContentHeight + this.mInsetTop + this.mInsetBottom, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
            i3 = this.mRootView.getMeasuredWidth();
        } else {
            this.mRootView.setVisibility(8);
            i3 = 0;
        }
        View view = this.mRangeBar;
        if (view != null && this.mStartItem == null) {
            measureChild(view, i, View.MeasureSpec.makeMeasureSpec(this.mSliceStyle.mRowRangeHeight + this.mInsetTop + this.mInsetBottom, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
            this.mMeasuredRangeHeight = this.mRangeBar.getMeasuredHeight();
            i3 = Math.max(i3, this.mRangeBar.getMeasuredWidth());
        } else {
            Spinner spinner = this.mSelectionSpinner;
            if (spinner != null) {
                measureChild(spinner, i, View.MeasureSpec.makeMeasureSpec(this.mSliceStyle.mRowSelectionHeight + this.mInsetTop + this.mInsetBottom, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
                i3 = Math.max(i3, this.mSelectionSpinner.getMeasuredWidth());
            }
        }
        int max = Math.max(i3 + this.mInsetStart + this.mInsetEnd, getSuggestedMinimumWidth());
        RowContent rowContent = this.mRowContent;
        if (rowContent != null) {
            i4 = rowContent.getHeight(this.mSliceStyle, this.mViewPolicy);
        } else {
            i4 = 0;
        }
        setMeasuredDimension(FrameLayout.resolveSizeAndState(max, i, 0), i4 + this.mInsetTop + this.mInsetBottom);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void populateViews(boolean z) {
        boolean z2;
        CharSequence charSequence;
        SliceItem sliceItem;
        boolean z3;
        int i;
        int i2;
        boolean z4;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z5;
        boolean z6;
        ProgressBar progressBar;
        int i7;
        Drawable progressDrawable;
        IconCompat iconCompat;
        Drawable loadDrawable;
        int i8;
        boolean z7;
        boolean z8;
        int i9;
        int i10;
        if (z && this.mIsRangeSliding) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            resetViewState();
        }
        if (this.mRowContent.getLayoutDir() != -1) {
            setLayoutDirection(this.mRowContent.getLayoutDir());
        }
        if (this.mRowContent.isDefaultSeeMore()) {
            final Button button = (Button) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_row_show_more, (ViewGroup) this, false);
            button.setOnClickListener(new View.OnClickListener() { // from class: androidx.slice.widget.RowView.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    try {
                        RowView rowView = RowView.this;
                        if (rowView.mObserver != null) {
                            EventInfo eventInfo = new EventInfo(rowView.getMode(), 4, 0, RowView.this.mRowIndex);
                            RowView rowView2 = RowView.this;
                            VolumePanelDialog$$ExternalSyntheticLambda4 volumePanelDialog$$ExternalSyntheticLambda4 = rowView2.mObserver;
                            SliceItem sliceItem2 = rowView2.mRowContent.mSliceItem;
                            volumePanelDialog$$ExternalSyntheticLambda4.onSliceAction(eventInfo);
                        }
                        RowView rowView3 = RowView.this;
                        rowView3.mRowContent.mSliceItem.fireActionInternal(rowView3.getContext(), null);
                        rowView3.mShowActionSpinner = false;
                        RowView rowView4 = RowView.this;
                        if (rowView4.mShowActionSpinner) {
                            SliceAdapter sliceAdapter = rowView4.mLoadingListener;
                            if (sliceAdapter != null) {
                                sliceAdapter.onSliceActionLoading(rowView4.mRowContent.mSliceItem, rowView4.mRowIndex);
                            }
                            RowView rowView5 = RowView.this;
                            rowView5.mLoadingActions.add(rowView5.mRowContent.mSliceItem);
                            button.setVisibility(8);
                        }
                        RowView.this.updateActionSpinner();
                    } catch (PendingIntent.CanceledException e) {
                        Log.e("RowView", "PendingIntent for slice cannot be sent", e);
                    }
                }
            });
            int i11 = this.mTintColor;
            if (i11 != -1) {
                button.setTextColor(i11);
            }
            this.mSeeMoreView = button;
            this.mRootView.addView(button);
            if (this.mLoadingActions.contains(this.mRowContent.mSliceItem)) {
                this.mShowActionSpinner = true;
                button.setVisibility(8);
                updateActionSpinner();
                return;
            }
            return;
        }
        SliceItem sliceItem2 = this.mRowContent.mContentDescr;
        if (sliceItem2 != null) {
            charSequence = (CharSequence) sliceItem2.mObj;
        } else {
            charSequence = null;
        }
        if (charSequence != null) {
            this.mContent.setContentDescription(charSequence);
        }
        RowContent rowContent = this.mRowContent;
        boolean z9 = rowContent.mIsHeader;
        if (z9 && !rowContent.mShowTitleItems) {
            sliceItem = null;
        } else {
            sliceItem = rowContent.mStartItem;
        }
        this.mStartItem = sliceItem;
        if (sliceItem != null && (!z9 || rowContent.mShowTitleItems)) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            z3 = addItem(sliceItem, this.mTintColor, true);
        }
        LinearLayout linearLayout = this.mStartContainer;
        if (z3) {
            i = 0;
        } else {
            i = 8;
        }
        linearLayout.setVisibility(i);
        SliceItem sliceItem3 = this.mRowContent.mTitleItem;
        if (sliceItem3 != null) {
            this.mPrimaryText.setText(sliceItem3.getSanitizedText());
        }
        SliceStyle sliceStyle = this.mSliceStyle;
        if (sliceStyle != null) {
            TextView textView = this.mPrimaryText;
            if (this.mIsHeader) {
                i9 = sliceStyle.mHeaderTitleSize;
            } else {
                i9 = sliceStyle.mTitleSize;
            }
            textView.setTextSize(0, i9);
            TextView textView2 = this.mPrimaryText;
            RowStyle rowStyle = this.mRowStyle;
            Integer num = rowStyle.mTitleColor;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = rowStyle.mSliceStyle.mTitleColor;
            }
            textView2.setTextColor(i10);
        }
        TextView textView3 = this.mPrimaryText;
        if (sliceItem3 != null) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        textView3.setVisibility(i2);
        if (sliceItem3 != null) {
            z4 = true;
        } else {
            z4 = false;
        }
        addSubtitle(z4);
        View view = this.mBottomDivider;
        if (this.mRowContent.mShowBottomDivider) {
            i3 = 0;
        } else {
            i3 = 8;
        }
        view.setVisibility(i3);
        SliceItem sliceItem4 = this.mRowContent.mPrimaryAction;
        if (sliceItem4 != null && sliceItem4 != this.mStartItem) {
            SliceActionImpl sliceActionImpl = new SliceActionImpl(sliceItem4);
            this.mRowAction = sliceActionImpl;
            if (sliceActionImpl.getSubtype() != null) {
                String subtype = this.mRowAction.getSubtype();
                subtype.getClass();
                switch (subtype.hashCode()) {
                    case -868304044:
                        if (subtype.equals("toggle")) {
                            z8 = false;
                            break;
                        }
                        z8 = -1;
                        break;
                    case 759128640:
                        if (subtype.equals("time_picker")) {
                            z8 = true;
                            break;
                        }
                        z8 = -1;
                        break;
                    case 1250407999:
                        if (subtype.equals("date_picker")) {
                            z8 = 2;
                            break;
                        }
                        z8 = -1;
                        break;
                    default:
                        z8 = -1;
                        break;
                }
                switch (z8) {
                    case false:
                        addAction(this.mRowAction, this.mTintColor, this.mEndContainer, false);
                        setViewClickable(this.mRootView, true);
                        return;
                    case true:
                        setViewClickable(this.mRootView, true);
                        return;
                    case true:
                        setViewClickable(this.mRootView, true);
                        return;
                }
            }
        }
        SliceItem sliceItem5 = this.mRowContent.mRange;
        if (sliceItem5 != null) {
            if (this.mRowAction != null) {
                setViewClickable(this.mRootView, true);
            }
            this.mRangeItem = sliceItem5;
            SliceItem findSubtype = SliceQuery.findSubtype(sliceItem5, "int", "range_mode");
            if (findSubtype != null) {
                if (findSubtype.getInt() == 2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                this.mIsStarRating = z7;
            }
            if (!z2) {
                SliceItem findSubtype2 = SliceQuery.findSubtype(this.mRangeItem, "int", "min");
                if (findSubtype2 != null) {
                    i4 = findSubtype2.getInt();
                } else {
                    i4 = 0;
                }
                this.mRangeMinValue = i4;
                SliceItem findSubtype3 = SliceQuery.findSubtype(this.mRangeItem, "int", "max");
                if (this.mIsStarRating) {
                    i5 = 5;
                } else {
                    i5 = 100;
                }
                if (findSubtype3 != null) {
                    i5 = findSubtype3.getInt();
                }
                this.mRangeMaxValue = i5;
                SliceItem findSubtype4 = SliceQuery.findSubtype(this.mRangeItem, "int", "value");
                if (findSubtype4 != null) {
                    i6 = findSubtype4.getInt() - i4;
                } else {
                    i6 = 0;
                }
                this.mRangeValue = i6;
                if (this.mHandler == null) {
                    this.mHandler = new Handler();
                }
                if (this.mIsStarRating) {
                    RatingBar ratingBar = new RatingBar(getContext());
                    ((LayerDrawable) ratingBar.getProgressDrawable()).getDrawable(2).setColorFilter(this.mTintColor, PorterDuff.Mode.SRC_IN);
                    ratingBar.setStepSize(1.0f);
                    ratingBar.setNumStars(this.mRangeMaxValue);
                    ratingBar.setRating(this.mRangeValue);
                    ratingBar.setVisibility(0);
                    LinearLayout linearLayout2 = new LinearLayout(getContext());
                    linearLayout2.setGravity(17);
                    linearLayout2.setVisibility(0);
                    linearLayout2.addView(ratingBar, new FrameLayout.LayoutParams(-2, -2));
                    addView(linearLayout2, new FrameLayout.LayoutParams(-1, -2));
                    ratingBar.setOnRatingBarChangeListener(this.mRatingBarChangeListener);
                    this.mRangeBar = linearLayout2;
                } else {
                    SliceItem findSubtype5 = SliceQuery.findSubtype(this.mRangeItem, "int", "range_mode");
                    if (findSubtype5 != null && findSubtype5.getInt() == 1) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    boolean equals = "action".equals(this.mRangeItem.mFormat);
                    if (this.mStartItem == null) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (equals) {
                        if (z6) {
                            progressBar = new SeekBar(getContext());
                        } else {
                            progressBar = (SeekBar) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_seekbar_view, (ViewGroup) this, false);
                            RowStyle rowStyle2 = this.mRowStyle;
                            if (rowStyle2 != null && progressBar != null && (i8 = rowStyle2.mSeekBarInlineWidth) >= 0) {
                                ViewGroup.LayoutParams layoutParams = progressBar.getLayoutParams();
                                layoutParams.width = i8;
                                progressBar.setLayoutParams(layoutParams);
                            }
                        }
                    } else {
                        if (z6) {
                            progressBar = new ProgressBar(getContext(), null, android.R.attr.progressBarStyleHorizontal);
                        } else {
                            progressBar = (ProgressBar) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_progress_inline_view, (ViewGroup) this, false);
                            RowStyle rowStyle3 = this.mRowStyle;
                            if (rowStyle3 != null) {
                                if (progressBar != null && (i7 = rowStyle3.mProgressBarInlineWidth) >= 0) {
                                    ViewGroup.LayoutParams layoutParams2 = progressBar.getLayoutParams();
                                    layoutParams2.width = i7;
                                    progressBar.setLayoutParams(layoutParams2);
                                }
                                RowStyle rowStyle4 = this.mRowStyle;
                                setViewSidePaddings(progressBar, rowStyle4.mProgressBarStartPadding, rowStyle4.mProgressBarEndPadding);
                            }
                        }
                        if (z5) {
                            progressBar.setIndeterminate(true);
                        }
                    }
                    if (z5) {
                        progressDrawable = progressBar.getIndeterminateDrawable();
                    } else {
                        progressDrawable = progressBar.getProgressDrawable();
                    }
                    int i12 = this.mTintColor;
                    if (i12 != -1 && progressDrawable != null) {
                        progressDrawable.setTint(i12);
                        if (z5) {
                            progressBar.setIndeterminateDrawable(progressDrawable);
                        } else {
                            progressBar.setProgressDrawable(progressDrawable);
                        }
                    }
                    progressBar.setMax(this.mRangeMaxValue - this.mRangeMinValue);
                    progressBar.setProgress(this.mRangeValue);
                    progressBar.setVisibility(0);
                    if (this.mStartItem == null) {
                        addView(progressBar, new FrameLayout.LayoutParams(-1, -2));
                    } else {
                        this.mSubContent.setVisibility(8);
                        this.mContent.addView(progressBar, 1);
                    }
                    this.mRangeBar = progressBar;
                    if (equals) {
                        SliceItem inputRangeThumb = this.mRowContent.getInputRangeThumb();
                        SeekBar seekBar = (SeekBar) this.mRangeBar;
                        if (inputRangeThumb != null && (iconCompat = (IconCompat) inputRangeThumb.mObj) != null && (loadDrawable = iconCompat.loadDrawable(getContext())) != null) {
                            seekBar.setThumb(loadDrawable);
                        }
                        Drawable thumb = seekBar.getThumb();
                        int i13 = this.mTintColor;
                        if (i13 != -1 && thumb != null) {
                            thumb.setTint(i13);
                            seekBar.setThumb(thumb);
                        }
                        seekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
                    }
                }
            }
            if (this.mStartItem == null) {
                return;
            }
        }
        SliceItem sliceItem6 = this.mRowContent.mSelection;
        if (sliceItem6 != null) {
            this.mSelectionItem = sliceItem6;
            if (this.mHandler == null) {
                this.mHandler = new Handler();
            }
            this.mSelectionOptionKeys = new ArrayList();
            this.mSelectionOptionValues = new ArrayList();
            List items = sliceItem6.getSlice().getItems();
            for (int i14 = 0; i14 < items.size(); i14++) {
                SliceItem sliceItem7 = (SliceItem) items.get(i14);
                if (sliceItem7.hasHint("selection_option")) {
                    SliceItem findSubtype6 = SliceQuery.findSubtype(sliceItem7, "text", "selection_option_key");
                    SliceItem findSubtype7 = SliceQuery.findSubtype(sliceItem7, "text", "selection_option_value");
                    if (findSubtype6 != null && findSubtype7 != null) {
                        this.mSelectionOptionKeys.add(((CharSequence) findSubtype6.mObj).toString());
                        this.mSelectionOptionValues.add(findSubtype7.getSanitizedText());
                    }
                }
            }
            this.mSelectionSpinner = (Spinner) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_row_selection, (ViewGroup) this, false);
            ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), R.layout.abc_slice_row_selection_text, this.mSelectionOptionValues);
            arrayAdapter.setDropDownViewResource(R.layout.abc_slice_row_selection_dropdown_text);
            this.mSelectionSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
            addView(this.mSelectionSpinner);
            this.mSelectionSpinner.setOnItemSelectedListener(this);
            return;
        }
        updateEndItems();
        updateActionSpinner();
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void resetView() {
        this.mRowContent = null;
        this.mLoadingActions.clear();
        resetViewState();
    }

    public final void resetViewState() {
        this.mRootView.setVisibility(0);
        setLayoutDirection(2);
        setViewClickable(this.mRootView, false);
        setViewClickable(this.mContent, false);
        this.mStartContainer.removeAllViews();
        this.mEndContainer.removeAllViews();
        this.mEndContainer.setVisibility(8);
        this.mPrimaryText.setText((CharSequence) null);
        this.mSecondaryText.setText((CharSequence) null);
        this.mLastUpdatedText.setText((CharSequence) null);
        this.mLastUpdatedText.setVisibility(8);
        this.mToggles.clear();
        this.mActions.clear();
        this.mRowAction = null;
        this.mBottomDivider.setVisibility(8);
        this.mActionDivider.setVisibility(8);
        View view = this.mSeeMoreView;
        if (view != null) {
            this.mRootView.removeView(view);
            this.mSeeMoreView = null;
        }
        this.mIsRangeSliding = false;
        this.mRangeItem = null;
        this.mRangeMinValue = 0;
        this.mRangeMaxValue = 0;
        this.mRangeValue = 0;
        this.mLastSentRangeUpdate = 0L;
        this.mHandler = null;
        View view2 = this.mRangeBar;
        if (view2 != null) {
            if (this.mStartItem == null) {
                removeView(view2);
            } else {
                this.mContent.removeView(view2);
            }
            this.mRangeBar = null;
        }
        this.mSubContent.setVisibility(0);
        this.mStartItem = null;
        this.mActionSpinner.setVisibility(8);
        Spinner spinner = this.mSelectionSpinner;
        if (spinner != null) {
            removeView(spinner);
            this.mSelectionSpinner = null;
        }
        this.mSelectionItem = null;
    }

    public final void sendSliderValue() {
        if (this.mRangeItem == null) {
            return;
        }
        try {
            this.mLastSentRangeUpdate = System.currentTimeMillis();
            this.mRangeItem.fireActionInternal(getContext(), new Intent().addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).putExtra("android.app.slice.extra.RANGE_VALUE", this.mRangeValue));
            if (this.mObserver != null) {
                EventInfo eventInfo = new EventInfo(getMode(), 2, 4, this.mRowIndex);
                eventInfo.state = this.mRangeValue;
                this.mObserver.onSliceAction(eventInfo);
            }
        } catch (PendingIntent.CanceledException e) {
            Log.e("RowView", "PendingIntent for slice cannot be sent", e);
        }
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setAllowTwoLines(boolean z) {
        this.mAllowTwoLines = z;
        if (this.mRowContent != null) {
            populateViews(true);
        }
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setInsets(int i, int i2, int i3, int i4) {
        super.setInsets(i, i2, i3, i4);
        setPadding(i, i2, i3, i4);
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setLastUpdated(long j) {
        boolean z;
        this.mLastUpdated = j;
        RowContent rowContent = this.mRowContent;
        if (rowContent != null) {
            SliceItem sliceItem = rowContent.mTitleItem;
            if (sliceItem != null && TextUtils.isEmpty(sliceItem.getSanitizedText())) {
                z = true;
            } else {
                z = false;
            }
            addSubtitle(z);
        }
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setLoadingActions(Set set) {
        if (set == null) {
            this.mLoadingActions.clear();
            this.mShowActionSpinner = false;
        } else {
            this.mLoadingActions = set;
        }
        updateEndItems();
        updateActionSpinner();
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setShowLastUpdated(boolean z) {
        this.mShowLastUpdated = z;
        if (this.mRowContent != null) {
            populateViews(true);
        }
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setSliceActions(List list) {
        this.mHeaderActions = list;
        if (this.mRowContent != null) {
            updateEndItems();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r2 != false) goto L27;
     */
    @Override // androidx.slice.widget.SliceChildView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setSliceItem(androidx.slice.widget.SliceContent r4, boolean r5, int r6, int r7, com.android.systemui.volume.VolumePanelDialog$$ExternalSyntheticLambda4 r8) {
        /*
            r3 = this;
            r3.mObserver = r8
            androidx.slice.widget.RowContent r7 = r3.mRowContent
            r8 = 0
            if (r7 == 0) goto L47
            boolean r7 = r7.isValid()
            if (r7 == 0) goto L47
            androidx.slice.widget.RowContent r7 = r3.mRowContent
            if (r7 == 0) goto L19
            androidx.slice.SliceStructure r0 = new androidx.slice.SliceStructure
            androidx.slice.SliceItem r7 = r7.mSliceItem
            r0.<init>(r7)
            goto L1a
        L19:
            r0 = 0
        L1a:
            androidx.slice.SliceStructure r7 = new androidx.slice.SliceStructure
            androidx.slice.SliceItem r1 = r4.mSliceItem
            androidx.slice.Slice r1 = r1.getSlice()
            r7.<init>(r1)
            r1 = 1
            if (r0 == 0) goto L30
            boolean r2 = r0.equals(r7)
            if (r2 == 0) goto L30
            r2 = r1
            goto L31
        L30:
            r2 = r8
        L31:
            if (r0 == 0) goto L41
            android.net.Uri r0 = r0.mUri
            if (r0 == 0) goto L41
            android.net.Uri r7 = r7.mUri
            boolean r7 = r0.equals(r7)
            if (r7 == 0) goto L41
            r7 = r1
            goto L42
        L41:
            r7 = r8
        L42:
            if (r7 == 0) goto L47
            if (r2 == 0) goto L47
            goto L48
        L47:
            r1 = r8
        L48:
            r3.mShowActionSpinner = r8
            r3.mIsHeader = r5
            androidx.slice.widget.RowContent r4 = (androidx.slice.widget.RowContent) r4
            r3.mRowContent = r4
            r3.mRowIndex = r6
            r3.populateViews(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.RowView.setSliceItem(androidx.slice.widget.SliceContent, boolean, int, int, com.android.systemui.volume.VolumePanelDialog$$ExternalSyntheticLambda4):void");
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setStyle(SliceStyle sliceStyle, RowStyle rowStyle) {
        boolean z;
        int i;
        int i2;
        this.mSliceStyle = sliceStyle;
        this.mRowStyle = rowStyle;
        if (sliceStyle != null) {
            setViewSidePaddings(this.mStartContainer, rowStyle.mTitleItemStartPadding, rowStyle.mTitleItemEndPadding);
            LinearLayout linearLayout = this.mContent;
            RowStyle rowStyle2 = this.mRowStyle;
            setViewSidePaddings(linearLayout, rowStyle2.mContentStartPadding, rowStyle2.mContentEndPadding);
            TextView textView = this.mPrimaryText;
            RowStyle rowStyle3 = this.mRowStyle;
            setViewSidePaddings(textView, rowStyle3.mTitleStartPadding, rowStyle3.mTitleEndPadding);
            LinearLayout linearLayout2 = this.mSubContent;
            RowStyle rowStyle4 = this.mRowStyle;
            setViewSidePaddings(linearLayout2, rowStyle4.mSubContentStartPadding, rowStyle4.mSubContentEndPadding);
            LinearLayout linearLayout3 = this.mEndContainer;
            RowStyle rowStyle5 = this.mRowStyle;
            setViewSidePaddings(linearLayout3, rowStyle5.mEndItemStartPadding, rowStyle5.mEndItemEndPadding);
            View view = this.mBottomDivider;
            RowStyle rowStyle6 = this.mRowStyle;
            int i3 = rowStyle6.mBottomDividerStartPadding;
            int i4 = rowStyle6.mBottomDividerEndPadding;
            if (i3 < 0 && i4 < 0) {
                z = true;
            } else {
                z = false;
            }
            if (view != null && !z) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                if (i3 >= 0) {
                    marginLayoutParams.setMarginStart(i3);
                }
                if (i4 >= 0) {
                    marginLayoutParams.setMarginEnd(i4);
                }
                view.setLayoutParams(marginLayoutParams);
            }
            View view2 = this.mActionDivider;
            int i5 = this.mRowStyle.mActionDividerHeight;
            if (view2 != null && i5 >= 0) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                layoutParams.height = i5;
                view2.setLayoutParams(layoutParams);
            }
            RowStyle rowStyle7 = this.mRowStyle;
            Integer num = rowStyle7.mTintColor;
            if (num != null) {
                i = num.intValue();
            } else {
                i = rowStyle7.mSliceStyle.mTintColor;
            }
            if (i != -1) {
                RowStyle rowStyle8 = this.mRowStyle;
                Integer num2 = rowStyle8.mTintColor;
                if (num2 != null) {
                    i2 = num2.intValue();
                } else {
                    i2 = rowStyle8.mSliceStyle.mTintColor;
                }
                setTint(i2);
            }
        }
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setTint(int i) {
        this.mTintColor = i;
        if (this.mRowContent != null) {
            populateViews(true);
        }
    }

    public final void setViewClickable(View view, boolean z) {
        View.OnClickListener onClickListener;
        Drawable drawable = null;
        if (z) {
            onClickListener = this;
        } else {
            onClickListener = null;
        }
        view.setOnClickListener(onClickListener);
        if (z) {
            drawable = SliceViewUtil.getDrawable(android.R.attr.selectableItemBackground, getContext());
        }
        view.setBackground(drawable);
        view.setClickable(z);
    }

    public final void updateActionSpinner() {
        int i;
        ProgressBar progressBar = this.mActionSpinner;
        if (this.mShowActionSpinner) {
            i = 0;
        } else {
            i = 8;
        }
        progressBar.setVisibility(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0139  */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateEndItems() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.RowView.updateEndItems():void");
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
