package androidx.picker3.app;

import android.content.Context;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertDialog;
import androidx.picker3.widget.SeslColorPicker;
import com.android.systemui.edgelighting.settings.EdgeLightingStyleActivity;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslColorPickerDialog extends AlertDialog implements DialogInterface.OnClickListener {
    public final SeslColorPicker mColorPicker;
    public final Integer mCurrentColor;
    public final OnColorSetListener mOnColorSetListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface OnColorSetListener {
    }

    public SeslColorPickerDialog(Context context, OnColorSetListener onColorSetListener, int i) {
        this(context, onColorSetListener);
        this.mColorPicker.mRecentColorInfo.mCurrentColor = Integer.valueOf(i);
        this.mCurrentColor = Integer.valueOf(i);
        this.mColorPicker.updateRecentColorLayout();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Integer num;
        if (i == -1) {
            getWindow().setSoftInputMode(3);
            SeslColorPicker seslColorPicker = this.mColorPicker;
            Integer num2 = seslColorPicker.mPickedColor.mColor;
            if (num2 != null) {
                seslColorPicker.mRecentColorInfo.mSelectedColor = Integer.valueOf(num2.intValue());
            }
            OnColorSetListener onColorSetListener = this.mOnColorSetListener;
            if (onColorSetListener != null) {
                SeslColorPicker seslColorPicker2 = this.mColorPicker;
                if (!seslColorPicker2.mIsInputFromUser && (num = this.mCurrentColor) != null) {
                    ((EdgeLightingStyleActivity.AnonymousClass10) onColorSetListener).onColorSet(num.intValue());
                } else {
                    ((EdgeLightingStyleActivity.AnonymousClass10) onColorSetListener).onColorSet(seslColorPicker2.mRecentColorInfo.mSelectedColor.intValue());
                }
            }
        }
    }

    public SeslColorPickerDialog(Context context, OnColorSetListener onColorSetListener, int[] iArr) {
        this(context, onColorSetListener);
        this.mColorPicker.mRecentColorInfo.initRecentColorInfo(iArr);
        this.mColorPicker.updateRecentColorLayout();
    }

    public SeslColorPickerDialog(Context context, OnColorSetListener onColorSetListener, int i, int[] iArr, boolean z) {
        this(context, onColorSetListener);
        this.mColorPicker.mRecentColorInfo.initRecentColorInfo(iArr);
        this.mColorPicker.mRecentColorInfo.mCurrentColor = Integer.valueOf(i);
        this.mCurrentColor = Integer.valueOf(i);
        this.mColorPicker.updateRecentColorLayout();
        this.mColorPicker.initOpacitySeekBar(z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SeslColorPickerDialog(android.content.Context r5, androidx.picker3.app.SeslColorPickerDialog.OnColorSetListener r6) {
        /*
            r4 = this;
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            android.content.res.Resources$Theme r1 = r5.getTheme()
            r2 = 2130969338(0x7f0402fa, float:1.7547355E38)
            r3 = 1
            r1.resolveAttribute(r2, r0, r3)
            int r0 = r0.data
            if (r0 == 0) goto L18
            r0 = 2132018557(0x7f14057d, float:1.9675424E38)
            goto L1b
        L18:
            r0 = 2132018554(0x7f14057a, float:1.9675418E38)
        L1b:
            r4.<init>(r5, r0)
            r5 = 0
            r4.mCurrentColor = r5
            android.content.Context r0 = r4.getContext()
            android.view.LayoutInflater r1 = android.view.LayoutInflater.from(r0)
            r2 = 2131559350(0x7f0d03b6, float:1.8744042E38)
            android.view.View r5 = r1.inflate(r2, r5)
            androidx.appcompat.app.AlertController r1 = r4.mAlert
            r1.mView = r5
            r2 = 0
            r1.mViewLayoutResId = r2
            r1.mViewSpacingSpecified = r2
            r1 = 2131955765(0x7f131035, float:1.9548067E38)
            java.lang.String r1 = r0.getString(r1)
            r2 = -1
            r4.setButton(r2, r1, r4)
            r1 = 2131955764(0x7f131034, float:1.9548065E38)
            java.lang.String r0 = r0.getString(r1)
            r1 = -2
            r4.setButton(r1, r0, r4)
            r4.requestWindowFeature(r3)
            android.view.Window r0 = r4.getWindow()
            r1 = 16
            r0.setSoftInputMode(r1)
            r4.mOnColorSetListener = r6
            r6 = 2131364330(0x7f0a09ea, float:1.8348494E38)
            android.view.View r5 = r5.findViewById(r6)
            androidx.picker3.widget.SeslColorPicker r5 = (androidx.picker3.widget.SeslColorPicker) r5
            r4.mColorPicker = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker3.app.SeslColorPickerDialog.<init>(android.content.Context, androidx.picker3.app.SeslColorPickerDialog$OnColorSetListener):void");
    }
}
