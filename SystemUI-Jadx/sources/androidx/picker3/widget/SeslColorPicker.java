package androidx.picker3.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import androidx.core.graphics.ColorUtils;
import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.edgelighting.settings.EdgeLightingStyleActivity;
import com.google.android.material.tabs.TabLayout;
import com.sec.ims.configuration.DATA;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslColorPicker extends LinearLayout {
    public static int RECENT_COLOR_SLOT_COUNT = 6;
    public String beforeValue;
    public final ArrayList editTexts;
    public String[] mColorDescription;
    public EditText mColorPickerBlueEditText;
    public EditText mColorPickerGreenEditText;
    public EditText mColorPickerHexEditText;
    public EditText mColorPickerOpacityEditText;
    public EditText mColorPickerRedEditText;
    public EditText mColorPickerSaturationEditText;
    public SeslColorSpectrumView mColorSpectrumView;
    public SeslColorSwatchView mColorSwatchView;
    public final Context mContext;
    public GradientDrawable mCurrentColorBackground;
    public ImageView mCurrentColorView;
    public boolean mFlagVar;
    public boolean mFromRecentLayoutTouch;
    public SeslGradientColorSeekBar mGradientColorSeekBar;
    public LinearLayout mGradientSeekBarContainer;
    public final HorizontalScrollView mHorizontalScrollView;
    public final AnonymousClass17 mImageButtonClickListener;
    public boolean mIsInputFromUser;
    public final boolean mIsLightTheme;
    public EditText mLastFocussedEditText;
    public EdgeLightingStyleActivity.AnonymousClass9 mOnColorChangedListener;
    public final AnonymousClass4 mOnTabSelectListener;
    public SeslOpacitySeekBar mOpacitySeekBar;
    public FrameLayout mOpacitySeekBarContainer;
    public final PickedColor mPickedColor;
    public ImageView mPickedColorView;
    public final SeslRecentColorInfo mRecentColorInfo;
    public LinearLayout mRecentColorListLayout;
    public final ArrayList mRecentColorValues;
    public final Resources mResources;
    public GradientDrawable mSelectedColorBackground;
    public FrameLayout mSpectrumViewContainer;
    public FrameLayout mSwatchViewContainer;
    public final TabLayout mTabLayoutContainer;
    public boolean mTextFromRGB;
    public boolean mfromEditText;
    public boolean mfromRGB;
    public boolean mfromSaturationSeekbar;
    public boolean mfromSpectrumTouch;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.picker3.widget.SeslColorPicker$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 {
        public AnonymousClass5() {
        }

        public final void onColorSwatchChanged(int i) {
            SeslColorPicker seslColorPicker = SeslColorPicker.this;
            seslColorPicker.mIsInputFromUser = true;
            seslColorPicker.mColorSpectrumView.mFromSwatchTouch = true;
            EditText editText = seslColorPicker.mLastFocussedEditText;
            if (editText != null) {
                editText.clearFocus();
            }
            try {
                ((InputMethodManager) seslColorPicker.mContext.getSystemService("input_method")).hideSoftInputFromWindow(seslColorPicker.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
            PickedColor pickedColor = seslColorPicker.mPickedColor;
            int progress = seslColorPicker.mOpacitySeekBar.getProgress();
            pickedColor.mColor = Integer.valueOf(i);
            pickedColor.mAlpha = (int) Math.ceil((progress * 100) / 255.0f);
            Color.colorToHSV(pickedColor.mColor.intValue(), pickedColor.mHsv);
            seslColorPicker.updateCurrentColor();
            seslColorPicker.updateHexAndRGBValues(i);
            seslColorPicker.mColorSpectrumView.mFromSwatchTouch = false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.picker3.widget.SeslColorPicker$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 {
        public AnonymousClass6() {
        }

        public final void onSpectrumColorChanged(float f, float f2) {
            SeslColorPicker seslColorPicker = SeslColorPicker.this;
            seslColorPicker.mIsInputFromUser = true;
            EditText editText = seslColorPicker.mLastFocussedEditText;
            if (editText != null) {
                editText.clearFocus();
            }
            try {
                ((InputMethodManager) seslColorPicker.mContext.getSystemService("input_method")).hideSoftInputFromWindow(seslColorPicker.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
            PickedColor pickedColor = seslColorPicker.mPickedColor;
            int progress = seslColorPicker.mOpacitySeekBar.getProgress();
            float[] fArr = pickedColor.mHsv;
            fArr[0] = f;
            fArr[1] = f2;
            fArr[2] = 1.0f;
            pickedColor.mColor = Integer.valueOf(Color.HSVToColor(pickedColor.mAlpha, fArr));
            pickedColor.mAlpha = (int) Math.ceil((progress * 100) / 255.0f);
            seslColorPicker.updateCurrentColor();
            seslColorPicker.updateHexAndRGBValues(seslColorPicker.mPickedColor.mColor.intValue());
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PickedColor {
        public Integer mColor = null;
        public int mAlpha = 255;
        public final float[] mHsv = new float[3];

        public final void setV(float f) {
            float[] fArr = this.mHsv;
            fArr[2] = f;
            this.mColor = Integer.valueOf(Color.HSVToColor(this.mAlpha, fArr));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x02ce A[LOOP:1: B:41:0x02ca->B:43:0x02ce, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0363 A[LOOP:2: B:49:0x0359->B:51:0x0363, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0382 A[LOOP:3: B:54:0x037c->B:56:0x0382, LOOP_END] */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.picker3.widget.SeslColorPicker$4] */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.picker3.widget.SeslColorPicker$17] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SeslColorPicker(android.content.Context r14, android.util.AttributeSet r15) {
        /*
            Method dump skipped, instructions count: 924
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker3.widget.SeslColorPicker.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final void initColorSpectrumView() {
        this.mColorSpectrumView = (SeslColorSpectrumView) findViewById(R.id.sesl_color_picker_color_spectrum_view);
        this.mSpectrumViewContainer = (FrameLayout) findViewById(R.id.sesl_color_picker_color_spectrum_view_container);
        this.mColorPickerSaturationEditText.setText("" + String.format(Locale.getDefault(), "%d", Integer.valueOf(this.mGradientColorSeekBar.getProgress())));
        this.mColorSpectrumView.mListener = new AnonymousClass6();
        this.mColorPickerSaturationEditText.addTextChangedListener(new TextWatcher() { // from class: androidx.picker3.widget.SeslColorPicker.7
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                if (!SeslColorPicker.this.mTextFromRGB) {
                    try {
                        int parseInt = Integer.parseInt(editable.toString());
                        if (SeslColorPicker.this.mColorPickerSaturationEditText.getText().toString().startsWith(DATA.DM_FIELD_INDEX.PCSCF_DOMAIN) && SeslColorPicker.this.mColorPickerSaturationEditText.getText().length() > 1) {
                            SeslColorPicker.this.mColorPickerSaturationEditText.setText("" + Integer.parseInt(SeslColorPicker.this.mColorPickerSaturationEditText.getText().toString()));
                        } else if (parseInt > 100) {
                            SeslColorPicker.this.mColorPickerSaturationEditText.setText("" + String.format(Locale.getDefault(), "%d", 100));
                        }
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                    EditText editText = SeslColorPicker.this.mColorPickerSaturationEditText;
                    editText.setSelection(editText.getText().length());
                }
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SeslColorPicker seslColorPicker = SeslColorPicker.this;
                if (!seslColorPicker.mTextFromRGB) {
                    try {
                        if (seslColorPicker.mGradientColorSeekBar != null && charSequence.toString().trim().length() > 0) {
                            int intValue = Integer.valueOf(charSequence.toString()).intValue();
                            SeslColorPicker seslColorPicker2 = SeslColorPicker.this;
                            seslColorPicker2.mfromEditText = true;
                            seslColorPicker2.mFlagVar = false;
                            if (intValue <= 100) {
                                seslColorPicker2.mColorPickerSaturationEditText.setTag(0);
                                SeslColorPicker.this.mGradientColorSeekBar.setProgress(intValue);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.mColorPickerSaturationEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.picker3.widget.SeslColorPicker.8
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (!SeslColorPicker.this.mColorPickerSaturationEditText.hasFocus() && SeslColorPicker.this.mColorPickerSaturationEditText.getText().toString().isEmpty()) {
                    SeslColorPicker.this.mColorPickerSaturationEditText.setText("" + String.format(Locale.getDefault(), "%d", 0));
                }
            }
        });
    }

    public final void initOpacitySeekBar(boolean z) {
        this.mOpacitySeekBar = (SeslOpacitySeekBar) findViewById(R.id.sesl_color_picker_opacity_seekbar);
        this.mOpacitySeekBarContainer = (FrameLayout) findViewById(R.id.sesl_color_picker_opacity_seekbar_container);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.sesl_color_picker_opacity_layout);
        if (z) {
            linearLayout.setVisibility(0);
        } else {
            linearLayout.setVisibility(8);
        }
        this.mOpacitySeekBar.setVisibility(8);
        this.mOpacitySeekBarContainer.setVisibility(8);
        SeslOpacitySeekBar seslOpacitySeekBar = this.mOpacitySeekBar;
        Integer num = this.mPickedColor.mColor;
        seslOpacitySeekBar.setMax(255);
        if (num != null) {
            seslOpacitySeekBar.initColor(num.intValue());
        }
        GradientDrawable gradientDrawable = (GradientDrawable) seslOpacitySeekBar.getContext().getDrawable(R.drawable.sesl_color_picker_opacity_seekbar);
        seslOpacitySeekBar.mProgressDrawable = gradientDrawable;
        seslOpacitySeekBar.setProgressDrawable(gradientDrawable);
        seslOpacitySeekBar.setThumb(seslOpacitySeekBar.getContext().getResources().getDrawable(R.drawable.sesl_color_picker_seekbar_cursor));
        seslOpacitySeekBar.setThumbOffset(0);
        this.mOpacitySeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: androidx.picker3.widget.SeslColorPicker.11
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i, boolean z2) {
                if (z2) {
                    SeslColorPicker.this.mIsInputFromUser = true;
                }
                PickedColor pickedColor = SeslColorPicker.this.mPickedColor;
                pickedColor.mAlpha = i;
                pickedColor.mColor = Integer.valueOf(Color.HSVToColor(i, pickedColor.mHsv));
                if (i >= 0 && Integer.valueOf(SeslColorPicker.this.mColorPickerOpacityEditText.getTag().toString()).intValue() == 1) {
                    int ceil = (int) Math.ceil((i * 100) / 255.0f);
                    SeslColorPicker.this.mColorPickerOpacityEditText.setText("" + String.format(Locale.getDefault(), "%d", Integer.valueOf(ceil)));
                }
                SeslColorPicker seslColorPicker = SeslColorPicker.this;
                Integer num2 = seslColorPicker.mPickedColor.mColor;
                if (num2 != null) {
                    GradientDrawable gradientDrawable2 = seslColorPicker.mSelectedColorBackground;
                    if (gradientDrawable2 != null) {
                        gradientDrawable2.setColor(num2.intValue());
                    }
                    EdgeLightingStyleActivity.AnonymousClass9 anonymousClass9 = SeslColorPicker.this.mOnColorChangedListener;
                    if (anonymousClass9 != null) {
                        anonymousClass9.onColorChanged(num2.intValue());
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                EditText editText = SeslColorPicker.this.mLastFocussedEditText;
                if (editText != null) {
                    editText.clearFocus();
                }
                try {
                    ((InputMethodManager) SeslColorPicker.this.mContext.getSystemService("input_method")).hideSoftInputFromWindow(SeslColorPicker.this.getWindowToken(), 0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
            }
        });
        this.mOpacitySeekBar.setOnTouchListener(new View.OnTouchListener() { // from class: androidx.picker3.widget.SeslColorPicker.12
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                SeslColorPicker.this.mColorPickerOpacityEditText.setTag(1);
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                HorizontalScrollView horizontalScrollView = SeslColorPicker.this.mHorizontalScrollView;
                if (horizontalScrollView != null) {
                    horizontalScrollView.requestDisallowInterceptTouchEvent(true);
                }
                return true;
            }
        });
        this.mOpacitySeekBarContainer.setContentDescription(this.mResources.getString(R.string.sesl_color_picker_opacity) + ", " + this.mResources.getString(R.string.sesl_color_picker_slider) + ", " + this.mResources.getString(R.string.sesl_color_picker_double_tap_to_select));
    }

    public final void mapColorOnColorWheel(int i) {
        PickedColor pickedColor = this.mPickedColor;
        Integer valueOf = Integer.valueOf(i);
        pickedColor.mColor = valueOf;
        pickedColor.mAlpha = Color.alpha(valueOf.intValue());
        Color.colorToHSV(pickedColor.mColor.intValue(), pickedColor.mHsv);
        SeslColorSwatchView seslColorSwatchView = this.mColorSwatchView;
        if (seslColorSwatchView != null) {
            Point cursorIndexAt = seslColorSwatchView.getCursorIndexAt(i);
            if (seslColorSwatchView.mFromUser) {
                seslColorSwatchView.mCursorIndex.set(cursorIndexAt.x, cursorIndexAt.y);
            }
            if (seslColorSwatchView.mFromUser) {
                seslColorSwatchView.currentCursorColor = ColorUtils.setAlphaComponent(i, 255);
                seslColorSwatchView.setShadowRect(seslColorSwatchView.mShadowRect);
                seslColorSwatchView.setCursorRect(seslColorSwatchView.mCursorRect);
                seslColorSwatchView.invalidate();
                Point point = seslColorSwatchView.mCursorIndex;
                seslColorSwatchView.mSelectedVirtualViewId = (point.y * 11) + point.x;
            } else {
                seslColorSwatchView.mSelectedVirtualViewId = -1;
            }
        }
        SeslColorSpectrumView seslColorSpectrumView = this.mColorSpectrumView;
        if (seslColorSpectrumView != null) {
            seslColorSpectrumView.setColor(i);
        }
        SeslGradientColorSeekBar seslGradientColorSeekBar = this.mGradientColorSeekBar;
        if (seslGradientColorSeekBar != null && seslGradientColorSeekBar.mProgressDrawable != null) {
            seslGradientColorSeekBar.initColor(i);
            seslGradientColorSeekBar.mProgressDrawable.setColors(seslGradientColorSeekBar.mColors);
            seslGradientColorSeekBar.setProgressDrawable(seslGradientColorSeekBar.mProgressDrawable);
        }
        SeslOpacitySeekBar seslOpacitySeekBar = this.mOpacitySeekBar;
        if (seslOpacitySeekBar != null) {
            seslOpacitySeekBar.initColor(i);
            seslOpacitySeekBar.mProgressDrawable.setColors(seslOpacitySeekBar.mColors);
            seslOpacitySeekBar.setProgressDrawable(seslOpacitySeekBar.mProgressDrawable);
        }
        GradientDrawable gradientDrawable = this.mSelectedColorBackground;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i);
            setCurrentColorViewDescription(i, 1);
        }
        if (this.mColorSpectrumView != null) {
            PickedColor pickedColor2 = this.mPickedColor;
            float f = pickedColor2.mHsv[2];
            int i2 = pickedColor2.mAlpha;
            pickedColor2.setV(1.0f);
            PickedColor pickedColor3 = this.mPickedColor;
            pickedColor3.mAlpha = 255;
            pickedColor3.mColor = Integer.valueOf(Color.HSVToColor(255, pickedColor3.mHsv));
            this.mColorSpectrumView.updateCursorColor(this.mPickedColor.mColor.intValue());
            this.mPickedColor.setV(f);
            PickedColor pickedColor4 = this.mPickedColor;
            pickedColor4.mAlpha = i2;
            pickedColor4.mColor = Integer.valueOf(Color.HSVToColor(i2, pickedColor4.mHsv));
        }
        if (this.mOpacitySeekBar != null) {
            int ceil = (int) Math.ceil((r6.getProgress() * 100) / 255.0f);
            this.mColorPickerOpacityEditText.setText("" + String.format(Locale.getDefault(), "%d", Integer.valueOf(ceil)));
            this.mColorPickerOpacityEditText.setSelection(String.valueOf(ceil).length());
        }
    }

    public final void setCurrentColorViewDescription(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        SeslColorSwatchView seslColorSwatchView = this.mColorSwatchView;
        if (seslColorSwatchView != null) {
            sb2 = seslColorSwatchView.getColorSwatchDescriptionAt(i);
        }
        if (sb2 != null) {
            sb.append(", ");
            sb.append((CharSequence) sb2);
        }
        if (i2 != 0) {
            if (i2 == 1) {
                sb.insert(0, this.mResources.getString(R.string.sesl_color_picker_new));
                return;
            }
            return;
        }
        sb.insert(0, this.mResources.getString(R.string.sesl_color_picker_current));
    }

    public final void setImageColor(View view, Integer num) {
        int i;
        Context context = this.mContext;
        if (this.mIsLightTheme) {
            i = R.drawable.sesl_color_picker_used_color_item_slot_light;
        } else {
            i = R.drawable.sesl_color_picker_used_color_item_slot_dark;
        }
        GradientDrawable gradientDrawable = (GradientDrawable) context.getDrawable(i);
        if (num != null) {
            gradientDrawable.setColor(num.intValue());
        }
        view.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{Color.argb(61, 0, 0, 0)}), gradientDrawable, null));
        view.setOnClickListener(this.mImageButtonClickListener);
    }

    public final void updateCurrentColor() {
        Integer num = this.mPickedColor.mColor;
        if (num != null) {
            SeslOpacitySeekBar seslOpacitySeekBar = this.mOpacitySeekBar;
            if (seslOpacitySeekBar != null) {
                seslOpacitySeekBar.changeColorBase(num.intValue(), this.mPickedColor.mAlpha);
                int progress = this.mOpacitySeekBar.getProgress();
                this.mColorPickerOpacityEditText.setText("" + String.format(Locale.getDefault(), "%d", Integer.valueOf(progress)));
                this.mColorPickerOpacityEditText.setSelection(String.valueOf(progress).length());
            }
            GradientDrawable gradientDrawable = this.mSelectedColorBackground;
            if (gradientDrawable != null) {
                gradientDrawable.setColor(num.intValue());
                setCurrentColorViewDescription(num.intValue(), 1);
            }
            EdgeLightingStyleActivity.AnonymousClass9 anonymousClass9 = this.mOnColorChangedListener;
            if (anonymousClass9 != null) {
                anonymousClass9.onColorChanged(num.intValue());
            }
            SeslColorSpectrumView seslColorSpectrumView = this.mColorSpectrumView;
            if (seslColorSpectrumView != null) {
                seslColorSpectrumView.updateCursorColor(num.intValue());
                this.mColorSpectrumView.setColor(num.intValue());
            }
            SeslGradientColorSeekBar seslGradientColorSeekBar = this.mGradientColorSeekBar;
            if (seslGradientColorSeekBar != null) {
                int progress2 = seslGradientColorSeekBar.getProgress();
                SeslGradientColorSeekBar seslGradientColorSeekBar2 = this.mGradientColorSeekBar;
                int intValue = num.intValue();
                if (seslGradientColorSeekBar2.mProgressDrawable != null) {
                    int alphaComponent = ColorUtils.setAlphaComponent(intValue, 255);
                    if (String.format("%08x", Integer.valueOf(alphaComponent & (-1))).substring(2).equals(seslGradientColorSeekBar2.getResources().getString(R.string.sesl_color_black_000000))) {
                        seslGradientColorSeekBar2.mColors[1] = Color.parseColor("#" + seslGradientColorSeekBar2.getResources().getString(R.string.sesl_color_white_ffffff));
                    } else {
                        seslGradientColorSeekBar2.mColors[1] = alphaComponent;
                    }
                    seslGradientColorSeekBar2.mProgressDrawable.setColors(seslGradientColorSeekBar2.mColors);
                    seslGradientColorSeekBar2.setProgressDrawable(seslGradientColorSeekBar2.mProgressDrawable);
                    Color.colorToHSV(alphaComponent, r6);
                    float f = r6[2];
                    float[] fArr = {0.0f, 0.0f, 1.0f};
                    seslGradientColorSeekBar2.mColors[1] = Color.HSVToColor(fArr);
                    seslGradientColorSeekBar2.setProgress(Math.round(f * seslGradientColorSeekBar2.getMax()));
                }
                this.mfromSpectrumTouch = true;
                this.mColorPickerSaturationEditText.setText("" + String.format(Locale.getDefault(), "%d", Integer.valueOf(progress2)));
                this.mColorPickerSaturationEditText.setSelection(String.valueOf(progress2).length());
                this.mfromSpectrumTouch = false;
            }
        }
    }

    public final void updateHexAndRGBValues(int i) {
        if (i != 0) {
            String format = String.format("%08x", Integer.valueOf(i & (-1)));
            String substring = format.substring(2, format.length());
            this.mColorPickerHexEditText.setText("" + substring.toUpperCase());
            EditText editText = this.mColorPickerHexEditText;
            editText.setSelection(editText.getText().length());
            int parseColor = Color.parseColor("#".concat(substring));
            this.mColorPickerRedEditText.setText("" + Color.red(parseColor));
            this.mColorPickerBlueEditText.setText("" + Color.blue(parseColor));
            this.mColorPickerGreenEditText.setText("" + Color.green(parseColor));
        }
    }

    public final void updateRecentColorLayout() {
        int i;
        ArrayList arrayList = this.mRecentColorValues;
        if (arrayList != null) {
            i = arrayList.size();
        } else {
            i = 0;
        }
        String str = ", " + this.mResources.getString(R.string.sesl_color_picker_option);
        if (this.mResources.getConfiguration().orientation == 2) {
            RECENT_COLOR_SLOT_COUNT = 7;
        } else {
            RECENT_COLOR_SLOT_COUNT = 6;
        }
        for (int i2 = 0; i2 < RECENT_COLOR_SLOT_COUNT; i2++) {
            View childAt = this.mRecentColorListLayout.getChildAt(i2);
            if (i2 < i) {
                int intValue = ((Integer) this.mRecentColorValues.get(i2)).intValue();
                setImageColor(childAt, Integer.valueOf(intValue));
                StringBuilder sb = new StringBuilder();
                sb.append((CharSequence) this.mColorSwatchView.getColorSwatchDescriptionAt(intValue));
                sb.insert(0, FragmentTransaction$$ExternalSyntheticOutline0.m(new StringBuilder(), this.mColorDescription[i2], str, ", "));
                childAt.setContentDescription(sb);
                childAt.setFocusable(true);
                childAt.setClickable(true);
            }
        }
        Integer num = this.mRecentColorInfo.mCurrentColor;
        if (num != null) {
            int intValue2 = num.intValue();
            this.mCurrentColorBackground.setColor(intValue2);
            setCurrentColorViewDescription(intValue2, 0);
            this.mSelectedColorBackground.setColor(intValue2);
            mapColorOnColorWheel(intValue2);
            updateHexAndRGBValues(this.mCurrentColorBackground.getColor().getDefaultColor());
        } else if (i != 0) {
            int intValue3 = ((Integer) this.mRecentColorValues.get(0)).intValue();
            this.mCurrentColorBackground.setColor(intValue3);
            setCurrentColorViewDescription(intValue3, 0);
            this.mSelectedColorBackground.setColor(intValue3);
            mapColorOnColorWheel(intValue3);
            updateHexAndRGBValues(this.mCurrentColorBackground.getColor().getDefaultColor());
        }
        Integer num2 = this.mRecentColorInfo.mNewColor;
        if (num2 != null) {
            int intValue4 = num2.intValue();
            this.mSelectedColorBackground.setColor(intValue4);
            mapColorOnColorWheel(intValue4);
            updateHexAndRGBValues(this.mSelectedColorBackground.getColor().getDefaultColor());
        }
    }
}
