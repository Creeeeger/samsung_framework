package androidx.slice.widget;

import android.app.DatePickerDialog;
import android.app.PendingIntent;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.slice.CornerDrawable;
import androidx.slice.SliceItem;
import androidx.slice.core.SliceQuery;
import androidx.slice.widget.GridContent;
import com.android.systemui.R;
import com.android.systemui.volume.VolumePanelDialog$$ExternalSyntheticLambda4;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class GridRowView extends SliceChildView implements View.OnClickListener, View.OnTouchListener {
    public final View mForeground;
    public GridContent mGridContent;
    public final int mGutter;
    public final int mIconSize;
    public final int mLargeImageHeight;
    public final int[] mLoc;
    public boolean mMaxCellUpdateScheduled;
    public int mMaxCells;
    public final AnonymousClass2 mMaxCellsUpdater;
    public int mRowCount;
    public int mRowIndex;
    public final int mSmallImageMinWidth;
    public final int mSmallImageSize;
    public final int mTextPadding;
    public final LinearLayout mViewContainer;

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
                    sliceItem.fireActionInternal(GridRowView.this.getContext(), new Intent().addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                    GridRowView gridRowView = GridRowView.this;
                    if (gridRowView.mObserver != null) {
                        GridRowView.this.mObserver.onSliceAction(new EventInfo(gridRowView.getMode(), 6, 7, this.mRowIndex));
                    }
                } catch (PendingIntent.CanceledException e) {
                    Log.e("GridRowView", "PendingIntent for slice cannot be sent", e);
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
                    sliceItem.fireActionInternal(GridRowView.this.getContext(), new Intent().addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE).putExtra("android.app.slice.extra.RANGE_VALUE", time.getTime()));
                    GridRowView gridRowView = GridRowView.this;
                    if (gridRowView.mObserver != null) {
                        GridRowView.this.mObserver.onSliceAction(new EventInfo(gridRowView.getMode(), 7, 8, this.mRowIndex));
                    }
                } catch (PendingIntent.CanceledException e) {
                    Log.e("GridRowView", "PendingIntent for slice cannot be sent", e);
                }
            }
        }
    }

    public GridRowView(Context context) {
        this(context, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02ec A[EDGE_INSN: B:146:0x02ec->B:147:0x02ec BREAK  A[LOOP:2: B:37:0x00a7->B:83:0x02dc], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:174:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addCell(androidx.slice.widget.GridContent.CellContent r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 950
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.GridRowView.addCell(androidx.slice.widget.GridContent$CellContent, int, int):void");
    }

    public final boolean addPickerItem(final SliceItem sliceItem, ViewGroup viewGroup, int i, final boolean z) {
        SliceItem findSubtype = SliceQuery.findSubtype(sliceItem, "long", "millis");
        if (findSubtype == null) {
            return false;
        }
        long j = findSubtype.getLong();
        TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_title, (ViewGroup) null);
        if (this.mSliceStyle != null) {
            textView.setTextSize(0, r4.mGridTitleSize);
            textView.setTextColor(this.mSliceStyle.mTitleColor);
        }
        final Date date = new Date(j);
        SliceItem find = SliceQuery.find(sliceItem, "text", UniversalCredentialUtil.AGENT_TITLE);
        if (find != null) {
            textView.setText((CharSequence) find.mObj);
        }
        final int i2 = this.mRowIndex;
        viewGroup.setOnClickListener(new View.OnClickListener() { // from class: androidx.slice.widget.GridRowView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                if (z) {
                    new DatePickerDialog(GridRowView.this.getContext(), R.style.DialogTheme, new DateSetListener(sliceItem, i2), calendar.get(1), calendar.get(2), calendar.get(5)).show();
                } else {
                    new TimePickerDialog(GridRowView.this.getContext(), R.style.DialogTheme, new TimeSetListener(sliceItem, i2), calendar.get(11), calendar.get(12), false).show();
                }
            }
        });
        viewGroup.setClickable(true);
        viewGroup.setBackground(SliceViewUtil.getDrawable(android.R.attr.selectableItemBackgroundBorderless, getContext()));
        viewGroup.addView(textView);
        textView.setPadding(0, i, 0, 0);
        return true;
    }

    public final int determinePadding(SliceItem sliceItem) {
        SliceStyle sliceStyle;
        if (sliceItem == null) {
            return 0;
        }
        if ("image".equals(sliceItem.mFormat)) {
            return this.mTextPadding;
        }
        if ((!"text".equals(sliceItem.mFormat) && !"long".equals(sliceItem.mFormat)) || (sliceStyle = this.mSliceStyle) == null) {
            return 0;
        }
        return sliceStyle.mVerticalGridTextPadding;
    }

    public final int getExtraBottomPadding() {
        SliceStyle sliceStyle;
        GridContent gridContent = this.mGridContent;
        if (gridContent == null || !gridContent.mAllImages) {
            return 0;
        }
        if ((this.mRowIndex != this.mRowCount - 1 && getMode() != 1) || (sliceStyle = this.mSliceStyle) == null) {
            return 0;
        }
        return sliceStyle.mGridBottomPadding;
    }

    public final int getMaxCells() {
        int i;
        GridContent gridContent = this.mGridContent;
        if (gridContent != null && gridContent.isValid() && getWidth() != 0) {
            if (this.mGridContent.mGridContent.size() <= 1) {
                return 1;
            }
            GridContent gridContent2 = this.mGridContent;
            int i2 = gridContent2.mLargestImageMode;
            if (i2 != 2) {
                if (i2 != 4) {
                    i = this.mSmallImageMinWidth;
                } else {
                    i = gridContent2.getFirstImageSize(getContext()).x;
                }
            } else {
                i = this.mLargeImageHeight;
            }
            return getWidth() / (i + this.mGutter);
        }
        return -1;
    }

    public final void makeClickable(View view) {
        view.setOnClickListener(this);
        view.setBackground(SliceViewUtil.getDrawable(android.R.attr.selectableItemBackgroundBorderless, getContext()));
        view.setClickable(true);
    }

    public final void makeEntireGridClickable(boolean z) {
        GridRowView gridRowView;
        GridRowView gridRowView2;
        LinearLayout linearLayout = this.mViewContainer;
        Drawable drawable = null;
        if (z) {
            gridRowView = this;
        } else {
            gridRowView = null;
        }
        linearLayout.setOnTouchListener(gridRowView);
        LinearLayout linearLayout2 = this.mViewContainer;
        if (z) {
            gridRowView2 = this;
        } else {
            gridRowView2 = null;
        }
        linearLayout2.setOnClickListener(gridRowView2);
        View view = this.mForeground;
        if (z) {
            drawable = SliceViewUtil.getDrawable(android.R.attr.selectableItemBackground, getContext());
        }
        view.setBackground(drawable);
        this.mViewContainer.setClickable(z);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SliceItem find;
        Pair pair = (Pair) view.getTag();
        SliceItem sliceItem = (SliceItem) pair.first;
        EventInfo eventInfo = (EventInfo) pair.second;
        if (sliceItem != null && (find = SliceQuery.find(sliceItem, "action", (String) null)) != null) {
            try {
                find.fireActionInternal(null, null);
                VolumePanelDialog$$ExternalSyntheticLambda4 volumePanelDialog$$ExternalSyntheticLambda4 = this.mObserver;
                if (volumePanelDialog$$ExternalSyntheticLambda4 != null) {
                    volumePanelDialog$$ExternalSyntheticLambda4.onSliceAction(eventInfo);
                }
            } catch (PendingIntent.CanceledException e) {
                Log.e("GridRowView", "PendingIntent for slice cannot be sent", e);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int height = this.mGridContent.getHeight(this.mSliceStyle, this.mViewPolicy) + this.mInsetTop + this.mInsetBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(height, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
        this.mViewContainer.getLayoutParams().height = height;
        super.onMeasure(i, makeMeasureSpec);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.mForeground.getLocationOnScreen(this.mLoc);
        this.mForeground.getBackground().setHotspot((int) (motionEvent.getRawX() - this.mLoc[0]), (int) (motionEvent.getRawY() - this.mLoc[1]));
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mForeground.setPressed(true);
        } else if (actionMasked == 3 || actionMasked == 1 || actionMasked == 2) {
            this.mForeground.setPressed(false);
        }
        return false;
    }

    public final void populateViews() {
        CharSequence charSequence;
        boolean z;
        ViewGroup viewGroup;
        TextView textView;
        int i;
        GridContent gridContent = this.mGridContent;
        if (gridContent != null && gridContent.isValid()) {
            if (scheduleMaxCellsUpdate()) {
                return;
            }
            if (this.mGridContent.getLayoutDir() != -1) {
                setLayoutDirection(this.mGridContent.getLayoutDir());
            }
            if (this.mGridContent.mPrimaryAction != null) {
                this.mViewContainer.setTag(new Pair(this.mGridContent.mPrimaryAction, new EventInfo(getMode(), 3, 1, this.mRowIndex)));
                makeEntireGridClickable(true);
            }
            SliceItem sliceItem = this.mGridContent.mContentDescr;
            if (sliceItem != null) {
                charSequence = (CharSequence) sliceItem.mObj;
            } else {
                charSequence = null;
            }
            if (charSequence != null) {
                this.mViewContainer.setContentDescription(charSequence);
            }
            GridContent gridContent2 = this.mGridContent;
            ArrayList arrayList = gridContent2.mGridContent;
            int i2 = gridContent2.mLargestImageMode;
            if (i2 != 2 && i2 != 4) {
                this.mViewContainer.setGravity(16);
            } else {
                this.mViewContainer.setGravity(48);
            }
            int i3 = this.mMaxCells;
            if (this.mGridContent.mSeeMoreItem != null) {
                z = true;
            } else {
                z = false;
            }
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                if (this.mViewContainer.getChildCount() >= i3) {
                    int size = arrayList.size() - i3;
                    if (z) {
                        LinearLayout linearLayout = this.mViewContainer;
                        View childAt = linearLayout.getChildAt(linearLayout.getChildCount() - 1);
                        this.mViewContainer.removeView(childAt);
                        SliceItem sliceItem2 = this.mGridContent.mSeeMoreItem;
                        int childCount = this.mViewContainer.getChildCount();
                        int i5 = this.mMaxCells;
                        if (("slice".equals(sliceItem2.mFormat) || "action".equals(sliceItem2.mFormat)) && sliceItem2.getSlice().getItems().size() > 0) {
                            addCell(new GridContent.CellContent(sliceItem2), childCount, i5);
                            return;
                        }
                        LayoutInflater from = LayoutInflater.from(getContext());
                        if (this.mGridContent.mAllImages) {
                            viewGroup = (FrameLayout) from.inflate(R.layout.abc_slice_grid_see_more_overlay, (ViewGroup) this.mViewContainer, false);
                            viewGroup.addView(childAt, 0, new FrameLayout.LayoutParams(-1, -1));
                            textView = (TextView) viewGroup.findViewById(R.id.text_see_more_count);
                            viewGroup.findViewById(R.id.overlay_see_more).setBackground(new CornerDrawable(SliceViewUtil.getDrawable(android.R.attr.colorForeground, getContext()), this.mSliceStyle.mImageCornerRadius));
                        } else {
                            viewGroup = (LinearLayout) from.inflate(R.layout.abc_slice_grid_see_more, (ViewGroup) this.mViewContainer, false);
                            textView = (TextView) viewGroup.findViewById(R.id.text_see_more_count);
                            TextView textView2 = (TextView) viewGroup.findViewById(R.id.text_see_more);
                            if (this.mSliceStyle != null && this.mRowStyle != null) {
                                textView2.setTextSize(0, r12.mGridTitleSize);
                                RowStyle rowStyle = this.mRowStyle;
                                Integer num = rowStyle.mTitleColor;
                                if (num != null) {
                                    i = num.intValue();
                                } else {
                                    i = rowStyle.mSliceStyle.mTitleColor;
                                }
                                textView2.setTextColor(i);
                            }
                        }
                        this.mViewContainer.addView(viewGroup, new LinearLayout.LayoutParams(0, -1, 1.0f));
                        textView.setText(getResources().getString(R.string.abc_slice_more_content, Integer.valueOf(size)));
                        EventInfo eventInfo = new EventInfo(getMode(), 4, 1, this.mRowIndex);
                        eventInfo.actionPosition = 2;
                        eventInfo.actionIndex = childCount;
                        eventInfo.actionCount = i5;
                        viewGroup.setTag(new Pair(sliceItem2, eventInfo));
                        makeClickable(viewGroup);
                        return;
                    }
                    return;
                }
                addCell((GridContent.CellContent) arrayList.get(i4), i4, Math.min(arrayList.size(), i3));
            }
            return;
        }
        resetView();
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void resetView() {
        if (this.mMaxCellUpdateScheduled) {
            this.mMaxCellUpdateScheduled = false;
            getViewTreeObserver().removeOnPreDrawListener(this.mMaxCellsUpdater);
        }
        this.mViewContainer.removeAllViews();
        setLayoutDirection(2);
        makeEntireGridClickable(false);
    }

    public final boolean scheduleMaxCellsUpdate() {
        GridContent gridContent = this.mGridContent;
        if (gridContent == null || !gridContent.isValid()) {
            return true;
        }
        if (getWidth() == 0) {
            this.mMaxCellUpdateScheduled = true;
            getViewTreeObserver().addOnPreDrawListener(this.mMaxCellsUpdater);
            return true;
        }
        this.mMaxCells = getMaxCells();
        return false;
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setInsets(int i, int i2, int i3, int i4) {
        int i5;
        SliceStyle sliceStyle;
        super.setInsets(i, i2, i3, i4);
        LinearLayout linearLayout = this.mViewContainer;
        GridContent gridContent = this.mGridContent;
        if (gridContent != null && gridContent.mAllImages && this.mRowIndex == 0 && (sliceStyle = this.mSliceStyle) != null) {
            i5 = sliceStyle.mGridTopPadding;
        } else {
            i5 = 0;
        }
        linearLayout.setPadding(i, i5 + i2, i3, getExtraBottomPadding() + i4);
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setSliceItem(SliceContent sliceContent, boolean z, int i, int i2, VolumePanelDialog$$ExternalSyntheticLambda4 volumePanelDialog$$ExternalSyntheticLambda4) {
        int i3;
        SliceStyle sliceStyle;
        resetView();
        this.mObserver = volumePanelDialog$$ExternalSyntheticLambda4;
        this.mRowIndex = i;
        this.mRowCount = i2;
        this.mGridContent = (GridContent) sliceContent;
        if (!scheduleMaxCellsUpdate()) {
            populateViews();
        }
        LinearLayout linearLayout = this.mViewContainer;
        int i4 = this.mInsetStart;
        int i5 = this.mInsetTop;
        GridContent gridContent = this.mGridContent;
        if (gridContent != null && gridContent.mAllImages && this.mRowIndex == 0 && (sliceStyle = this.mSliceStyle) != null) {
            i3 = sliceStyle.mGridTopPadding;
        } else {
            i3 = 0;
        }
        linearLayout.setPadding(i4, i3 + i5, this.mInsetEnd, getExtraBottomPadding() + this.mInsetBottom);
    }

    @Override // androidx.slice.widget.SliceChildView
    public final void setTint(int i) {
        this.mTintColor = i;
        if (this.mGridContent != null) {
            resetView();
            populateViews();
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.slice.widget.GridRowView$2] */
    public GridRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLoc = new int[2];
        this.mMaxCells = -1;
        this.mMaxCellsUpdater = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.slice.widget.GridRowView.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                GridRowView gridRowView = GridRowView.this;
                gridRowView.mMaxCells = gridRowView.getMaxCells();
                GridRowView.this.populateViews();
                GridRowView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                GridRowView.this.mMaxCellUpdateScheduled = false;
                return true;
            }
        };
        Resources resources = getContext().getResources();
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.mViewContainer = linearLayout;
        linearLayout.setOrientation(0);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        linearLayout.setGravity(16);
        this.mIconSize = resources.getDimensionPixelSize(R.dimen.abc_slice_icon_size);
        this.mSmallImageSize = resources.getDimensionPixelSize(R.dimen.abc_slice_small_image_size);
        this.mLargeImageHeight = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_image_only_height);
        this.mSmallImageMinWidth = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_image_min_width);
        this.mGutter = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_gutter);
        this.mTextPadding = resources.getDimensionPixelSize(R.dimen.abc_slice_grid_text_padding);
        View view = new View(getContext());
        this.mForeground = view;
        addView(view, new FrameLayout.LayoutParams(-1, -1));
    }
}
