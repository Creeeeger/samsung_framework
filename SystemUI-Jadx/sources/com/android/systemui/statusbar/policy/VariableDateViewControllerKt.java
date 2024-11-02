package com.android.systemui.statusbar.policy;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.Calendar;
import android.text.TextUtils;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class VariableDateViewControllerKt {
    public static final VariableDateViewControllerKt$EMPTY_FORMAT$1 EMPTY_FORMAT = new DateFormat() { // from class: com.android.systemui.statusbar.policy.VariableDateViewControllerKt$EMPTY_FORMAT$1
        @Override // android.icu.text.DateFormat
        public final StringBuffer format(Calendar calendar, StringBuffer stringBuffer, FieldPosition fieldPosition) {
            return null;
        }

        @Override // android.icu.text.DateFormat
        public final void parse(String str, Calendar calendar, ParsePosition parsePosition) {
        }
    };

    public static final DateFormat getFormatFromPattern(String str) {
        if (TextUtils.equals(str, "")) {
            return EMPTY_FORMAT;
        }
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, Locale.getDefault());
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE);
        return instanceForSkeleton;
    }

    public static final String getTextForFormat(Date date, DateFormat dateFormat) {
        if (dateFormat == EMPTY_FORMAT) {
            return "";
        }
        return dateFormat.format(date);
    }
}
