package com.google.android.material.datepicker;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.Calendar;
import java.util.Collection;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MonthAdapter extends BaseAdapter {
    public final CalendarConstraints calendarConstraints;
    public CalendarStyle calendarStyle;
    public final Month month;
    public Collection previouslySelectedDates;
    public static final int MAXIMUM_WEEKS = UtcDates.getUtcCalendarOf(null).getMaximum(4);
    public static final int MAXIMUM_GRID_CELLS = (UtcDates.getUtcCalendarOf(null).getMaximum(7) + UtcDates.getUtcCalendarOf(null).getMaximum(5)) - 1;

    public MonthAdapter(Month month, DateSelector dateSelector, CalendarConstraints calendarConstraints) {
        this.month = month;
        this.calendarConstraints = calendarConstraints;
        this.previouslySelectedDates = dateSelector.getSelectedDays();
    }

    public final int firstPositionInMonth() {
        Month month = this.month;
        int i = this.calendarConstraints.firstDayOfWeek;
        int i2 = month.firstOfMonth.get(7);
        if (i <= 0) {
            i = month.firstOfMonth.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            return i3 + month.daysInWeek;
        }
        return i3;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return MAXIMUM_GRID_CELLS;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i / this.month.daysInWeek;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c7  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            r6 = this;
            android.content.Context r0 = r9.getContext()
            com.google.android.material.datepicker.CalendarStyle r1 = r6.calendarStyle
            if (r1 != 0) goto Lf
            com.google.android.material.datepicker.CalendarStyle r1 = new com.google.android.material.datepicker.CalendarStyle
            r1.<init>(r0)
            r6.calendarStyle = r1
        Lf:
            r0 = r8
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r8 != 0) goto L27
            android.content.Context r8 = r9.getContext()
            android.view.LayoutInflater r8 = android.view.LayoutInflater.from(r8)
            r0 = 2131558932(0x7f0d0214, float:1.8743194E38)
            android.view.View r8 = r8.inflate(r0, r9, r1)
            r0 = r8
            android.widget.TextView r0 = (android.widget.TextView) r0
        L27:
            int r8 = r6.firstPositionInMonth()
            int r8 = r7 - r8
            if (r8 < 0) goto Lb8
            com.google.android.material.datepicker.Month r9 = r6.month
            int r2 = r9.daysInMonth
            if (r8 < r2) goto L37
            goto Lb8
        L37:
            r2 = 1
            int r8 = r8 + r2
            r0.setTag(r9)
            android.content.res.Resources r9 = r0.getResources()
            android.content.res.Configuration r9 = r9.getConfiguration()
            java.util.Locale r9 = r9.locale
            java.lang.Integer r3 = java.lang.Integer.valueOf(r8)
            java.lang.Object[] r3 = new java.lang.Object[]{r3}
            java.lang.String r4 = "%d"
            java.lang.String r9 = java.lang.String.format(r9, r4, r3)
            r0.setText(r9)
            com.google.android.material.datepicker.Month r9 = r6.month
            java.util.Calendar r9 = r9.firstOfMonth
            java.util.Calendar r9 = com.google.android.material.datepicker.UtcDates.getDayCopy(r9)
            r3 = 5
            r9.set(r3, r8)
            long r8 = r9.getTimeInMillis()
            com.google.android.material.datepicker.Month r3 = r6.month
            int r3 = r3.year
            com.google.android.material.datepicker.Month r4 = com.google.android.material.datepicker.Month.current()
            int r4 = r4.year
            java.lang.String r5 = "UTC"
            if (r3 != r4) goto L93
            java.util.Locale r3 = java.util.Locale.getDefault()
            java.lang.String r4 = "MMMEd"
            android.icu.text.DateFormat r3 = android.icu.text.DateFormat.getInstanceForSkeleton(r4, r3)
            android.icu.util.TimeZone r4 = android.icu.util.TimeZone.getTimeZone(r5)
            r3.setTimeZone(r4)
            java.util.Date r4 = new java.util.Date
            r4.<init>(r8)
            java.lang.String r8 = r3.format(r4)
            r0.setContentDescription(r8)
            goto Lb1
        L93:
            java.util.Locale r3 = java.util.Locale.getDefault()
            java.lang.String r4 = "yMMMEd"
            android.icu.text.DateFormat r3 = android.icu.text.DateFormat.getInstanceForSkeleton(r4, r3)
            android.icu.util.TimeZone r4 = android.icu.util.TimeZone.getTimeZone(r5)
            r3.setTimeZone(r4)
            java.util.Date r4 = new java.util.Date
            r4.<init>(r8)
            java.lang.String r8 = r3.format(r4)
            r0.setContentDescription(r8)
        Lb1:
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto Lc0
        Lb8:
            r8 = 8
            r0.setVisibility(r8)
            r0.setEnabled(r1)
        Lc0:
            java.lang.Long r7 = r6.getItem(r7)
            if (r7 != 0) goto Lc7
            goto Lce
        Lc7:
            long r7 = r7.longValue()
            r6.updateSelectedState(r0, r7)
        Lce:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.MonthAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }

    public final void updateSelectedState(TextView textView, long j) {
        boolean z;
        if (textView == null) {
            return;
        }
        if (j >= ((DateValidatorPointForward) this.calendarConstraints.validator).point) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            textView.setEnabled(false);
            CalendarItemStyle calendarItemStyle = this.calendarStyle.invalidDay;
            calendarItemStyle.getClass();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
            ShapeAppearanceModel shapeAppearanceModel = calendarItemStyle.itemShape;
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
            materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
            materialShapeDrawable.setFillColor(calendarItemStyle.backgroundColor);
            materialShapeDrawable.drawableState.strokeWidth = calendarItemStyle.strokeWidth;
            materialShapeDrawable.invalidateSelf();
            materialShapeDrawable.setStrokeColor(calendarItemStyle.strokeColor);
            ColorStateList colorStateList = calendarItemStyle.textColor;
            textView.setTextColor(colorStateList);
            RippleDrawable rippleDrawable = new RippleDrawable(colorStateList.withAlpha(30), materialShapeDrawable, materialShapeDrawable2);
            Rect rect = calendarItemStyle.insets;
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.setBackground(textView, insetDrawable);
            return;
        }
        textView.setEnabled(true);
        throw null;
    }

    @Override // android.widget.Adapter
    public final Long getItem(int i) {
        if (i < firstPositionInMonth()) {
            return null;
        }
        int firstPositionInMonth = firstPositionInMonth();
        Month month = this.month;
        if (i > (firstPositionInMonth + month.daysInMonth) - 1) {
            return null;
        }
        int firstPositionInMonth2 = (i - firstPositionInMonth()) + 1;
        Calendar dayCopy = UtcDates.getDayCopy(month.firstOfMonth);
        dayCopy.set(5, firstPositionInMonth2);
        return Long.valueOf(dayCopy.getTimeInMillis());
    }
}
