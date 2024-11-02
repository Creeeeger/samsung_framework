package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.android.systemui.R;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CalendarStyle {
    public final CalendarItemStyle invalidDay;
    public final CalendarItemStyle todayYear;
    public final CalendarItemStyle year;

    public CalendarStyle(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.resolveTypedValueOrThrow(context, MaterialCalendar.class.getCanonicalName(), R.attr.materialCalendarStyle).data, R$styleable.MaterialCalendar);
        CalendarItemStyle.create(obtainStyledAttributes.getResourceId(3, 0), context);
        this.invalidDay = CalendarItemStyle.create(obtainStyledAttributes.getResourceId(1, 0), context);
        CalendarItemStyle.create(obtainStyledAttributes.getResourceId(2, 0), context);
        CalendarItemStyle.create(obtainStyledAttributes.getResourceId(4, 0), context);
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, obtainStyledAttributes, 6);
        this.year = CalendarItemStyle.create(obtainStyledAttributes.getResourceId(8, 0), context);
        CalendarItemStyle.create(obtainStyledAttributes.getResourceId(7, 0), context);
        this.todayYear = CalendarItemStyle.create(obtainStyledAttributes.getResourceId(9, 0), context);
        new Paint().setColor(colorStateList.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
