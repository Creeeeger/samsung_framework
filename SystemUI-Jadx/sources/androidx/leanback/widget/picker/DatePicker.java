package androidx.leanback.widget.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.view.ViewCompat;
import androidx.leanback.R$styleable;
import androidx.leanback.widget.picker.PickerUtility;
import com.android.systemui.R;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class DatePicker extends Picker {
    public static final int[] DATE_FIELDS = {5, 2, 1};
    public int mColDayIndex;
    public int mColMonthIndex;
    public int mColYearIndex;
    public PickerUtility.DateConstant mConstant;
    public Calendar mCurrentDate;
    public final DateFormat mDateFormat;
    public String mDatePickerFormat;
    public PickerColumn mDayColumn;
    public Calendar mMaxDate;
    public Calendar mMinDate;
    public PickerColumn mMonthColumn;
    public Calendar mTempDate;
    public PickerColumn mYearColumn;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.leanback.widget.picker.DatePicker$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ boolean val$animation;

        public AnonymousClass1(boolean z) {
            this.val$animation = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            PickerColumn pickerColumn;
            boolean z;
            boolean z2;
            boolean z3;
            DatePicker datePicker = DatePicker.this;
            boolean z4 = this.val$animation;
            int[] iArr = {datePicker.mColDayIndex, datePicker.mColMonthIndex, datePicker.mColYearIndex};
            boolean z5 = true;
            boolean z6 = true;
            for (int i = 2; i >= 0; i--) {
                int i2 = iArr[i];
                if (i2 >= 0) {
                    int i3 = DatePicker.DATE_FIELDS[i];
                    ArrayList arrayList = datePicker.mColumns;
                    if (arrayList == null) {
                        pickerColumn = null;
                    } else {
                        pickerColumn = (PickerColumn) arrayList.get(i2);
                    }
                    boolean z7 = false;
                    if (z5) {
                        int i4 = datePicker.mMinDate.get(i3);
                        if (i4 != pickerColumn.mMinValue) {
                            pickerColumn.mMinValue = i4;
                            z = true;
                        }
                        z = false;
                    } else {
                        int actualMinimum = datePicker.mCurrentDate.getActualMinimum(i3);
                        if (actualMinimum != pickerColumn.mMinValue) {
                            pickerColumn.mMinValue = actualMinimum;
                            z = true;
                        }
                        z = false;
                    }
                    boolean z8 = z | false;
                    if (z6) {
                        int i5 = datePicker.mMaxDate.get(i3);
                        if (i5 != pickerColumn.mMaxValue) {
                            pickerColumn.mMaxValue = i5;
                            z2 = true;
                        }
                        z2 = false;
                    } else {
                        int actualMaximum = datePicker.mCurrentDate.getActualMaximum(i3);
                        if (actualMaximum != pickerColumn.mMaxValue) {
                            pickerColumn.mMaxValue = actualMaximum;
                            z2 = true;
                        }
                        z2 = false;
                    }
                    boolean z9 = z8 | z2;
                    if (datePicker.mCurrentDate.get(i3) == datePicker.mMinDate.get(i3)) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    z5 &= z3;
                    if (datePicker.mCurrentDate.get(i3) == datePicker.mMaxDate.get(i3)) {
                        z7 = true;
                    }
                    z6 &= z7;
                    if (z9) {
                        datePicker.setColumnAt(iArr[i], pickerColumn);
                    }
                    datePicker.setColumnValue(iArr[i], datePicker.mCurrentDate.get(i3), z4);
                }
            }
        }
    }

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    @Override // androidx.leanback.widget.picker.Picker
    public final void onColumnValueChanged(int i, int i2) {
        PickerColumn pickerColumn;
        this.mTempDate.setTimeInMillis(this.mCurrentDate.getTimeInMillis());
        ArrayList arrayList = this.mColumns;
        if (arrayList == null) {
            pickerColumn = null;
        } else {
            pickerColumn = (PickerColumn) arrayList.get(i);
        }
        int i3 = pickerColumn.mCurrentValue;
        boolean z = true;
        if (i == this.mColDayIndex) {
            this.mTempDate.add(5, i2 - i3);
        } else if (i == this.mColMonthIndex) {
            this.mTempDate.add(2, i2 - i3);
        } else if (i == this.mColYearIndex) {
            this.mTempDate.add(1, i2 - i3);
        } else {
            throw new IllegalArgumentException();
        }
        int i4 = this.mTempDate.get(1);
        int i5 = this.mTempDate.get(2);
        int i6 = this.mTempDate.get(5);
        if (this.mCurrentDate.get(1) == i4 && this.mCurrentDate.get(2) == i6 && this.mCurrentDate.get(5) == i5) {
            z = false;
        }
        if (z) {
            this.mCurrentDate.set(i4, i5, i6);
            if (this.mCurrentDate.before(this.mMinDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMinDate.getTimeInMillis());
            } else if (this.mCurrentDate.after(this.mMaxDate)) {
                this.mCurrentDate.setTimeInMillis(this.mMaxDate.getTimeInMillis());
            }
            post(new AnonymousClass1(false));
        }
    }

    public final boolean parseDate(String str, Calendar calendar) {
        try {
            calendar.setTime(this.mDateFormat.parse(str));
            return true;
        } catch (ParseException unused) {
            Log.w("DatePicker", "Date: " + str + " not in format: MM/dd/yyyy");
            return false;
        }
    }

    public DatePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z;
        this.mDateFormat = new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault());
        PickerUtility.DateConstant dateConstant = new PickerUtility.DateConstant(Locale.getDefault(), getContext().getResources());
        this.mConstant = dateConstant;
        this.mTempDate = PickerUtility.getCalendarForLocale(this.mTempDate, dateConstant.locale);
        this.mMinDate = PickerUtility.getCalendarForLocale(this.mMinDate, this.mConstant.locale);
        this.mMaxDate = PickerUtility.getCalendarForLocale(this.mMaxDate, this.mConstant.locale);
        this.mCurrentDate = PickerUtility.getCalendarForLocale(this.mCurrentDate, this.mConstant.locale);
        PickerColumn pickerColumn = this.mMonthColumn;
        if (pickerColumn != null) {
            pickerColumn.mStaticLabels = this.mConstant.months;
            setColumnAt(this.mColMonthIndex, pickerColumn);
        }
        int[] iArr = R$styleable.lbDatePicker;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api29Impl.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        try {
            String string = obtainStyledAttributes.getString(0);
            String string2 = obtainStyledAttributes.getString(1);
            String string3 = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            this.mTempDate.clear();
            if (!TextUtils.isEmpty(string)) {
                if (!parseDate(string, this.mTempDate)) {
                    this.mTempDate.set(1900, 0, 1);
                }
            } else {
                this.mTempDate.set(1900, 0, 1);
            }
            this.mMinDate.setTimeInMillis(this.mTempDate.getTimeInMillis());
            this.mTempDate.clear();
            if (!TextUtils.isEmpty(string2)) {
                if (!parseDate(string2, this.mTempDate)) {
                    this.mTempDate.set(2100, 0, 1);
                }
            } else {
                this.mTempDate.set(2100, 0, 1);
            }
            this.mMaxDate.setTimeInMillis(this.mTempDate.getTimeInMillis());
            string3 = TextUtils.isEmpty(string3) ? new String(android.text.format.DateFormat.getDateFormatOrder(context)) : string3;
            string3 = TextUtils.isEmpty(string3) ? new String(android.text.format.DateFormat.getDateFormatOrder(getContext())) : string3;
            if (TextUtils.equals(this.mDatePickerFormat, string3)) {
                return;
            }
            this.mDatePickerFormat = string3;
            String bestDateTimePattern = android.text.format.DateFormat.getBestDateTimePattern(this.mConstant.locale, string3);
            String str = TextUtils.isEmpty(bestDateTimePattern) ? "MM/dd/yyyy" : bestDateTimePattern;
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            char[] cArr = {'Y', 'y', 'M', 'm', 'D', 'd'};
            boolean z2 = false;
            char c = 0;
            for (int i2 = 0; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (charAt != ' ') {
                    if (charAt != '\'') {
                        if (z2) {
                            sb.append(charAt);
                        } else {
                            int i3 = 0;
                            while (true) {
                                if (i3 >= 6) {
                                    z = false;
                                    break;
                                } else {
                                    if (charAt == cArr[i3]) {
                                        z = true;
                                        break;
                                    }
                                    i3++;
                                }
                            }
                            if (!z) {
                                sb.append(charAt);
                            } else if (charAt != c) {
                                arrayList.add(sb.toString());
                                sb.setLength(0);
                            }
                        }
                        c = charAt;
                    } else if (z2) {
                        z2 = false;
                    } else {
                        sb.setLength(0);
                        z2 = true;
                    }
                }
            }
            arrayList.add(sb.toString());
            if (arrayList.size() == string3.length() + 1) {
                ((ArrayList) this.mSeparators).clear();
                ((ArrayList) this.mSeparators).addAll(arrayList);
                this.mDayColumn = null;
                this.mMonthColumn = null;
                this.mYearColumn = null;
                this.mColMonthIndex = -1;
                this.mColDayIndex = -1;
                this.mColYearIndex = -1;
                String upperCase = string3.toUpperCase(this.mConstant.locale);
                ArrayList arrayList2 = new ArrayList(3);
                for (int i4 = 0; i4 < upperCase.length(); i4++) {
                    char charAt2 = upperCase.charAt(i4);
                    if (charAt2 != 'D') {
                        if (charAt2 != 'M') {
                            if (charAt2 == 'Y') {
                                if (this.mYearColumn == null) {
                                    PickerColumn pickerColumn2 = new PickerColumn();
                                    this.mYearColumn = pickerColumn2;
                                    arrayList2.add(pickerColumn2);
                                    this.mColYearIndex = i4;
                                    this.mYearColumn.mLabelFormat = "%d";
                                } else {
                                    throw new IllegalArgumentException("datePicker format error");
                                }
                            } else {
                                throw new IllegalArgumentException("datePicker format error");
                            }
                        } else if (this.mMonthColumn == null) {
                            PickerColumn pickerColumn3 = new PickerColumn();
                            this.mMonthColumn = pickerColumn3;
                            arrayList2.add(pickerColumn3);
                            this.mMonthColumn.mStaticLabels = this.mConstant.months;
                            this.mColMonthIndex = i4;
                        } else {
                            throw new IllegalArgumentException("datePicker format error");
                        }
                    } else if (this.mDayColumn == null) {
                        PickerColumn pickerColumn4 = new PickerColumn();
                        this.mDayColumn = pickerColumn4;
                        arrayList2.add(pickerColumn4);
                        this.mDayColumn.mLabelFormat = "%02d";
                        this.mColDayIndex = i4;
                    } else {
                        throw new IllegalArgumentException("datePicker format error");
                    }
                }
                setColumns(arrayList2);
                post(new AnonymousClass1(false));
                return;
            }
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of datePickerFormat: " + string3.length() + " + 1");
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
